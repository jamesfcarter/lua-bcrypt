package = "bcrypt"
version = "2.1-4"

source = {
	url = "git://github.com/jamesfcarter/lua-bcrypt.git",
	tag = "v2.1-4",
}

description = {
	summary = "A Lua wrapper for bcrypt",
	homepage = "http://github.com/mikejsavage/lua-bcrypt",
	license = "ISC",
	maintainer = "Mike Savage",
}

dependencies = {
	"lua >= 5.1",
}

build = {
	type = "make",

	install_pass = false,

	build_variables = {
		LUA_INCDIR = "$(LUA_INCDIR)",
	},

	install = {
		lib = {
			[ "bcrypt" ] = "bcrypt.so",
		},
	},
}
