import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TribosComponent } from './tribos.component';

describe('TribosComponent', () => {
  let component: TribosComponent;
  let fixture: ComponentFixture<TribosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TribosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TribosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
