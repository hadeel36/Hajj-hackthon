import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';

import { UserMessagesService } from './user-messages.service';
import { Observable } from 'rxjs';

@Injectable()
export class HttpRequestsService {
  private requestHeader: HttpHeaders;
  private requestOptions: {headers: HttpHeaders};
  private baseUrl: string;

  constructor(private http: HttpClient, private userMessagesService: UserMessagesService) {
    this.baseUrl ='http://hajj.malakabuhammad.com/haj/index.php?r=';
    this.requestHeader = new HttpHeaders({
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    });
    this.requestOptions = {
      headers: this.requestHeader
    };
  }

  public httpGet(requestUrl: string, userMessages ?: any): Observable < any > {
    return Observable.create(obs => {
      this.http.get(this.baseUrl + requestUrl, this.requestOptions).subscribe((res: any) => {
          this.userMessagesService.showUserMessage(userMessages, 'success');
          res = res.data;
          obs.next(res);
          obs.complete();
        },
        err => {
          this.userMessagesService.showUserMessage(userMessages, 'fail', err);
          obs.error(err);
        });
    });
  }

  public httpPost(requestUrl: string, requestParams ?: Object, userMessages ?: any): Observable < any > {
    return Observable.create(obs => {
      this.http.post(this.baseUrl + requestUrl, requestParams, this.requestOptions).subscribe((res: any) => {
          this.userMessagesService.showUserMessage(userMessages, 'success');
          res = res.data? res.data : res;
          obs.next(res);
          obs.complete();
        },
        err => {
       
          this.userMessagesService.showUserMessage(userMessages, 'fail', err);
          obs.error(err);
        });
    });
  }

  public httpPut(requestUrl: string, requestParams ?: Object, userMessages?: any): Observable < any > {
    return Observable.create(obs => {
      this.http.put(this.baseUrl + requestUrl, requestParams, this.requestOptions).subscribe((res: any) => {
          res = res.data;
          obs.next(res);
          this.userMessagesService.showUserMessage(userMessages, 'success');
          obs.complete();
        },
        err => {
  
          this.userMessagesService.showUserMessage(userMessages, 'fail', err);
          obs.error(err);
        });
    });
  }

  public httpDelete(requestUrl: string, userMessages?: any): Observable < any > {
    return Observable.create(obs => {
      this.http.delete(this.baseUrl + requestUrl, this.requestOptions).subscribe((res: any) => {
          res = res.data;
          obs.next(res);
          this.userMessagesService.showUserMessage(userMessages, 'success');
          obs.complete();
        },
        err => {
          this.userMessagesService.showUserMessage(userMessages, 'fail', err);
          obs.error(err);
        });
    });
  }

  /*
  // To be uncommented to check with Ahsan why handle error is never called eventhough I am forcing the request to return error by appending
  // the word fail to the base url
  public httpPost(requestUrl: string, requestParams ? : Object, userMessages ?: any): Observable < any > {
      return this.http.post(this.baseUrl + 'fail' + requestUrl, requestParams, this.requestOptions).pipe(
        map(res => {
          this.userMessagesService.showUserMessage(userMessages, 'success');
        },
        catchError (err => this.handleError(err, userMessages))
      ));
  }
  */


}
