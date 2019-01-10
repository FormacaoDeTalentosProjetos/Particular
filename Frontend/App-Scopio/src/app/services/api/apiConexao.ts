export default class ApiConexao{
    
    urlBase: string;

    constructor(){
        this.urlBase = "http://localhost:5000/api/";
    }

    getUrl(){
        return this.urlBase;
    }
}
