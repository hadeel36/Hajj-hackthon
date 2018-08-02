import { AuthService } from './../../app/services/core/auth.service';
import { HomePage } from './../home/home';
// import { ForgetPasswordPage } from './../forget-password/forget-password';
import { AlertComponent } from './../../components/alert/alert';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
// import { RegisterPage } from '../register/register';
// import { LoopBackConfig } from '../../shared/sdk/index';
// import { BASE_URL, API_VERSION } from '../../shared/config';

@IonicPage()
@Component({
  selector: 'page-login',
  templateUrl: 'login.html',
  providers: [AuthService]
})
export class LoginPage {

  constructor(
    public navCtrl: NavController,
    public navParams: NavParams,
    // private formBuilder: FormBuilder,
    private alert: AlertComponent,
    private authService: AuthService
    // private api: UsersApi
  ) {}

  ionViewDidLoad() {

  }

  loginForm(qrCode) {
      this.authService.login(qrCode).subscribe(user => {
        this.navCtrl.setRoot(HomePage);
      }, error => {
        this.alert.showAlert('Error', 'Invalid QR code')
      });
    }
}
