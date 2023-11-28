import { Component, EventEmitter, Output } from '@angular/core';
import {
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from '@angular/forms';
import {
  MatSnackBar,
  MatSnackBarHorizontalPosition,
  MatSnackBarVerticalPosition,
} from '@angular/material/snack-bar';
import { Trainer } from '../../services/model/trainer';
import { TrainerService } from '../../services/trainer.service';

@Component({
  selector: 'app-add-trainer',
  templateUrl: './add-trainer.component.html',
  styleUrl: './add-trainer.component.scss',
})
export class AddTrainerComponent {
  trainerForm: FormGroup;

  @Output() newTrainerAdded: EventEmitter<Trainer> = new EventEmitter();

  constructor(
    private fb: FormBuilder,
    private snackBar: MatSnackBar,
    private trainerService: TrainerService
  ) {
    this.trainerForm = this.fb.group({
      name: new FormControl('', [
        Validators.required,
        Validators.maxLength(255),
      ]),
      email: new FormControl('', [
        Validators.required,
        Validators.maxLength(255),
        Validators.email,
      ]),
      instagramLink: new FormControl('', [
        Validators.required,
        Validators.maxLength(255),
      ]),
    });
  }

  submitForm(): void {
    if (this.trainerForm.valid) {
      this.trainerService
        .createTrainer(
          this.trainerForm.value['name'],
          this.trainerForm.value['email'],
          this.trainerForm.value['instagramLink']
        )
        .subscribe((createdTrainer) => {
          this.snackBar.open('The trainer was created!', 'Success!', {
            horizontalPosition: 'right',
            verticalPosition: 'top',
            duration: 3000
          });
          this.newTrainerAdded.emit(createdTrainer);
        });
    } else {
      this.snackBar.open('Trainer`s data is invalid!', 'Attention!', {
        horizontalPosition: 'right',
        verticalPosition: 'top',
        duration: 3000
      });
    }
  }
}
