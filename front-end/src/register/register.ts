import { RegistrationSuccessPage } from "./../pages/registration-success/registration-success";
import { TabsPage } from "./../pages/tabs/tabs";
import { AuthService } from "./../app/services/core/auth.service";

import { Component, OnInit } from "@angular/core";
import {
  IonicPage,
  NavController,
  NavParams,
  LoadingController,
} from "ionic-angular";
import {
  Validators,
  FormBuilder,
  FormGroup,
  FormControl,
} from "@angular/forms";

import { FieldValidatorsService } from "../app/core/services/field-validators.service";
import { country, countriesList } from "../app/core/services/countries";
import { AlertComponent } from "../components/alert/alert";

@IonicPage()
@Component({
  selector: "page-register",
  templateUrl: "register.html",
  providers: [AuthService, FieldValidatorsService],
})
export class RegisterPage implements OnInit {
  private form: FormGroup;
  userId: string;
  loader;
  countries: country[];
  constructor(
    public navCtrl: NavController,
    public navParams: NavParams,
    private formBuilder: FormBuilder,
    private alert: AlertComponent,
    private authService: AuthService,
    private fieldValidatorsService: FieldValidatorsService,
    public loadingCtrl: LoadingController,
  ) {
    this.countries = countriesList;
    this.createUserForm();
  }

  ngOnInit() {}

  createUserForm() {
    this.form = this.formBuilder.group({
      first_name: [null, Validators.required],
      middle_name: [null],
      national_id: [null],
      account_type: [null, Validators.required],
      last_name: [null, Validators.required],
      email: [null, Validators.compose([Validators.email])],
      gender: [null],
      birth_date: [null],
      citizenship: [null],
      city: [null],
      nationality: [null],
      address: [null],
      mobile_number: [null, [Validators.required, this.fieldValidatorsService.getValidator('validatePositive')]],
      landline: [null]
      // terms: [true]
    });
  }

  signupForm() {
    if (this.form.controls["first_name"].invalid) {
      this.alert.showAlert("Error", "Please enter your First Name");
    } else if (this.form.controls["name"].invalid) {
      this.alert.showAlert("Error", "Please enter your Name");
    } else if (this.form.controls["email"].invalid) {
      this.alert.showAlert(
        "Error",
        "Email address provided is not valid. Please re-enter email address",
      );
    } else if (this.form.controls["city"].invalid) {
      this.alert.showAlert("Error", "Please select your city");
    } else if (this.form.controls["country"].invalid) {
      this.alert.showAlert("Error", "Please enter your country");
    } else if (this.form.controls["state"].invalid) {
      this.alert.showAlert("Error", "Please enter your state");
    } else if (this.form.controls["address"].invalid) {
      this.alert.showAlert("Error", "Please enter your address");
    } else if (this.form.controls["gender"].invalid) {
      this.alert.showAlert("Error", "Please select your gender");
    } else if (this.form.controls["birth_date"].invalid) {
      this.alert.showAlert("Error", "Please select your birth date");
    } else if (this.form.controls["citizenship"].invalid) {
      this.alert.showAlert("Error", "Please select your birth date");
    } else if (this.form.controls["mobile_number"].invalid) {
      if (this.form.controls["mobile_number"].errors.required) {
        this.alert.showAlert("Error", "Please enter your mobile number");
      } else {
        this.alert.showAlert("Error", "Please enter a valid mobile number");
      }
    } else if (this.form.controls["zip_code"].invalid) {
      if (this.form.controls["zip_code"].errors.required) {
        this.alert.showAlert("Error", "Please enter your Postal/Zip Number");
      } else {
        this.alert.showAlert("Error", "Please enter a valid Postal/Zip Number");
      }
    } else if (!this.userId && this.form.controls["terms"].invalid) {
      this.alert.showAlert("Error", "Please accept terms and conditions");
    } else {
      this.sendRequest();
    }
  }

  sendRequest() {
    this.presentLoading();
    this.authService.register(this.form.value).subscribe(
      results => {
        this.loader.dismiss();
        this.alert.showAlert(
          "Success",
          "The account has been created successfully",
        );
        this.navCtrl.setRoot(TabsPage);
        this.generateQrCode();
      },
      error => {
        this.generateQrCode();
        this.loader.dismiss();
        // this.alert.showAlert("Error", error.message);
      },
    );
  }

  generateQrCode() {
    this.navCtrl.push(RegistrationSuccessPage, { data: this.form.value });
  }

  presentLoading(messageToDisplay = "Please wait...") {
    this.loader = this.loadingCtrl.create({
      content: messageToDisplay,
    });
    this.loader.present();
  }
}
