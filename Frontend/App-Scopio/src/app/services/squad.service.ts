import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class SquadService {

   /* API ADRESS */
   url = 'http://localhost:55221/api/Squad/SquadSemTribo/';

   constructor(private http: HttpClient) { }
 
   getSquadSemTribo () {
     return this.http.get<any[]>(`${this.url}`);
   }
 }
