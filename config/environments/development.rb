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

  config.paperclip_defaults = {
  :storage => :s3,
  :s3_host_name => "s3-eu-west-1.amazonaws.com",
  :s3_credentials => {
  :bucket => ENV["paperclipdemodevelopment"],
  :access_key_id => ENV["AKIAIRC7VNAH7ZGHUX2A"],
  :secret_access_key => ENV["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"]
 }
end