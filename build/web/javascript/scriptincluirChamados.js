function confSenha(){
                var descricao = form.descricao.value;
                var tipo = form.tipo.value;
                var telefone = form.telefone.value;
                var nome = form.nome.value;
                var local = form.nome.value;
                if(tipo == "" || tipo.length<=5){
                    alert("Preencha o campo tipo de problema com no minimo 6 caracteres!!!");
                    form.tipo.focus();
                    return false;
                }               
                if(nome == "" || nome.length<=2){
                    alert("Preencha o campo nome com no minimo 3 caracteres!!!");
                    form.nome.focus();
                    return false;
                }
                if(local == "" || local.length<=2){
                    alert("Preencha o campo local com no minimo 3 caracteres!!!");
                    form.local.focus();
                    return false;
                }
                if(telefone == "" || telefone.length<=7){
                    alert("Preencha o campo telefone com no minimo 8 caracteres!!!");
                    form.telefone.focus();
                    return false;
                }
                if(descricao == "" || descricao.length<=2){
                    alert("Preencha o campo descrição com no minimo 3 caracteres!!!");
                    form.descricao.focus();
                    return false;
                }
            }



