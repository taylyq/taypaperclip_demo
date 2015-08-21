Rails.application.configure do
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  config.active_record.migration_error = :page_loadys 
  # number of complex assets.
  config.assets.debug = true
  config.assets.raise_runtime_errors = true

  Paperclip::Attachment.default_options.merge!(
  :storage => :fog,
  :fog_credentials => {
    :provider => 'AWS',
    :aws_access_key_id => ENV['AWS_ACCESS_KEY_ID'],
    :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
  },
  :fog_directory => ENV['AWS_BUCKET'],
  :bucket => ENV['AWS_BUCKET']
)
end