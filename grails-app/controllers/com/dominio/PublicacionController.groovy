package com.dominio

class PublicacionController {
	
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
		def publicaciondes = Publicacion.findAll()
		return [publicaciondes: publicaciones]
	}
}
