import { Component } from '@angular/core';
import { Observable } from 'rxjs';
import { Trainer } from '../../services/model/trainer';
import { TrainerService } from '../../services/trainer.service';
import { Router } from '@angular/router';
import { MatDialog } from '@angular/material/dialog';
import { AddTrainerComponent } from '../add-trainer/add-trainer.component';

@Component({
  selector: 'app-trainers',
  templateUrl: './trainers.component.html',
  styleUrl: './trainers.component.scss'
})
export class TrainersComponent {

  trainers$?: Observable<Trainer[]>;

  constructor(
    private trainerService: TrainerService,
    private router: Router,
    private dialog: MatDialog) {}

  ngOnInit(): void {
    this.trainers$ = this.trainerService.getTrainers();
  }

  viewTrainer(trainer: Trainer): void {
    this.router.navigate(['/trainer', trainer.id]);
  }

  addTraier(): void {
    this.dialog.open(AddTrainerComponent);
  }
}
