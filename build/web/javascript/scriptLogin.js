var ajax = new XMLHttpRequest;

ajax.open("GET", "index.jsp");
ajax.send();
ajax.addEventListener("readystatechange", function(){
});


function validacao(){
                var usuario = forml.usuario.value;
                var senha = forml.senha.value;

                if(usuario == ""){
                    alert("Campo de usuario vazio, informar um usuario!!!");
                    forml.usuario.focus();
                    return false;
                }
                
                if(senha == ""){
                    alert("Campo de senha vazio, informar um usuario!!!");
                    forml.senha.focus();
                    return false;
                }
            }