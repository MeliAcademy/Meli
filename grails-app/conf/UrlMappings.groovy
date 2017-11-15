class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        //"/" (view:"/index")
		"/" (controller : 'User', action: 'createUsers')
		"500"(view:'/error')
	}
}
