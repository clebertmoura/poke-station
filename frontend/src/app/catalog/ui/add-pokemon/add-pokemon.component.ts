import { Component, EventEmitter, Input, Output } from '@angular/core';
import {
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from '@angular/forms';
import { MatSnackBar } from '@angular/material/snack-bar';
import { Pokemon } from '../../services/model/pokemon';
import { PokemonService } from '../../services/pokemon.service';
import { PokeApiService } from '../../services/poke-api.service';

@Component({
  selector: 'app-add-pokemon',
  templateUrl: './add-pokemon.component.html',
  styleUrl: './add-pokemon.component.scss',
})
export class AddPokemonComponent {
  pokemonForm: FormGroup;

  @Input() trainerId?: number;
  @Output() newPokemonAdded: EventEmitter<Pokemon> = new EventEmitter();

  pokemons: any[] = [];
  loading: boolean = false;
  offset: number = 0;
  limit: number = 20;

  constructor(
    private fb: FormBuilder,
    private snackBar: MatSnackBar,
    private pokemonService: PokemonService,
    private pokeApiService: PokeApiService
  ) {
    this.pokemonForm = this.fb.group({
      name: new FormControl('', [
        Validators.required,
        Validators.maxLength(255),
      ]),
    });
  }

  ngOnInit(): void {
    this.loadMore();
  }

  loadMore(): void {
    if (this.loading) {
      return;
    }

    this.loading = true;
    this.pokeApiService.getPokemons(this.offset, this.limit).subscribe((response) => {
      this.pokemons = this.pokemons.concat(response.results);
      this.offset += this.limit;
      this.loading = false;
    });
  }

  submitForm(): void {
    if (this.pokemonForm.valid) {
      this.pokemonService
        .createPokemon(this.pokemonForm.value['name'], this.trainerId!)
        .subscribe((createdPokemon) => {
          this.snackBar.open('The pokemon was created!', 'Success!', {
            horizontalPosition: 'right',
            verticalPosition: 'top',
            duration: 3000
          });
          this.newPokemonAdded.emit(createdPokemon);
        });
    } else {
      this.snackBar.open('Pokemon`s data is invalid!', 'Attention!', {
        horizontalPosition: 'right',
        verticalPosition: 'top',
        duration: 3000
      });
    }
  }
}
