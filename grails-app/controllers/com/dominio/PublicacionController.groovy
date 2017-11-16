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
