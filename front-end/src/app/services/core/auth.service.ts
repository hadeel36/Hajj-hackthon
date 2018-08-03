import { Observable } from "rxjs";
import { Injectable } from "@angular/core";
import { HttpRequestsService } from "../http-requests.service";

@Injectable()
export class AuthService {
  userData: any;
  constructor(private httpRequestsService: HttpRequestsService) {}

  /**
   * @description sends a post request holding user entered info to the server to register a new user
   * @param {ServerSideRegisterInfo} registrationInfo
   */
register(registrationInfo: any): Observable<any> {
    return this.httpRequestsService.httpPost(
      "GroupSupervisor/createAccount",
      registrationInfo,
      {
        fail: "REGISTER.UNABLE_TO_REGISTER",
      },
    );
  }

  /**
   * @author Nermeen Mattar
   * @description sends a post request to the server holding user credentials to login an existing user.
   * @param {ServerSideLoginInfo} userCredentials
   */
  login(qrCode: string): Observable<any> {
    return this.httpRequestsService.httpPost("site/login", {qr_code: qrCode} , {
      failDefault: "LOGIN.INCORRECT_USERNAME_OR_PASSWORD",
    });
    // .pipe(map( 
    //   res => {
    //     if (!res.message) { // this if statement is temp until the backend fixes the case of email not confirmed by returning an error
    //       this.loginStatusService.loginState.next({isAuthorized: true, loginResponse: res});
    //     }
    //     return res;
    //   }));
  }


  getUserData() {
    return this.userData;
  }
  setUserData(qrCodeObject) {
    console.log('qrCodeObject ', qrCodeObject);
    this.userData = qrCodeObject;
  }
  
  isAuthenticated() {
    return Boolean(this.userData);
  }
}
