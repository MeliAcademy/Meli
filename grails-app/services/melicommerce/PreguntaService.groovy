package melicommerce

import com.dominio.Pregunta;
import com.dominio.Publicacion;
import com.dominio.User;

import grails.transaction.Transactional;

@Transactional
class PreguntaService {
	
	def crearPregunta(String texto) {
		Pregunta preg = new Pregunta(texto: texto)
		preg.save()
		return preg
	}
	
	def buscarPreguntasPorId(User user) {
		def preguntas = Pregunta.withCriteria {
			eq('User', user)
		}
		return preguntas
	}
	
	def buscarPreguntasporPublicacion(Publicacion publicacion) {
		def pregunt = Pregunta.withCriteria {
				eq('publicacion', publicacion)
		}
		return pregunt
	}

}
