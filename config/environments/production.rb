PaperclipDemo::Application.configure do
  config.cache_classes = true
  config.eager_load = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  # Disable Rails's static asset server (Apache or nginx will already do this).
  config.serve_static_assets = false

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # Generate digests for assets URLs.
  config.assets.digest = true

  # Version of your assets, change this if you want to expire all your assets.
  config.assets.version = '1.0'

  #
  config.log_level = :info

  
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Disable automatic flushing of the log to improve performance.
  # config.autoflush_log = false

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Amazon S3 settings for Paperclip uploads
  config.paperclip_defaults = {
  :storage => :s3,
  :s3_host_name => "s3-eu-west-1.amazonaws.com",
  :s3_credentials => {
  :bucket => 'AWS_BUCKET',
  :access_key_id => 'AWS_ACCESS_KEY_ID',
  :secret_access_key => 'AWS_SECRET_ACCESS_KEY'
 }
}
end
