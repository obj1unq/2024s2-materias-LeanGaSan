import carreras.*
import materias.*

class Estudiante {
    const property materiasAprobadas = #{}
    const calificacion 

 

    method agregarMateriaAprobada(materia){
        self.validarAprobado(materia)
        materiasAprobadas.add(materia) 
    }

    method validarAprobado(materia) {
        if ( materia.desaprobada()) {
            self.error("Desaprobé " + materia.materia() + "con" + materia.nota())
        }
    }

    method cantidadDeMateriasAprobadas() {
        return materiasAprobadas.size()
    }

    method promedio() {
        return materiasAprobadas.sum({materia => materia.nota()}).div(self.cantidadDeMateriasAprobadas())
    }


    method tieneAprobada(materia) {
        return materiasAprobadas.any({materiaAprobada => materiaAprobada == materia})
    }

    
}