import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatIconModule } from '@angular/material/icon';
import { MatMenuModule } from '@angular/material/menu';
import { MatExpansionModule } from '@angular/material/expansion';
import { MatListModule } from '@angular/material/list';
import { NgbCarouselModule } from '@ng-bootstrap/ng-bootstrap';
import { RouterModule } from '@angular/router';
import { PokemonCardComponent } from './ui/pokemon-card/pokemon-card.component';
import { TrainerDetailComponent } from './ui/trainer-detail/trainer-detail.component';
import { TrainersComponent } from './ui/trainers/trainers.component';



@NgModule({
  declarations: [
    TrainersComponent,
    TrainerDetailComponent,
    PokemonCardComponent
  ],
  imports: [
    CommonModule,
    RouterModule,
    MatGridListModule,
    MatCardModule,
    MatIconModule,
    MatMenuModule,
    MatButtonModule,
    MatExpansionModule,
    MatListModule,
    NgbCarouselModule
  ]
})
export class CatalogModule { }
