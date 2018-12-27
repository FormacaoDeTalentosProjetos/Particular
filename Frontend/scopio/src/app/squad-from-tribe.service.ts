import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class SquadFromTribeService {

  /* API ADRESS */
  squadsfromtribeUrl = 'http://localhost:5000/api/Squad/IdTribo/{id}';

  constructor(private http: HttpClient) { }

  listar() {
    return this.http.get<any[]>(`${this.squadsfromtribeUrl}`);
  }
}
