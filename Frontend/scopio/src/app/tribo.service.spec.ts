import { TestBed } from '@angular/core/testing';

import { TriboService } from './tribo.service';

describe('TriboService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: TriboService = TestBed.get(TriboService);
    expect(service).toBeTruthy();
  });
});
