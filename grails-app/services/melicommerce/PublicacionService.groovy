package melicommerce

import com.dominio.Publicacion;

import grails.transaction.Transactional

@Transactional
class PublicacionService {

	def buscarPublicacion(String titulo) {
        def publicaciones = Publicacion.withCriteria {
            if(titulo){
                like('titulo', '%'+titulo+'%')
            }
        }
        return publicaciones
    }
	
}
