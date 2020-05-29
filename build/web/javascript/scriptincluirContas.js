function confSenha(){
                var senha = form.senha.value;
                var csenha = form.csenha.value;
                var usuario = form.usuario.value;
                var nome = form.nome.value;
                if(senha == "" || senha.length<=5){
                    alert("Preencha o campo senha com no minimo 6 caracteres!!!");
                    form.senha.focus();
                    return false;
                }
                
                if(nome == "" || nome.length<=2){
                    alert("Preencha o campo nome com no minimo 3 caracteres!!!");
                    form.nome.focus();
                    return false;
                }
                if(usuario == "" || usuario.length<=2){
                    alert("Preencha o campo usuario com no minimo 3 caracteres!!!");
                    form.usuario.focus();
                    return false;
                }
                if(senha!=csenha){
                    alert("As senhas não se coincidem!!!");
                    form.senha.focus();
                    return false;
                }
            }

