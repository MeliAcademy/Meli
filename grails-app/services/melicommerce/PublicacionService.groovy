package melicommerce


import com.dominio.Publicacion;

import grails.transaction.Transactional

@Transactional
class PublicacionService {

	def buscarPublicacion(String titulo) {
        def publicaciones = Publicacion.withCriteria {
            if(titulo){
                createAlias("titulo", "tit")
                eq('tit.nombre', titulo)
            }
        }
        return publicaciones
    }
	
	def crearPublicacion(String titulo, String desc, double precio) {
		new Publicacion(titulo: titulo, descripcion: desc, precio: precio)
	}
	
}
