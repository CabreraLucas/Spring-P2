<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Editar Quiz</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Editar Quiz</h1>
            <form action="/quiz/update" method="post">
                <input type="hidden" name="id" value="${quiz.id}"/>
                <div class="form-group">
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" class="form-control" value="${quiz.nome}"/>
                </div>
                <div class="form-group">
                    <label for="quiz">Questão:</label>
                    <select name="questao" class="form-select">
                        <c:forEach var="q" items="${questoes}">
                            <option ${quiz.questao.id == q.id ? "selected" : ""} value="${q.id}">${q.texto}</option>
                        </c:forEach>
                    </select>
                </div>
                <br />
                <a href="/quiz/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>        
    </body>
</html>