import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SquadsFromTribeComponent } from './squads-from-tribe.component';

describe('SquadsFromTribeComponent', () => {
  let component: SquadsFromTribeComponent;
  let fixture: ComponentFixture<SquadsFromTribeComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SquadsFromTribeComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SquadsFromTribeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
