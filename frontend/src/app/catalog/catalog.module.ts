import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { MatCardModule } from '@angular/material/card';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatIconModule } from '@angular/material/icon';
import { AbilitiesComponent } from './ui/abilities/abilities.component';
import { PokemonsComponent } from './ui/pokemons/pokemons.component';
import { TrainersComponent } from './ui/trainers/trainers.component';



@NgModule({
  declarations: [
    TrainersComponent,
    PokemonsComponent,
    AbilitiesComponent
  ],
  imports: [
    CommonModule,
    MatGridListModule,
    MatCardModule,
    MatIconModule,
  ]
})
export class CatalogModule { }
