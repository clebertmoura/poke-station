package com.example.pokestation.config;

import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.servlet.util.matcher.MvcRequestMatcher;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.servlet.handler.HandlerMappingIntrospector;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig {

    @Bean
    CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration configuration = new CorsConfiguration();
        configuration.setAllowedOrigins(Arrays.asList("http://localhost:4200", "http://localhost:8080"));
        configuration.setAllowedMethods(Arrays.asList("GET","POST","OPTIONS"));
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", configuration);
        return source;
    }

    @Bean
    protected SecurityFilterChain filterChain(HttpSecurity http, HandlerMappingIntrospector introspector) throws Exception {
        return http
            .csrf(AbstractHttpConfigurer::disable)
            .cors(cors -> cors.disable())
            .authorizeHttpRequests(authorize ->
                authorize
                    .requestMatchers(new MvcRequestMatcher(introspector, "/**"))
                        .permitAll()
            )
            .oauth2ResourceServer(oauth2Configurer -> 
                oauth2Configurer.jwt(jwtConfigurer -> 
                    jwtConfigurer.jwtAuthenticationConverter(jwt -> {
                        Map<String, Collection<String>> realmAccess = jwt.getClaim("realm_access");
                        Collection<String> roles = realmAccess.get("roles");
                        var grantedAuthorities = roles.stream()
                            .map(role -> new SimpleGrantedAuthority(role))
                            .toList();
                        return new JwtAuthenticationToken(jwt, grantedAuthorities);
                    })
                )
            )
            .build();
    }

    @Bean
    public WebSecurityCustomizer webSecurityCustomizer() {
        return web -> web.ignoring().
            requestMatchers(new AntPathRequestMatcher("/h2-console/**"));
    }

}