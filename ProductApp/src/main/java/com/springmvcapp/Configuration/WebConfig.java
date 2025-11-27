package com.springmvcapp.Configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.util.pattern.PathPatternParser;

@Configuration
@ComponentScan("com.springmvcapp")
public class WebConfig extends WebMvcConfigurationSupport {

	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
	@Override
    public void configurePathMatch(PathMatchConfigurer configurer) {
        PathPatternParser parser = new PathPatternParser();
        parser.setCaseSensitive(false); 
        configurer.setPatternParser(parser);
    }
}
