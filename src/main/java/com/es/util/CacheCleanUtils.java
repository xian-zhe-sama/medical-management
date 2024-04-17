package com.es.util;

import jakarta.annotation.Resource;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.stereotype.Component;

@Component
public class CacheCleanUtils {
    @Resource
    AmqpTemplate amqpTemplate;

    public void sendCacheCleaningMessage(String cacheKey) {
        amqpTemplate.convertAndSend("cache.cleaning", cacheKey);
    }
}
