import { TripsPage } from './../trips/trips';
import { QrCodePage } from './../qr-code/qr-code';
import { Component } from '@angular/core';

import { AuthService } from './../../app/services/core/auth.service';
import { ContactPage } from '../contact/contact';
import { HomePage } from '../home/home';
import { ScanQrCodePage } from '../scan-qr-code/scan-qr-code';
import { AccountTypes } from '../../app/core/models/account-types';
import { RegisterPage } from '../../register/register';

@Component({
  templateUrl: 'tabs.html'
})
export class TabsPage {
  accountTypes = AccountTypes;
  currentUserData;
  tab1Root = HomePage;
  tab2Root = QrCodePage;
  tab3Root = ScanQrCodePage;
  tab4Root = ContactPage;
  tab5Root = TripsPage;
  tab6Root = RegisterPage;


  constructor( authService: AuthService) {
    debugger;
    this.currentUserData = authService.getUserData();
    console.log(' this.currentUserData ',  this.currentUserData)
  }
}
