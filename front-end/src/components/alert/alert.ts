import { Component } from '@angular/core';
import { AlertController } from 'ionic-angular';
/**
 * Generated class for the AlertComponent component.
 *
 * See https://angular.io/api/core/Component for more info on Angular
 * Components.
 */
@Component({
  selector: 'alert',
  templateUrl: 'alert.html'
})
export class AlertComponent {

  constructor(public alertCtrl: AlertController) {
  }


  showAlert(title, subtitle) {
    let alert = this.alertCtrl.create({
      title: title,
      subTitle: subtitle,
      buttons: ['OK']
    });
    alert.present();
  }

}
