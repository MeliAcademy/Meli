package com.dominio

import melicommerce.PublicacionService;

import org.springframework.web.servlet.ModelAndView

class PublicacionController {
	
	PublicacionService publicacionService
	
	static allowedMethods = [buscarPorTitulo:'GET']
	
	def index = {
		redirect (action: busqueda)
	}
	
	def volver = {
		redirect (action: busqueda)
	}
	
	def busqueda = {
		def publicaciones = Publicacion.findAll()
		return [publicaciones: publicaciones]
	}
	
	def buscarPorTitulo = {
		def publicaciones = publicacionService.buscarPublicacion(params.titulo)
		return new ModelAndView("/publicacion/resultadoBusqueda", [publicaciones: publicaciones])
	}
}
