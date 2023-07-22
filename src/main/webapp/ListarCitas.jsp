<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Citas Médicas</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-12 text-center">
                <h1>Lista de Citas Médicas</h1>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-12 col-md-8">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Fecha de Nacimiento</th>
                            <th>Departamento</th>
                            <th>Especialidad</th>
                            <th>Fecha de Cita</th>
                            <th>Turno</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%-- Aquí irá el código Java para obtener la lista de citas médicas --%>
                        <%-- Por ahora, utilizaremos datos de ejemplo --%>
                        <%
                            // Datos de ejemplo
                            String[][] citas = {
                                {"Juan Pérez", "1990-05-15", "Cardiología", "Cardiología General", "2023-07-15", "mañana"},
                                {"María Gómez", "1985-09-22", "Pediatría", "Pediatría General", "2023-07-20", "tarde"}
                            };

                            for (String[] cita : citas) {
                        %>
                        <tr>
                            <td><%= cita[0] %></td>
                            <td><%= cita[1] %></td>
                            <td><%= cita[2] %></td>
                            <td><%= cita[3] %></td>
                            <td><%= cita[4] %></td>
                            <td><%= cita[5] %></td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
