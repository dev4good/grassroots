passport = require 'passport'
googOID = require('passport-google').Strategy

passport.use new googOID
  returnURL: 'http://alpha.minn.so:3000/auth/google/return'
  , realm: 'http://alpha.minn.so:3000'
  , () -> console.log arguments

class App extends Tower.Application
  @configure ->
    @use "favicon", Tower.publicPath + "/favicon.png"
    @use "static",  Tower.publicPath, maxAge: Tower.publicCacheDuration
    @use "profiler" if Tower.env != "production"
    @use "logger"
    @use "query"
    @use "cookieParser", Tower.config.session.key
    @use "session", secret: Tower.config.session.secret, cookie: {domain: Tower.config.session.cookie.domain}
    @use "bodyParser", uploadDir: "./public/uploads"
    #@use "csrf"
    @use "methodOverride", "_method"
    @use passport.initialize()
    @use passport.session()
    @use Tower.Middleware.Agent
    @use Tower.Middleware.Location
    #if Tower.httpCredentials && Tower.branch != "development"
    #  @use "basicAuth", Tower.httpCredentials.username, Tower.httpCredentials.password

    @use Tower.Middleware.Router

module.exports = global.App = new App
