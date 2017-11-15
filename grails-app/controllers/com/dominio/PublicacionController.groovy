package com.dominio

import melicommerce.PublicacionService;

import org.springframework.web.servlet.ModelAndView

class PublicacionController {
	
	PublicacionService publicacionService
	
	static allowedMethods = [busqueda: 'GET',
		buscarPorPublicacion:'POST',
		]//s
	
	def index = {
		redirect (action: busqueda)
	}
	
	def volver = {
		redirect (action: busqueda)
	}
	
	def busqueda = {
		def publicaciones = Publicacion.findAll()
		return [publicaciondes: publicaciones]
	}
	
	def buscarPorTitulo(String titulo) {
		def publicaciones = publicacionService.buscarPublicacion(titulo)
		return new ModelAndView("/buscarPublicacion/resultado", [publicaciones: publicaciones])
	}
	
	def crearPublicacion = {
		
	}
	
	def publicar = {
		if (Double.valueOf(params.precio) <= 0) {
			redirect(action : 'crearPublicacion')
		}

		publicacionService.crearPublicacion(params.titulo, params.descripcion, Double.valueOf(params.precio).doubleValue())
		
		render "publicacion creada exitosamente"
	}
}
