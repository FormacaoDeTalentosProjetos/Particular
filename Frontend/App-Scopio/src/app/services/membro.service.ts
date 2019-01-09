import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})

export class MembroService {
  
  /*ENDEREÇO DA API*/
  Url = 'http://localhost:55221/api/User/Ativos/';

  constructor(private http: HttpClient) { }
  
  getMembrosAtivos () {
    return this.http.get<any[]>(`${this.Url}`);
  }
}
