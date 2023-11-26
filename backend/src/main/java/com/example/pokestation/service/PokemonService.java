package com.example.pokestation.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.SchemaMapping;
import org.springframework.stereotype.Service;

import com.example.pokestation.model.Ability;
import com.example.pokestation.model.Pokemon;
import com.example.pokestation.model.Trainer;
import com.example.pokestation.repository.AbilityRepository;
import com.example.pokestation.repository.PokemonRepository;
import com.example.pokestation.repository.TrainerRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor
@Service
@Slf4j
public class PokemonService {

    private final PokemonRepository pokemonRepository;
    private final TrainerRepository trainerRepository;
    private final AbilityRepository abilityRepository;

    public List<Pokemon> getPokemons() {
        return pokemonRepository.findAll();
    }

    public Pokemon getPokemonById(Long pokemonId) {
        return pokemonRepository.findById(pokemonId).orElse(null);
    }

    public List<Pokemon> getPokemonsByTrainerId(Long trainerId) {
        return pokemonRepository.findByTrainerId(trainerId);
    }

    public Pokemon createPokemon(String name, Integer experience, Long trainerId) {
        log.info("Saving pokemon, name {}", name);
        var trainer = trainerRepository.findById(trainerId).orElse(null);
        var pokemonEntity = new Pokemon(trainerId, name, experience, trainer, new ArrayList<>());
        var savedPokemon = pokemonRepository.save(pokemonEntity);
        log.info("Saved ability, {} ", savedPokemon);
        return savedPokemon;
    }

    public Pokemon removePokemon(Long pokemonId) {
        Pokemon pokemon = pokemonRepository.findById(pokemonId).orElse(null);
        if (pokemon != null) {
            log.info("Removing pokemon, name {}", pokemon.getName());
            pokemonRepository.delete(pokemon);
        }
        return pokemon;
    }

    public Pokemon addAbilityToPokemon(Long abilityId, Long pokemonId) {
        Pokemon pokemon = pokemonRepository.findById(pokemonId).orElse(null);
        Ability ability = abilityRepository.findById(abilityId).orElse(null);
        if (pokemon != null && ability != null
            && !pokemon.getAbilities().contains(ability)) {
            log.info("Adding ability {} to pokemon {}", ability.getName(), pokemon.getName());
            pokemon.getAbilities().add(ability);
            this.pokemonRepository.save(pokemon);
        }
        
        return pokemon;
    }

    public Pokemon removeAbilityFromPokemon(Long abilityId, Long pokemonId) {

        Pokemon pokemon = pokemonRepository.findById(pokemonId).orElse(null);
        Ability ability = abilityRepository.findById(abilityId).orElse(null);
        if (pokemon != null && ability != null
            && pokemon.getAbilities().contains(ability)) {
            log.info("Removing ability {} from pokemon {}", ability.getName(), pokemon.getName());
            pokemon.getAbilities().remove(ability);
            this.pokemonRepository.save(pokemon);
        }
        
        return pokemon;
    }

}
