# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( app.css )
Rails.application.config.assets.precompile += %w( responsive-slider-parallax.css )
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( jquery.event.move.js )
Rails.application.config.assets.precompile += %w( responsive-slider.js )

Rails.application.config.assets.precompile += %w( datepicker3.css )

Rails.application.config.assets.precompile += %w( bootstrap-material-datetimepicker.css )
Rails.application.config.assets.precompile += %w( bootstrap-material-datetimepicker.js )

Rails.application.config.assets.precompile += %w( es.js )

Rails.application.config.assets.precompile += %w( material.min.js )
Rails.application.config.assets.precompile += %w( moment-with-locales.min.js )

Rails.application.config.assets.precompile += %w( card.js )

Rails.application.config.assets.precompile += %w( font-awesome.min.css )

Rails.application.config.assets.precompile += %w( log-in.css )
Rails.application.config.assets.precompile += %w( login-theme.css )
Rails.application.config.assets.precompile += %w( animate-custom.css )
Rails.application.config.assets.precompile += %w( placeholder-shim.min.js )
