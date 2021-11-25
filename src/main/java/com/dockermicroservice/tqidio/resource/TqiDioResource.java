package com.dockermicroservice.tqidio.resource;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TqiDioResource {

    @GetMapping
    public String hello() {
        System.out.println("My app running in docker container!");
        return new String("My app running in docker container!");
    }
}
