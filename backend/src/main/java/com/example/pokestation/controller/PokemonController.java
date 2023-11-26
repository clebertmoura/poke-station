package com.example.pokestation.controller;

import java.util.List;

import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.graphql.data.method.annotation.SchemaMapping;
import org.springframework.stereotype.Controller;

import com.example.pokestation.model.Ability;
import com.example.pokestation.model.Pokemon;
import com.example.pokestation.model.Trainer;
import com.example.pokestation.repository.AbilityRepository;
import com.example.pokestation.repository.PokemonRepository;
import com.example.pokestation.repository.TrainerRepository;
import com.example.pokestation.service.PokemonService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class PokemonController {

    private PokemonService pokemonService;
    
    @QueryMapping
    public List<Pokemon> pokemons() {
        return pokemonService.getPokemons();
    }

    @QueryMapping
    public Pokemon pokemon(@Argument Long pokemonId) {
        return pokemonService.getPokemonById(pokemonId);
    }

    @QueryMapping
    public List<Pokemon> pokemonsByTrainer(@Argument Long trainerId) {
        return pokemonService.getPokemonsByTrainerId(trainerId);
    }

    @SchemaMapping(typeName = "Mutation")
    public Pokemon createPokemon(
        @Argument Long trainerId, 
        @Argument String name, 
        @Argument Integer experience) {
        return pokemonService.createPokemon(name, experience, trainerId);
    }

    @SchemaMapping(typeName = "Mutation")
    public Pokemon removePokemon(
        @Argument Long pokemonId) {
        return pokemonService.removePokemon(pokemonId);
    }

    @SchemaMapping(typeName = "Mutation")
    public Pokemon addAbilityToPokemon(
        @Argument Long abilityId,
        @Argument Long pokemonId) {
        return pokemonService.addAbilityToPokemon(abilityId, pokemonId);
    }

    @SchemaMapping(typeName = "Mutation")
    public Pokemon removeAbilityFromPokemon(
        @Argument Long abilityId,
        @Argument Long pokemonId) {
        return pokemonService.removeAbilityFromPokemon(abilityId, pokemonId);
    }

}
