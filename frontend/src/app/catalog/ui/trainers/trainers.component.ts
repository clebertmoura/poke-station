import { Component } from '@angular/core';
import { Observable } from 'rxjs';
import { Trainer } from '../../services/model/trainer';
import { TrainerService } from '../../services/trainer.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-trainers',
  templateUrl: './trainers.component.html',
  styleUrl: './trainers.component.scss'
})
export class TrainersComponent {

  trainers$?: Observable<Trainer[]>;

  constructor(
    private trainerService: TrainerService,
    private router: Router) {}

  ngOnInit(): void {
    this.trainers$ = this.trainerService.getTrainers();
  }

  viewTrainer(trainer: Trainer): void {
    this.router.navigate(['/trainer', trainer.id]);
  }
}
