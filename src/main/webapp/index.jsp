<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mantenimiento de Citas Médicas</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-12 text-center">
                <h1>Registro de Citas</h1>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-12 col-md-6">
                <form action="prueba.jsp" method="post">
                    <!-- Sección 1: Datos del paciente -->
                    <h2 class="mt-4">Datos del paciente</h2>
                    <div class="mb-3">
                        <label class="form-label">Nombre:</label>
                        <input type="text" class="form-control" name="nombre" required>
                    </div>
                    
                    <div class="mb-3">
                        <label class="form-label">Apellido paterno:</label>
                        <input type="text" class="form-control" name="apellidoPaterno" required>
                    </div>
                    
                    <div class="mb-3">
                        <label class="form-label">Apellido materno:</label>
                        <input type="text" class="form-control" name="apellidoMaterno" required>
                    </div>
                    
                    <div class="mb-3">
                        <label class="form-label">Doc. Identidad:</label>
                        <select class="form-select" name="tipoDocumento">
                            <option value="dni">DNI</option>
                            <option value="ce">CE</option>
                            <option value="otro">Otro</option>
                        </select>
                    </div>
                    
                    <div class="mb-3">
                        <label class="form-label">Fecha de nacimiento:</label>
                        <input type="date" class="form-control" name="fechaNacimiento" required>
                    </div>
                    
                    <div class="mb-3">
                        <label class="form-label">Teléfono:</label>
                        <input type="text" class="form-control" name="telefono" required>
                    </div>
                    
                    <div class="mb-3">
                        <label class="form-label">Correo electrónico:</label>
                        <input type="text" class="form-control" name="correo" required>
                    </div>

                    <!-- Sección 2: Datos de la cita -->
                    <h2 class="mt-4">Datos de la cita</h2>
                    <div class="mb-3">
                        <label class="form-label">Departamento:</label>
                        <input type="text" class="form-control" name="departamento" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Especialidad:</label>
                        <input type="text" class="form-control" name="especialidad" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Motivo de solicitud de cita:</label>
                        <textarea class="form-control" name="motivo" rows="4"></textarea>
                    </div>

                    <!-- Subsección -->
                    <h3 class="mt-4">Fecha y turno de la cita</h3>
                    <div class="mb-3">
                        <label class="form-label">Día:</label>
                        <input type="date" class="form-control" name="fechaCita" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Turno:</label><br>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="turno" value="mañana" required>
                            <label class="form-check-label">Mañana</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="turno" value="tarde" required>
                            <label class="form-check-label">Tarde</label>
                        </div>
                    </div>

                    <div class="d-grid gap-2 mt-4">
                        <button type="submit" class="btn btn-primary">Agendar cita</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>


<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>


</html>