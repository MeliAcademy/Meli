package melicommerce
import java.nio.file.attribute.UserDefinedFileAttributeView;

import javax.transaction.Transaction;

import com.dominio.Publicacion
import com.dominio.Transaccion
import com.dominio.User;

import grails.transaction.Transactional

@Transactional(readOnly = false)
class UserService {
	
	def crearUser = {
		String userName = "pepe"
		String password = "1234"

		new User(userName: userName, password: password, balance: 500)
	}
	
	def buscarUserPorId(Long id){
		User.find( {id == id})
	}
	
	def comprar (Long idUser, Long idPublicacion) {
		boolean resultado = false
		Transaccion trans
		String resultadoRazon = "Se ha encontrado un problema en el servidor"
		User usuarioComprador = User.get(idUser)
		Publicacion pub = Publicacion.get(idPublicacion)
		User usuarioVendedor = User.get(pub.idUser)
		if(usuarioComprador.balance >= pub.precio){
			resultado = true
			resultadoRazon = ""
			usuarioComprador.balance -= pub.precio
			usuarioVendedor.balance += pub.precio
			pub.fueVendido = true
			usuarioComprador.save()
			pub.save()
			String smh = new Date().format("yyyy-MM-dd hh:mm:ss")
			def myDate = Date.parse("yyyy-MM-dd hh:mm:ss", smh)
			usuarioVendedor.save()
			trans = new Transaccion(idUsuario: idUser, idPublicacion: idPublicacion, fecha: myDate)
			trans.save()
		}else if(usuarioComprador.id == usuarioVendedor.id){
			resultadoRazon = "No podés comprar una publicación que publicaste"
		}else{
			resultadoRazon = "No tenés suficiente dinero en tu cuenta"
		}
		return [resultado: resultado, resultadoRazon: resultadoRazon]
	}

}
