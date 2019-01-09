import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class SquadService {

   /* API ADRESS */
   squadsUrl = 'http://localhost:5000/api/Squad/SquadSemTribo/';

   constructor(private http: HttpClient) { }
 
   getSquadSemTribo () {
     return this.http.get<any[]>(`${this.squadsUrl}`);
   }
 }
