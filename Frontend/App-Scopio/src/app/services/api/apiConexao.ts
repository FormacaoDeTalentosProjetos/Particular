export default class ApiConexao{
    //Url que se repete em todas as rotas do servidor
    urlBase: string;

    constructor(){
        this.urlBase = "http://localhost:5000/api/";
    }

    getUrl(){
        return this.urlBase;
    }
}
