import { AuthService } from './../../app/services/core/auth.service';
import { HttpRequestsService } from './../../app/services/http-requests.service';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, LoadingController } from 'ionic-angular';
import { TripPilgrimsPage } from './../trip-pilgrims/trip-pilgrims';
import { AccountTypes } from '../../app/core/models/account-types';

/**
 * Generated class for the TripsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-trips',
  templateUrl: 'trips.html',
})
export class TripsPage {
  myTrips;
  loader;
  accountTypes;
  currentUserData;

  constructor(public navCtrl: NavController, public navParams: NavParams, private httpRequestsService: HttpRequestsService, 
    public loadingCtrl: LoadingController, authService: AuthService
  ) {
    this.currentUserData = authService.getUserData();
    this.accountTypes = AccountTypes;
    this.getTrips();
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad TripsPage');
  }

  openTripPilgrims() {
    this.navCtrl.push(TripPilgrimsPage);
  }
  getTrips() {
    this.httpRequestsService.httpGet('trips/gettrips').subscribe(tripsData => {
        this.myTrips = tripsData;
      }, err => {
        const currentDate = new Date();
        this.myTrips = [{
          source: 'Airport',
          destination: 'Mecca',
          departure_time: new Date(), /* maybe time */
          arrival_time: new Date(currentDate.setHours(currentDate.getHours()+ 1)),
          free_seats: 4,
          occupied_seats: 20
        }, 
        {
          source: 'Mecca',
          destination: 'Mina',
          departure_time: currentDate, /* maybe time */
          arrival_time: new Date(currentDate.setHours(currentDate.getHours()+ 1)),
          free_seats: 20,
          occupied_seats: 20
        }];
  });
}

presentLoading(messageToDisplay = "Please wait...") {
  this.loader = this.loadingCtrl.create({
    content: messageToDisplay,
  });
  this.loader.present();
}
}