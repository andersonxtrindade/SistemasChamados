
<html>
    <head>
        <title>Abertura de chamados</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/login.css" media="screen"/>
        <script src="javascript/scriptLogin.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    </head>
    <body>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <div class="geral">
            <div id="caixa">
                <h5>SaC para voc�</h5>
                <form name="forml" method="post" action="DBlogin.jsp">
                    <p style="padding-top: 15px;">Usuario: <input type="text" name="usuario" id="usuario" style="margin-left: 28px; "></p>
                    <p>Senha: <input type="password" name="senha" id="senha" style="margin-left: 40px"></p>
                    <p><input type="submit" onclick="return validacao()" value="Entrar" style="width: 90px; height: 30px; border-radius: 5px">
                        <a style="margin-left: 10px;" href="incluirChamados.jsp">   Abrir chamados?</a></p>
                </form>
            </div>
        </div>
    </body>
</html>
