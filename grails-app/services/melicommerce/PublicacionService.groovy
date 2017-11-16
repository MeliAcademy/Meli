package melicommerce


import com.dominio.Publicacion;

import grails.transaction.Transactional

@Transactional
class PublicacionService {

	def buscarPublicacionesPorString(String titulo) {
        def publicaciones = Publicacion.withCriteria {
            if(titulo){
                like('titulo', '%'+titulo+'%')
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
	
	def crearPublicacion(String titulo, String desc, double precio) {
		def mydate = Date.parse("yyyy-MM-dd hh:mm:ss", "2014-04-03 1:23:45")
		Publicacion pub = new Publicacion(titulo: titulo, fechaPublicacion: mydate, descripcion: desc, precio: precio)
		pub.save()
		return pub
	}
	
}
