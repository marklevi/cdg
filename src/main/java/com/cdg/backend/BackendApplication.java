package com.cdg.backend;

import io.dropwizard.Application;
import io.dropwizard.setup.Environment;

public class BackendApplication extends Application<BackendConfiguration> {

    public static void main(String[] args) throws Exception {
        new BackendApplication().run(args);
    }

    @Override
    public void run(BackendConfiguration configuration, Environment environment) throws Exception {
        environment.jersey().register(new HelloWorldResource());
    }
}
