import { TripsPage } from './../trips/trips';
import { QrCodePage } from './../qr-code/qr-code';
import { Component } from '@angular/core';

import { ContactPage } from '../contact/contact';
import { HomePage } from '../home/home';
import { ScanQrCodePage } from '../scan-qr-code/scan-qr-code';

@Component({
  templateUrl: 'tabs.html'
})
export class TabsPage {

  tab1Root = HomePage;
  tab2Root = QrCodePage;
  tab3Root = ScanQrCodePage;
  tab4Root = ContactPage;
  tab5Root = TripsPage;


  constructor() {

  }
}
