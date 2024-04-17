package com.es.listener;

import jakarta.annotation.Resource;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.core.Cursor;
import org.springframework.data.redis.core.ScanOptions;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

@Component
@RabbitListener(queues = "cache.cleaning")
public class CacheCleaningListener {

    @Resource
    StringRedisTemplate stringRedisTemplate;

    /**
     * 处理缓存清理消息的函数。
     * 使用RabbitMQ接收消息，并根据消息内容清理Redis缓存中的键。
     *
     * @param message 接收到的消息，用于指定要清理的Redis键的模式。
     */
    @RabbitHandler
    public void handleCacheCleaningMessage(String message) {
        // 创建ScanOptions对象，用于配置Redis键的扫描选项
        ScanOptions options = ScanOptions.scanOptions()
                .match(message) // 匹配具有通配符的键
                .count(100) // 每批次返回的键的数量
                .build();
        List<String> keysToDelete = new ArrayList<>();
        try (Cursor<byte[]> cursor = stringRedisTemplate.executeWithStickyConnection(
                (RedisConnection redisConnection) -> redisConnection.scan(options))) {
            // 遍历扫描结果，将键从字节数组转换为字符串并收集到待删除键的列表中
            while (cursor.hasNext()) {
                keysToDelete.add(new String(cursor.next(), StandardCharsets.UTF_8));
            }
        } catch (Exception e) {
            // 异常处理逻辑
            e.printStackTrace();
        }
        // 检查待删除键的列表是否为空，如果不为空，则删除所有匹配到的键
        if (!keysToDelete.isEmpty()) {
            stringRedisTemplate.delete(keysToDelete);
        }
    }
}