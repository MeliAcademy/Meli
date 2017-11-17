package com.dominio

import java.util.Date;

import melicommerce.PublicacionService;

import org.springframework.web.servlet.ModelAndView

class PublicacionController {
	
	PublicacionService publicacionService
	
	static allowedMethods = [buscarPorTitulo:'GET', crearPublicacion: 'GET', resultadoCrear: 'POST']
	
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
		def publicaciones = publicacionService.buscarPublicacionesPorString(params.titulo)
		return new ModelAndView("/publicacion/resultadoBusqueda", [publicaciones: publicaciones])
	}
	
	def crearPublicacion = {
		//CHECK LOGIN
		return new ModelAndView("/publicacion/crearPublicacion")
	}
	
	def resultadoCrear = {
		Publicacion publicacion = publicacionService.crearPublicacion(params.titulo, params.descripcion, Double.valueOf(params.precio).doubleValue(), Boolean.parseBoolean(params.esPublicacionSinUso))	
		boolean resultado = publicacion.isAttached()
		return new ModelAndView("/publicacion/resultadoCrear", [publicacion: publicacion, resultado: resultado])
	}
	
	def verPublicacion(String id) {
		Publicacion publicacion = publicacionService.buscarPublicacionPorId(Long.parseLong(id))
		return new ModelAndView("/publicacion/verPublicacion", [publicacion: publicacion])
	}
	
	def comprar(String idUsuario, Publicacion publicacion){
		
	}
}
