package com.dominio

import java.util.Date;

import melicommerce.PublicacionService;
import melicommerce.UserService

import org.springframework.web.servlet.ModelAndView

import com.sun.xml.internal.ws.wsdl.writer.document.Service;

class PublicacionController {
	
	PublicacionService publicacionService = new PublicacionService()
	UserService userService = new UserService()
	
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
		Publicacion publicacion = publicacionService.crearPublicacion(params.titulo, params.descripcion, Double.valueOf(params.precio).doubleValue(), Boolean.parseBoolean(params.esPublicacionSinUso), session.getAttribute("user").id)	
		boolean resultado = publicacion.isAttached()
		return new ModelAndView("/publicacion/resultadoCrear", [publicacion: publicacion, resultado: resultado])
	}
	
	def verPublicacion(String id) {
		Publicacion publicacion = publicacionService.buscarPublicacionPorId(Long.parseLong(id))
		return new ModelAndView("/publicacion/verPublicacion", [publicacion: publicacion])
	}
	
	def resultadoComprar = {
		return new ModelAndView("/publicacion/resultadoComprar", userService.comprar(session.getAttribute("user").id, Long.parseLong(params.publicacion)))
	}
}
