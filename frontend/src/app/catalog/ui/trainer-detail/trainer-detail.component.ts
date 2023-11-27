import { Component } from '@angular/core';
import { Trainer } from '../../services/model/trainer';
import { ActivatedRoute, Router } from '@angular/router';
import { TrainerService } from '../../services/trainer.service';
import { Observable } from 'rxjs';

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
    private trainerService: TrainerService) {
  }

  ngOnInit(): void {
    this.route.params.subscribe((params) => {
      this.trainerId = params['id'];
      this.trainer$ = this.trainerService.getTrainerById(this.trainerId!);
    });
  }

  goBack(): void {
    this.router.navigate(['/']);
  }

}
