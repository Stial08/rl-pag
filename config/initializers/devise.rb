# Use this hook to configure devise mailer, warden hooks and so forth.
Devise.setup do |config|
  # The secret key used by Devise. Devise uses this key to generate
  # random tokens. Changing this key will render invalid all existing
  # confirmation, reset password and unlock tokens in the database.
  config.secret_key = 'bd401584f236b76c1e4cb50b6b39a97d7803230e771401f471809e027d0687fb2f57a40e10d94bd6003f17f1fdd4437482ec365488f551f40e6f93945feca124'
  # ==> Mailer Configuration
  # note that it will be overwritten if you use your own mailer class
  # with default "from" parameter.
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  # Configure the class responsible to send e-mails.
  # ==> ORM configuration
  # :mongoid (bson_ext recommended) by default. Other ORMs may be
  # available as additional gems.
  require 'devise/orm/active_record'
  # ==> Configuration for any authentication mechanism
  # just :email. You can configure it to use [:username, :subdomain], so for
  # authenticating a user, both parameters are required. Remember that those
  # parameters are used only when authenticating and not when retrieving from
  # session. If you need permissions, you should implement that in a before filter.
  # You can also supply a hash where the value is a boolean determining whether
  # or not authentication should be aborted when the value is not present.
  # config.authentication_keys = [ :email ]
  # Configure parameters from the request object used for authentication. Each entry
  # find_for_authentication method and considered in your model lookup. For instance,
  # if you set :request_keys to [:subdomain], :subdomain will be used on authentication.
  # The same considerations mentioned for authentication_keys also apply to request_keys.
  # config.request_keys = []
  # Configure which authentication keys should be case-insensitive.
  # to authenticate or find a user. Default is :email.
  config.case_insensitive_keys = [ :email ]
  # Configure which authentication keys should have whitespace stripped.
  # modifying a user and when used to authenticate or find a user. Default is :email.
  config.strip_whitespace_keys = [ :email ]
  # Tell if authentication through request.params is enabled. True by default.
  # given strategies, for example, `config.params_authenticatable = [:database]` will
  # enable it only for database (email + password) authentication.
  # config.params_authenticatable = true
  # Tell if authentication through HTTP Auth is enabled. False by default.
  # given strategies, for example, `config.http_authenticatable = [:token]` will
  # enable it only for token authentication. The supported strategies are:
  # :database      = Support basic authentication with authentication key + password
  # :token         = Support basic authentication with token authentication key
  # :token_options = Support token authentication with options as defined in
  #                  http://api.rubyonrails.org/classes/ActionController/HttpAuthentication/Token.html
  # config.http_authenticatable = false
  # If http headers should be returned for AJAX requests. True by default.
  # The realm used in Http Basic Authentication. 'Application' by default.
  # It will change confirmation, password recovery and other workflows
  # Does not affect registerable.
  # config.paranoid = true
  # By default Devise will store the user in session. You can skip storage for
  # Notice that if you are skipping storage for all authentication paths, you
  # may want to disable generating routes to Devise's sessions controller by
  # passing :skip => :sessions to `devise_for` in your config/routes.rb
  config.skip_session_storage = [:http_auth]
  # By default, Devise cleans up the CSRF token on authentication to
  # requests for sign in and sign up, you need to get a new CSRF token
  # from the server. You can disable this option at your own risk.
  # config.clean_up_csrf_token_on_authentication = true
  # ==> Configuration for :database_authenticatable
  # using other encryptors, it sets how many times you want the password re-encrypted.
  #
  # Limiting the stretches to just one in testing will increase the performance of
  # your test suite dramatically. However, it is STRONGLY RECOMMENDED to not use
  # a value less than 10 in other environments.
  config.stretches = Rails.env.test? ? 1 : 10
  # Setup a pepper to generate the encrypted password.
  # ==> Configuration for :confirmable
  # confirming his account. For instance, if set to 2.days, the user will be
  # able to access the website for two days without confirming his account,
  # access will be blocked just in the third day. Default is 0.days, meaning
  # the user cannot access the website without confirming his account.
  # config.allow_unconfirmed_access_for = 2.days
  # A period that the user is allowed to confirm their account before their
  # their account within 3 days after the mail was sent, but on the fourth day
  # their account can't be confirmed with the token any more.
  # Default is nil, meaning there is no restriction on how long a user can take
  # before confirming their account.
  # config.confirm_within = 3.days
  # If true, requires any email changes to be confirmed (exactly the same way as
  # db field (see migrations). Until confirmed new email is stored in
  # unconfirmed email column, and copied to email column on successful confirmation.
  config.reconfirmable = true
  # Defines which key will be used when confirming an account
  # ==> Configuration for :rememberable
  # config.remember_for = 2.weeks
  # If true, extends the user's remember period when remembered via cookie.
  # Options to be passed to the created cookie. For instance, you can set
  # config.rememberable_options = {}
  # ==> Configuration for :validatable
  config.password_length = 8..128
  # Email regex used to validate email formats. It simply asserts that
  # to give user feedback and not to assert the e-mail validity.
  # config.email_regexp = /\A[^@]+@[^@]+\z/
  # ==> Configuration for :timeoutable
  # time the user will be asked for credentials again. Default is 30 minutes.
  # config.timeout_in = 30.minutes
  # If true, expires auth token on session timeout.
  # ==> Configuration for :lockable
  # :failed_attempts = Locks an account after a number of failed attempts to sign in.
  # :none            = No lock strategy. You should handle locking by yourself.
  # config.lock_strategy = :failed_attempts
  # Defines which key will be used when locking and unlocking an account
  # Defines which strategy will be used to unlock an account.
  # :time  = Re-enables login after a certain amount of time (see :unlock_in below)
  # :both  = Enables both strategies
  # :none  = No unlock strategy. You should handle unlocking by yourself.
  # config.unlock_strategy = :both
  # Number of authentication tries before locking an account if lock_strategy
  # config.maximum_attempts = 20
  # Time interval to unlock the account if :time is enabled as unlock_strategy.
  # ==> Configuration for :recoverable
  # Defines which key will be used when recovering the password for an account
  # config.reset_password_keys = [ :email ]
  # Time interval you can reset your password with a reset password key.
  # change their passwords.
  config.reset_password_within = 6.hours
  # ==> Configuration for :encryptable
  # :sha1, :sha512 or encryptors from others authentication tools as :clearance_sha1,
  # :authlogic_sha512 (then you should set stretches above to 20 for default behavior)
  # and :restful_authentication_sha1 (then you should set stretches to 10, and copy
  # REST_AUTH_SITE_KEY to pepper).
  #
  # Require the `devise-encryptable` gem when using anything other than bcrypt
  # config.encryptor = :sha512
  # ==> Configuration for :token_authenticatable
  # config.token_authentication_key = :auth_token
  # ==> Scopes configuration
  # "users/sessions/new". It's turned off by default because it's slower if you
  # are using only default views.
  # config.scoped_views = false
  # Configure the default scope given to Warden. By default it's the first
  # config.default_scope = :user
  # Set this configuration to false if you want /users/sign_out to sign out
  # config.sign_out_all_scopes = true
  # ==> Navigation configuration
  # :html, should redirect to the sign in page when the user does not have
  # access, but formats like :xml or :json, should return 401.
  #
  # If you have any extra navigational formats, like :iphone or :mobile, you
  # should add them to the navigational formats lists.
  #
  # The "*/*" below is required to match Internet Explorer requests.
  # config.navigational_formats = ['*/*', :html]
  # The default HTTP method used to sign out a resource. Default is :delete.
  config.sign_out_via = :delete
  # Add a new OmniAuth provider. Check the wiki for more information on setting
  # config.omniauth :github, 'APP_ID', 'APP_SECRET', :scope => 'user,public_repo'
  # ==> Warden configuration
  # change the failure app, you can configure them inside the config.warden block.
  #
  # config.warden do |manager|
  #   manager.intercept_401 = false
  #   manager.default_strategies(:scope => :user).unshift :some_external_strategy
  # end
  # ==> Mountable engine configurations
  # is mountable, there are some extra configurations to be taken into account.
  # The following options are available, assuming the engine is mounted as:
  #
  #     mount MyEngine, at: '/my_engine'
  #
  # The router that invoked `devise_for`, in the example above, would be:
  # config.router_name = :my_engine
  #
  # When using omniauth, Devise cannot automatically set Omniauth path,
  # so you need to do it manually. For the users scope, it would be:
  # config.omniauth_path_prefix = '/my_engine/users/auth'
end
