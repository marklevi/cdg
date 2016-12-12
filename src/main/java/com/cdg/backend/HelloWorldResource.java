package com.cdg.backend;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

import java.util.HashMap;

import static javax.ws.rs.core.MediaType.APPLICATION_JSON;

@Path("/hello-world")
public class HelloWorldResource {

    @GET
    @Produces(APPLICATION_JSON)
    public Response sayHello() {
        HashMap<Object, Object> map = new HashMap<>();
        Object message = map.put("message", "helloWorld!");
        return Response.ok(message).build();
    }
}
