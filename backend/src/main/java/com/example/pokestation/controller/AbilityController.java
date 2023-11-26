package com.example.pokestation.controller;

import java.util.List;

import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.graphql.data.method.annotation.SchemaMapping;
import org.springframework.stereotype.Controller;

import com.example.pokestation.model.Ability;
import com.example.pokestation.service.AbilityService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class AbilityController {

    private AbilityService abilityService;
    
    @QueryMapping
    public List<Ability> abilities() {
        return abilityService.getAbilities();
    }

    @QueryMapping
    public Ability ability(@Argument Long abilityId) {
        return abilityService.getAbilityById(abilityId);
    }

    @QueryMapping
    public List<Ability> abilitiesByPokemon(
            @Argument Long pokemonId) {
        return abilityService.getAbilitiesByPokemonId(pokemonId);
    }

    @SchemaMapping(typeName = "Mutation")
    public Ability createAbility(
        @Argument String name) {
        return abilityService.createAbility(name);
    }

}
