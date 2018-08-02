import { TestBed, inject } from '@angular/core/testing';
import { SelectedLanguageService } from './selected-language.service';


describe('TranslateService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [SelectedLanguageService]
    });
  });

  it('should be created', inject([SelectedLanguageService], (service: SelectedLanguageService) => {
    expect(service).toBeTruthy();
  }));
});
