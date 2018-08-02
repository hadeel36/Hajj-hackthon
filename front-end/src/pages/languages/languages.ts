import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { TranslateService } from '@ngx-translate/core';
import { Storage } from '@ionic/storage';

import { AvailableLanguageInfo } from '../../app/core/models/available-language-info.model';
import { sysOptions, defaultLanguage, availableLanguages } from '../../app/core/constants/i18n.constants';

/**
 * Generated class for the LanguagesPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-languages',
  templateUrl: 'languages.html',
})
export class LanguagesPage {

  appLanguage: string;
  isUserAdmin: boolean;
  menuOpened = false;
  appLanguages: AvailableLanguageInfo[];
  selectedLanguageCode: string;
  hasAdminRole: boolean;
  constructor(
    public translate: TranslateService,
    public navParams: NavParams,
    private storage: Storage,
    public navCtrl: NavController,     
  ) {
    this.initLanguageRelatedVariables();
  }

  /**
   * @author Nermeen Mattar
   * @description sets the app languages property to a copy of the available languages. And gets the user preferable language for this
   * the priorites in order are: 1- local storage 2- browser language 3- default language from the code.
   */
  initLanguageRelatedVariables() {
    debugger;
    this.appLanguages = JSON.parse(JSON.stringify(availableLanguages)); // copying available languages object
    this.storage.get('lang').then((selectedLangCode) => {
      if(this.selectedLanguageCode) {
        this.selectedLanguageCode =  selectedLangCode;
      }
    });
    if (!this.selectedLanguageCode) {
      this.selectedLanguageCode = this.translate.getBrowserLang() || defaultLanguage;
    }
    this.appLanguage = this.getSuitableLanguage(this.selectedLanguageCode);
    this.translate.use(this.appLanguage);
    sysOptions.systemLanguage = this.appLanguage;
  }

  getSuitableLanguage(language): string {
    language = language.substring(0, 2).toLowerCase();

    return this.appLanguages.some(lang => (lang.code === language)) ? language : defaultLanguage;
  }

  /**
   * @author Nermeen Mattar
   * @description uses the translate service to update the language and updates the language in the local storage
   * @param {string} langCode
   */
  languageSelected(langCode: string) {
    this.selectedLanguageCode = langCode;
    this.translate.use(langCode);
    this.storage.set('lang', langCode);
  }


  ionViewDidLoad() {
    console.log('ionViewDidLoad LanguagesPage');
  }

  test(){
    alert('sss')
  }

}
