package br.com.elisio.spring3awsLocalStack.config;


import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Setter
@Getter
@Configuration
public class EventsConfig {

    @Value("${spring.cloud.aws.events.topic}")
    private String topicName;

    @Value("${spring.cloud.aws.events.queue}")
    private String queueName;
}