import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { TripPilgrimsPage } from './trip-pilgrims';

@NgModule({
  declarations: [
    TripPilgrimsPage,
  ],
  imports: [
    IonicPageModule.forChild(TripPilgrimsPage),
  ],
})
export class TripPilgrimsPageModule {}
