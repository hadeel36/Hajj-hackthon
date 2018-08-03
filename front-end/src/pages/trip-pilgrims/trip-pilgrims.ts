import { BarcodeScanner } from "@ionic-native/barcode-scanner";
import { Component } from "@angular/core";
import { IonicPage, NavController, NavParams } from "ionic-angular";

/**
 * Generated class for the TripPilgrimsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: "page-trip-pilgrims",
  templateUrl: "trip-pilgrims.html",
})
export class TripPilgrimsPage {
  nonExistPiligrim;
  pilgrimsList = [
    {
      name: "Hadeel Khawaldeh",
      gender: "female",
      nationality: "Jordainian",
      active: false,
    },
    {
      name: "Ahmad Omer",
      gender: "male",
      nationality: "Jordainian",
      active: false,
    },
    {
      name: "Yazan Yosef",
      gender: "male",
      nationality: "Jordainian",
      active: true,
    },
    {
      name: "Mohummad Omer",
      gender: "male",
      nationality: "Jordainian",
      active: true,
    },
    {
      name: "Adam Slah",
      gender: "male",
      nationality: "Jordainian",
      active: false,
    },
    {
      name: "Fatima Abed",
      gender: "female",
      nationality: "Jordainian",
      active: false,
    },
    {
      name: "Noor Hamzeh",
      gender: "Female",
      nationality: "Jordainian",
      active: false,
    },
    {
      name: "loui ghadb",
      gender: "male",
      nationality: "Jordainian",
      active: true,
    },
    {
      name: "maysaa Ahmad",
      gender: "female",
      nationality: "Jordainian",
      active: false,
    },
  ];

  scannedCode = null;

  constructor(
    public navCtrl: NavController,
    public navParams: NavParams,
    private barcodeScanner: BarcodeScanner,
  ) {}

  ionViewDidLoad() {
    console.log("ionViewDidLoad TripPilgrimsPage");
  }

  scanCode() {
    this.barcodeScanner.scan().then(
      barcodeData => {
        this.scannedCode = barcodeData;
        if (JSON.stringify(this.scannedCode).includes("Hadeel")) {
          this.pilgrimsList[0].active = true;
        } else {
          this.nonExistPiligrim = barcodeData.text;
          console.log("tesss     ", this.nonExistPiligrim);
        }
      },
      err => {
        console.log("Error: ", err);
      },
    );
  }
  forceAdd() {
    this.pilgrimsList.push({
      name: "Abdallah Saleh",
      gender: "male",
      nationality: "Saudi",
      active: true,
    });
  }
}
