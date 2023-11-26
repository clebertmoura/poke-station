package com.example.pokestation.controller;

import java.util.List;

import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.graphql.data.method.annotation.SchemaMapping;
import org.springframework.stereotype.Controller;

import com.example.pokestation.model.Trainer;
import com.example.pokestation.service.TrainerService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class TrainerController {

    private TrainerService trainerService;
    
    @QueryMapping
    public List<Trainer> trainers() {
        return trainerService.getTrainers();
    }

    @QueryMapping
    public Trainer trainer(@Argument Long trainerId) {
        return trainerService.getTrainerById(trainerId);
    }

    @SchemaMapping(typeName = "Mutation")
    public Trainer createTrainer(
        @Argument String name, 
        @Argument String email, 
        @Argument String instagramLink) {
        return trainerService.createTrainer(name, email, instagramLink);
    }

}
