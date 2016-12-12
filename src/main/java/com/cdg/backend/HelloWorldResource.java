package com.cdg.backend;

import com.google.common.collect.ImmutableMap;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

import java.util.Map;

import static javax.ws.rs.core.MediaType.APPLICATION_JSON;

@Path("/hello-world")
public class HelloWorldResource {

    @GET
    @Produces(APPLICATION_JSON)
    public Map<String, String> sayHello() {
        return ImmutableMap.of("message", "helloWorld");
    }
}
