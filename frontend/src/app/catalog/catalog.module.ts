import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatIconModule } from '@angular/material/icon';
import { MatMenuModule } from '@angular/material/menu';
import { MatExpansionModule } from '@angular/material/expansion';
import { MatListModule } from '@angular/material/list';
import { MatDialogModule } from '@angular/material/dialog';
import { MatInputModule } from '@angular/material/input';
import { MatSelectModule } from '@angular/material/select';
import { MatFormFieldModule } from '@angular/material/form-field';
import { NgbCarouselModule } from '@ng-bootstrap/ng-bootstrap';
import { RouterModule } from '@angular/router';
import { PokemonCardComponent } from './ui/pokemon-card/pokemon-card.component';
import { TrainerDetailComponent } from './ui/trainer-detail/trainer-detail.component';
import { TrainersComponent } from './ui/trainers/trainers.component';
import { AddTrainerComponent } from './ui/add-trainer/add-trainer.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { AddPokemonComponent } from './ui/add-pokemon/add-pokemon.component';



@NgModule({
  declarations: [
    TrainersComponent,
    TrainerDetailComponent,
    PokemonCardComponent,
    AddTrainerComponent,
    AddPokemonComponent,
  ],
  imports: [
    BrowserModule,
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    RouterModule,
    MatGridListModule,
    MatCardModule,
    MatIconModule,
    MatMenuModule,
    MatButtonModule,
    MatExpansionModule,
    MatListModule,
    MatDialogModule,
    MatInputModule,
    MatFormFieldModule,
    MatSelectModule,
    NgbCarouselModule
  ]
})
export class CatalogModule { }
