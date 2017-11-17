package com.dominio

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import melicommerce.PublicacionService
import melicommerce.UserService

import org.springframework.web.servlet.ModelAndView

@Transactional(readOnly = false)
class UserController {
	
	UserService userService = new UserService()
	PublicacionService publicacionService = new PublicacionService()
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }
		
	def login = {
		return new ModelAndView("/user/login")
	}
	
	def logout = {
		session.user = null
		redirect (action: 'index')
	}
	
	def createUsers() {
		User user = userService.crearUser()
		//user.save()
		
		//def mydate = Date.parse("yyyy-MM-dd hh:mm:ss", "2014-04-03 1:23:45")
		//Publicacion pub = new Publicacion(titulo:'publicacion1', fechaPublicacion: mydate, descripcion: 'test')
		//Publicacion.getAll().size()
		//pub.save()
		redirect (action: 'index')
	}

	def home = {
		
		def user = User.find( {userName == params.userName && password == params.password })
		if(!user) {
			if(params.userName != null || params.password != null) {
				flash.message = "Contrasena incorrecta"
			}
			redirect(action : 'login')
		} 
		session.putAt("user", user)
		new ModelAndView('/user/index')
		
		
	}
	
    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	def profile = {
		return new ModelAndView("/user/profile", [usuario: userService.buscarUserPorId(session.user.id)])
	}
	
	def showPubs = {
		return new ModelAndView("/user/MisPublicaciones", [publicaciones: publicacionService.buscarPublicacionesPorId(session.getAttribute("user").id)])
	}
}
