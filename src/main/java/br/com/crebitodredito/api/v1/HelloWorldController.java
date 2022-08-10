package br.com.crebitodredito.api.v1;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

@Slf4j
@RestController
@RequestMapping("v1")
public class HelloWorldController {

    @GetMapping(value = "hello-world", produces = MediaType.APPLICATION_JSON_VALUE)
    public Mono<String> helloWorld(){
        log.debug("Request received");
        return Mono.just("Hello World!");
    }
}
