fx_version("cerulean")
game("rdr3")

description("TypeScript boilerplate by zeeGeeG#2776")
rdr3_warning(
	"I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."
)
author("zeeGeeG#2776")

ui_page("build/web/index.html")

files({
	"build/web/index.html",
	"build/web/index.js",
	"build/web/index.css",
})

client_scripts({
	"build/client/client.js",
})

server_scripts({
	"build/server/server.js",
})
