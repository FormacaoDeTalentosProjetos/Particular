import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MenuLateralEsquerdoComponent } from './menu-lateral-esquerdo.component';

describe('MenuLateralEsquerdoComponent', () => {
  let component: MenuLateralEsquerdoComponent;
  let fixture: ComponentFixture<MenuLateralEsquerdoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MenuLateralEsquerdoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MenuLateralEsquerdoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
