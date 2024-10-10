import estudiantes.*
import materias.*
import carreras.*

class Nota {
    const property alumno 
    const property materia 
    const property nota

    method desaprobada() {
        return nota < 4
    }
}