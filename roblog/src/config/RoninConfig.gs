package config

uses ronin.*
uses ronin.config.*
uses ronin.console.AdminConsole
uses ronin.ws.RoninWebservicesFilter

uses db.roblog.User
uses controller.*

class RoninConfig extends DefaultRoninConfig {

  /* Set up your RoninConfig as you see fit */
  construct(m : ApplicationMode, an : RoninServlet) {
    super(m, an)
    DefaultController = controller.PostCx
    AuthManager = createDefaultAuthManager(
      \ username -> User.find(new User(){:Name = username})[0],
      \ identity, email, idProvider -> User.getOrCreateByOpenID(identity, email, idProvider),
      User#Name, User#Hash, User#Salt
    )
    LoginRedirect = AdminCx#login()
    AdminConsole.start({"admin"})
    Filters.add(initFilter(new RoninWebservicesFilter()))
  }

}