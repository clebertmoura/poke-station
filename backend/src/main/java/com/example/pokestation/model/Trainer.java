package com.example.pokestation.model;


import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.SequenceGenerator;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data 
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
public class Trainer {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_TRAINER")
    @SequenceGenerator(name = "SEQ_TRAINER", sequenceName = "SEQ_TRAINER", allocationSize = 1)
    private Long id;

    @NonNull
    private String name;
    @NonNull
    private String email;
    @NonNull
    private String instagramLink;

    @OneToMany(mappedBy = "trainer")
    private List<Pokemon> pokemons;

}
