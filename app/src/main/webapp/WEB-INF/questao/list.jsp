<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Questões</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Questões</h1>
            <a href="/questao/insert" class="btn btn-primary">Nova Questão</a>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Enunciado</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach var="item" items="${questoes}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.enunciado}</td>
                        <td>
                            <a href="/questao/update?id=${item.id}" class="btn btn-warning">Editar</a>
                            <a href="/questao/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>