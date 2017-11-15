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
}
