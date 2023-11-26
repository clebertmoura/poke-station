package com.example.pokestation.service;

import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.example.pokestation.model.Trainer;
import com.example.pokestation.repository.TrainerRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor
@Service
@Slf4j
public class TrainerService {

    private final TrainerRepository trainerRepository;

    public List<Trainer> getTrainers() {
        return trainerRepository.findAll();
    }

    public Trainer getTrainerById(Long trainerId) {
        return trainerRepository.findById(trainerId).orElse(null);
    }

    public Trainer createTrainer(String name, String email, String instagramLink) {
        log.info("Saving trainer, email {}", email);
        var trainerEntity = new Trainer(name, email, instagramLink);
        var savedTrainer = trainerRepository.save(trainerEntity);
        log.info("Saved trainer, {} ", savedTrainer);
        return savedTrainer;
    }

}
