import { NavController } from 'ionic-angular';
import { TranslateService } from '@ngx-translate/core';
import { Component } from '@angular/core';
import { LanguagesPage } from '../languages/languages';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
  constructor(
    public translate: TranslateService,
    public navCtrl: NavController,     
  ) {
  }


  openLanguagesPage() {
    this.navCtrl.push(LanguagesPage);
  }


}
