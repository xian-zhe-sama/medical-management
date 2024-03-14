package com.es.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.annotation.Resource;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.core.QueueBuilder;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.amqp.support.converter.MessageConverter;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class RabbitConfiguration {

    @Bean("emailQueue")
    public Queue emailQueue() {
        return QueueBuilder
                .durable("mail")
                .build();
    }

    /**
     * 配置jackson转换器
     *
     * @return
     */
    @Bean
    public MessageConverter jsonMessageConverter( ) {
        return new Jackson2JsonMessageConverter();
    }

}
