package com.dominio
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional;
import melicommerce.PreguntaService;
import org.springframework.web.servlet.ModelAndView

@Transactional(readOnly = false)
class PreguntaController {

	PreguntaService preguntaService = new PreguntaService()
	static allowedMethods = []
	
    def index() { 
	}
	
	def resultadoBusqueda = {
		def preguntas = preguntaService.buscarPreguntasporPublicacion(Publicacion.get(params.publicacion));
		return [preguntas: preguntas]
	}
	
	def crearPregunta = {
		return new ModelAndView("/pregunta/crearPregunta")
	}
	
}
