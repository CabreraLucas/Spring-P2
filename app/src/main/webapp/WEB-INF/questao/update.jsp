<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Editar Questão</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Editar Questão</h1>
            <form action="/questao/update" method="post">
                <input type="hidden" name="id" value="${questao.id}"/>
                <div class="form-group">
                    <label for="enunciado">Enunciado</label>
                    <input type="text" name="enunciado" class="form-control" value="${questao.enunciado}"/>
                </div>
                <div class="form-group">
                    <label for="questao">Questão:</label>
                    <select name="alternativa" class="form-select">
                        <c:forEach var="a" items="${alternativas}">
                            <option ${questao.alternativa.id == a.id ? "selected" : ""} value="${a.id}">${a.texto}</option>
                        </c:forEach>
                    </select>
                </div>
                <br />
                <a href="/questao/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>        
    </body>
</html>