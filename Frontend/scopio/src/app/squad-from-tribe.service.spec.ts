import { TestBed } from '@angular/core/testing';

import { SquadFromTribeService } from './squad-from-tribe.service';

describe('SquadFromTribeService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: SquadFromTribeService = TestBed.get(SquadFromTribeService);
    expect(service).toBeTruthy();
  });
});
