package melicommerce


import com.dominio.Publicacion;

import grails.transaction.Transactional

@Transactional
class PublicacionService {

	def buscarPublicacionesPorString(String titulo) {
        def publicaciones = Publicacion.withCriteria {
            if(titulo){
                like('titulo', '%'+titulo+'%')
				eq('fueVendido', false)
            }
        }
        return publicaciones
    }
	
	def buscarPublicacionPorId(Long id) {
		def publicaciones = Publicacion.withCriteria {
			eq('id', id)
		}
		return publicaciones.get(0)
	}
	
	def crearPublicacion(String titulo, String desc, double precio, boolean esNuevo) {
		String smh = new Date().format("yyyy-MM-dd hh:mm:ss")
		def mydate = Date.parse("yyyy-MM-dd hh:mm:ss", smh)
		Publicacion pub = new Publicacion(titulo: titulo, fechaPublicacion: mydate, descripcion: desc, precio: precio, fueVendido : false, esPublicacionSinUso: esNuevo)
		if(precio > 0) {
			pub.save()		
		}
		return pub
	}
	
}
