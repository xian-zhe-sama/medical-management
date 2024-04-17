package com.es.listener;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.data.redis.core.StringRedisTemplate;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

class CacheInvalidationListenerTest {

    @Mock
    private StringRedisTemplate stringRedisTemplate;

    @InjectMocks
    private CacheInvalidationListener cacheInvalidationListener;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testReceive() {
        // Arrange
        CacheInvalidationMessage message = new CacheInvalidationMessage("cache_name", "cache_key");
        Set<String> keys = new HashSet<>(Arrays.asList("cache_key_1", "cache_key_2"));
        when(stringRedisTemplate.keys(any(String.class))).thenReturn(keys);

        // Act
        cacheInvalidationListener.receive(message);

        // Assert
        verify(stringRedisTemplate, times(1)).keys(message.getKey());
        verify(stringRedisTemplate, times(1)).delete(keys);
    }
}
