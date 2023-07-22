<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Pacientes</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-12 text-center">
                <h1>Lista de Pacientes</h1>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-12 col-md-8">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellido paterno</th>
                            <th>Apellido materno</th>
                            <th>Doc. Identidad</th>
                            <th>Fecha de nacimiento</th>
                            <th>Tel�fono</th>
                            <th>Correo electr�nico</th>

                        </tr>
                    </thead>

                    
                    <tbody>
                        <%-- Aqu� ir� el c�digo Java para obtener la lista de citas m�dicas --%>
                        <%-- Por ahora, utilizaremos datos de ejemplo --%>
                        <%
                            // Datos de ejemplo
                            String[][] pacientes = {
                                {"Juan","P�rez","Rojas","12345678","1990-05-15", "999999999", "juan.perez@gmail.com"},
                                {"Mar�a","G�mez","Molina", "87654321","1985-09-22", "988888888", "maria.gomez@gmail.com"}
                            };

                            for (String[] paciente : pacientes) {
                        %>
                        <tr>
                            <td><%= paciente[0] %></td>
                            <td><%= paciente[1] %></td>
                            <td><%= paciente[2] %></td>
                            <td><%= paciente[3] %></td>
                            <td><%= paciente[4] %></td>
                            <td><%= paciente[5] %></td>
                            <td><%= paciente[5] %></td>
                        </tr>
                        <% } %>
                    </tbody>
                    
                </table>
            </div>
        </div>
    </div>
</body>
</html>