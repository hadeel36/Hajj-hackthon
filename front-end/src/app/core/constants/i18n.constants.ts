import { AvailableLanguageInfo } from './../models/available-language-info.model';

export const availableLanguages: AvailableLanguageInfo[] = [
  {
    code: 'en',
    name: 'English'
  },
  {
    code: 'ar',
    name: 'Arabic'
  }
];

export const defaultLanguage = 'en';

export const sysOptions = {
  systemLanguage: defaultLanguage
};
