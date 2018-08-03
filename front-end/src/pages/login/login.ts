import { TabsPage } from "./../tabs/tabs";
import { AuthService } from "./../../app/services/core/auth.service";
// import { ForgetPasswordPage } from './../forget-password/forget-password';
import { AlertComponent } from "./../../components/alert/alert";
import { Component } from "@angular/core";
import { BarcodeScanner } from "@ionic-native/barcode-scanner";
import { NavController, NavParams } from "ionic-angular";
// import { RegisterPage } from '../register/register';
// import { LoopBackConfig } from '../../shared/sdk/index';
// import { BASE_URL, API_VERSION } from '../../shared/config';

@Component({
  selector: "page-login",
  templateUrl: "login.html",
})
export class LoginPage {
  scannedCode = null;

  constructor(
    public navCtrl: NavController,
    public navParams: NavParams,
    // private formBuilder: FormBuilder,
    private alert: AlertComponent,
    private barcodeScanner: BarcodeScanner,
    private authService: AuthService, // private api: UsersApi
  ) {
  }

  ionViewDidLoad() {}

  scanCode() {
    this.barcodeScanner.scan().then(
      barcodeData => {
        this.scannedCode = barcodeData.text;
        this.loginForm(JSON.stringify(this.scannedCode));
      },
      err => {
        console.log("Error: ", err);
      },
    );
  }

  loginForm(qrCodeData) {
    // this.authService.login(qrCodeData.id).subscribe(
    //   userId => {
    //     console.log(userId);
    //     this.navCtrl.setRoot(TabsPage);
    //   },
    //   error => {
    console.log("qrCodeData ", qrCodeData);
    this.authService.setUserData(qrCodeData);
    this.navCtrl.setRoot(TabsPage);
    // this.alert.showAlert("Error", "Invalid QR code");
    // },
    // );
  }
}
