package com.example.pokestation.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.pokestation.model.Pokemon;
import com.example.pokestation.repository.PokemonRepository;
import com.example.pokestation.repository.TrainerRepository;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@AllArgsConstructor
@Service
@Slf4j
public class PokemonService {

    private final PokemonRepository pokemonRepository;
    private final TrainerRepository trainerRepository;

    public List<Pokemon> getPokemons() {
        return pokemonRepository.findAll();
    }

    public Pokemon getPokemonById(Long pokemonId) {
        return pokemonRepository.findById(pokemonId).orElse(null);
    }

    public List<Pokemon> getPokemonsByTrainerId(Long trainerId) {
        return pokemonRepository.findByTrainerId(trainerId);
    }

    public Pokemon createPokemon(String name, Long trainerId) {
        log.info("Saving pokemon, name {}", name);
        var pokemonEntity = new Pokemon(name);
        pokemonEntity.setTrainer(
            trainerRepository.findById(trainerId).orElse(null)
        );
        var savedPokemon = pokemonRepository.save(pokemonEntity);
        log.info("Saved pokemon, {} ", name);
        return savedPokemon;
    }

    public Pokemon removePokemon(Long pokemonId) {
        Pokemon pokemon = pokemonRepository.findById(pokemonId).orElse(null);
        if (pokemon != null) {
            log.info("Removing pokemon, name {}", pokemon.getName());
            pokemonRepository.delete(pokemon);
            log.info("Removed pokemon, name {}", pokemon.getName());
        }
        return pokemon;
    }

}
