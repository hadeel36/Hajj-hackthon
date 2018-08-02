import { TranslateService } from '@ngx-translate/core';

import { AvailableLanguageInfo } from '../../models/available-language-info.model';
import { sysOptions, defaultLanguage, availableLanguages } from '../../constants/i18n.constants';



export class SelectedLanguageService {

  appLanguage: string;
  appLanguages: AvailableLanguageInfo[];
  selectedLanguageCode: string;
  constructor(
    public translate: TranslateService,
  ) {
    this.initLanguageRelatedVariables();
  }

  /**
   * @author Nermeen Mattar
   * @description sets the app languages property to a copy of the available languages. And gets the user preferable language for this
   * the priorites in order are: 1- local storage 2- browser language 3- default language from the code.
   */
  initLanguageRelatedVariables() {
    this.appLanguages = JSON.parse(JSON.stringify(availableLanguages)); // copying available languages object
    this.selectedLanguageCode = localStorage.getItem('lang');
    if (!this.selectedLanguageCode) {
      this.selectedLanguageCode = this.translate.getBrowserLang() || defaultLanguage;
    }
    this.appLanguage = this.getSuitableLanguage(this.selectedLanguageCode);
    this.translate.use(this.appLanguage);
    sysOptions.systemLanguage = this.appLanguage;
  }

  /**
   * @author Ahsan Ayaz
   * @param language - two letter country code, e.g. 'en'
   * @return {String} the suitable language
   */
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
    localStorage.setItem('lang', langCode);
  }

}
