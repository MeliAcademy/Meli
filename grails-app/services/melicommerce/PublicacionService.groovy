package melicommerce


import javax.transaction.Transaction;

import com.dominio.Publicacion;
import com.dominio.Transaccion;

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
	
	def crearPublicacion(String titulo, String desc, double precio, boolean esNuevo, Long id, Long categoria) {
		String smh = new Date().format("yyyy-MM-dd hh:mm:ss")
		def mydate = Date.parse("yyyy-MM-dd hh:mm:ss", smh)
		Publicacion pub = new Publicacion(titulo: titulo, fechaPublicacion: mydate, descripcion: desc, precio: precio, fueVendido : false, esPublicacionSinUso: esNuevo, idUser: id, idCategoria: categoria)
		if(precio > 0) {
			pub.save()		
		}
		return pub
	}
	
	def buscarPublicacionesPorId(Long id) {
		def publicaciones = Publicacion.withCriteria {
			eq('idUser', id)
		}
		return publicaciones
	}
	
	def buscarVentasPorId(Long id) {
		def publicaciones = buscarPublicacionesPorId(id)
		def ids = new ArrayList<>()
		for (pub in publicaciones) {
			ids.add(pub.id)
		}
		def ventas = Transaccion.withCriteria {
			'in'("idPublicacion", ids)
		}
		def resulFinal = new ArrayList<>()
		for (publicacion in publicaciones) {
			for (venta in ventas) {
				if(publicacion.id == venta.idPublicacion) {
					resulFinal.add(publicacion)
				}
			}
		}
		return resulFinal
	}
	
	def buscarComprasPorId(Long id) {
		
		def ventas = Transaccion.withCriteria {
			eq("idUsuario", id)
		}
		def publicaciones = new ArrayList<>()
		
		
		for (venta in ventas) {
			publicaciones.add(buscarPublicacionPorId(venta.idPublicacion))
		}
		
		return publicaciones
		
		
	}
}
