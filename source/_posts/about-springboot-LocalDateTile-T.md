---
title: Spring Boot 通用解决 LocalDateTime 转为字符串后中间含“T”
top: false
essential: false
notshow: false
copyright: true
abbrlink: 45c03634
date: 2020-04-15 10:37:29
tags:
  - SpringBoot
  - LocalDateTime
categories:
  - SpringBoot
  - LocalDateTime
keywords: [SpringBoot,LocalDateTime,含有T]
password:
description: 通用解决LocalDateTime转为字符串后中间含“T”的问题
---
通用解决LocalDateTime转为字符串后中间含“T”的问题

本文参考自：[https://juejin.im/post/5ceb4f156fb9a07f06554b63](https://juejin.im/post/5ceb4f156fb9a07f06554b63)

```
package com.scaffolding.base.config;

import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * 解决 LocalDateTime 中间含 T 的问题
 *
 * @author xuxu
 */
@Configuration
public class LocalDateTimeSerializerConfig {

    @Bean
    public LocalDateTimeSerializer localDateTimeDeserializer() {
        return new LocalDateTimeSerializer(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
    }

    @Bean
    public Jackson2ObjectMapperBuilderCustomizer jackson2ObjectMapperBuilderCustomizer() {
        return builder -> builder.serializerByType(LocalDateTime.class, localDateTimeDeserializer());
    }
}
```
