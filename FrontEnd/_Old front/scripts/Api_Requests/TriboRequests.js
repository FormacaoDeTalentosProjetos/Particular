// import conexao from 'Conexao/ConexaoApi.js';

// //Instancia classe ConexaoApi que retorna a URL da API
// var url = conexao;//new Conexao(); 

// //Variavel com o caminho da API
// var api = url + 'Tribo/';

// //Variavel de requisição HTTP
// var request = new RequestApi(api, 'GET');

// //Variavel que obtêm a resposta da API
// var response = new ApiResponse(request, 'Desculpe, ocorreu um erro ao obter a lista de Tribos!');

// if (response != null){
//     response.forEach(element => {
//         console.log(element.Nome);
//         console.log(element.Logo);
//     });
// }

var api = 'http://localhost:55221/api/Tribo/1';

var request = new Request(api, {
            method: "GET",
            headers: new Headers({
                'Content-Type': 'application/json'
            })
        });

        fetch(request)
        .then(function(response) {
            console.log(response);       
            if (response.status >= 200 && response.status <= 204) {
                response.json()
                    .then(function (obj) {
                        console.log(obj.Nome);
                    });
            } else {
                alert(errorRequest);
            }
        })

        .catch(function(response) {
            console.log(response);
            alert("Desculpe, ocoreu um erro no servidor...");
        });