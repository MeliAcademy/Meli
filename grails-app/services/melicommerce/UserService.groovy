package melicommerce
import java.nio.file.attribute.UserDefinedFileAttributeView;

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

}
