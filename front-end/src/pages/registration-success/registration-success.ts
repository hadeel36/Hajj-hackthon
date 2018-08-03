import { Component } from "@angular/core";
import { IonicPage, NavController, NavParams } from "ionic-angular";

/**
 * Generated class for the RegistrationSuccessPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: "page-registration-success",
  templateUrl: "registration-success.html",
})
export class RegistrationSuccessPage {
  qrValue = null;
  stringQr = "";
  constructor(public navCtrl: NavController, public navParams: NavParams) {
    console.log("-- ", this.navParams.get("data"));
    this.qrValue = this.navParams.get("data");
    this.stringQr = JSON.stringify(this.navParams.get("data"));
  }

  ionViewDidLoad() {
    console.log("ionViewDidLoad RegistrationSuccessPage");
  }
}
