import { Component } from '@angular/core';
import { Trainer } from '../../services/model/trainer';
import { ActivatedRoute, Router } from '@angular/router';
import { TrainerService } from '../../services/trainer.service';
import { Observable, pipe, tap } from 'rxjs';
import { MatDialog } from '@angular/material/dialog';
import { AddPokemonComponent } from '../add-pokemon/add-pokemon.component';

@Component({
  selector: 'app-trainer-detail',
  templateUrl: './trainer-detail.component.html',
  styleUrl: './trainer-detail.component.scss'
})
export class TrainerDetailComponent {

  trainerId?: number;
  trainer$?:  Observable<Trainer>;

  constructor(
    private route: ActivatedRoute, 
    private router: Router,
    private dialog: MatDialog,
    private trainerService: TrainerService) {
  }

  ngOnInit(): void {
    this.route.params.subscribe((params) => {
      this.trainerId = params['id'];
      this.loadTrainer();
    });
  }

  private loadTrainer() {
    this.trainer$ = this.trainerService.getTrainerById(this.trainerId!);
  }

  goBack(): void {
    this.router.navigate(['/']);
  }

  addPokemon(): void {
    const dialogRef = this.dialog.open(AddPokemonComponent, {
      data: {
        trainerId: this.trainerId
      },
    });
    dialogRef.componentInstance!.trainerId = this.trainerId!;
    dialogRef.componentInstance!.newPokemonAdded.subscribe((pokemon) => {
      this.loadTrainer();
    });
  }
}
