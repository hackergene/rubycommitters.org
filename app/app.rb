class RubyCommitters < Padrino::Application
  register Padrino::Mailer
  register Padrino::Helpers

  Slim::Engine.set_default_options :pretty => true

  ##
  # Application configuration options
  #
  set :site_name, 'Ruby Committers'
  # set :raise_errors, true     # Show exceptions (default for development)
  # set :public, "foo/bar"      # Location for static assets (default root/public)
  # set :reload, false          # Reload application files (default in development)
  # set :default_builder, "foo" # Set a custom form builder (default 'StandardFormBuilder')
  # set :locale_path, "bar"     # Set path for I18n translations (defaults to app/locale/)
  # enable  :sessions           # Disabled by default
  # disable :flash              # Disables rack-flash (enabled by default if sessions)
  # layout  :my_layout          # Layout can be in views/layouts/foo.ext or views/foo.ext (default :application)
  #

  ##
  # You can configure for a specified environment like:
  #
  configure :production do
    use Rack::Cache do
      set :verbose, true
      set :metastore,   "file:cache/meta"
      set :entitystore, "file:cache/body"
    end
  end

  ##
  # You can manage errors like:
  #
  #   error 404 do
  #     render 'errors/404'
  #   end
  #
end
