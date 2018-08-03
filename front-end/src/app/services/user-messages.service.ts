import { Injectable } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';

@Injectable()
export class UserMessagesService {

  constructor( private translateService: TranslateService) {}

  showUserMessage(userMessages: any, messageType, err ? ) {

  }

  getFailMessage(userMessages: any, err): any {
    const userFailMessage = {
      fail: null
    };
    if (err && err.error && err.error.message) {
      const translationKey = 'BACKEND.'.concat(err.error.message.toUpperCase());
      this.translateService.get('USER_MESSAGES.'.concat(translationKey)).subscribe(
        translatedMessage => {
          if (!translatedMessage.includes(translationKey)) {
            userFailMessage.fail = translationKey;
          }
          /* else if check status code (use constants and requests class)
            ex else if(reqeuestsClass.unauthorized(err)) {
              // 403 and 401 same handling

            }
          */
        }
      );
    }
    if (!userFailMessage.fail) {
      userFailMessage.fail = userMessages && userMessages.failDefault ? userMessages.failDefault : 'SOMETHING_WENT_WRONG';
    }
    return userFailMessage;
  }
}
