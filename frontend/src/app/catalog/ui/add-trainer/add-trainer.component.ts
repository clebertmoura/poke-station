import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { TrainerService } from '../../services/trainer.service';

@Component({
  selector: 'app-add-trainer',
  templateUrl: './add-trainer.component.html',
  styleUrl: './add-trainer.component.scss',
})
export class AddTrainerComponent implements OnInit {
  trainerForm?: FormGroup;

  constructor(
    private formBuilder: FormBuilder,
    private trainerService: TrainerService
  ) {}

  ngOnInit(): void {
    this.trainerForm = this.formBuilder.group({
      name: ['', [Validators.required, Validators.maxLength(255)]],
      email: ['', [Validators.required, Validators.maxLength(255), Validators.email]],
      instagramLink: ['', [Validators.required, Validators.maxLength(255)]],
    });
  }

  submitForm(): void {}
}
