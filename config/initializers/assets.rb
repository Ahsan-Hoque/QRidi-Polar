# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
# OAUTH2C_CLIENT = OAuth2::Client.new(
#     authz_url:     "https://flow.polar.com/oauth2/authorization",
#     client_id:     "6ce77c5f-35ba-4c31-8caa-db4f266d3aa7",
#     client_secret: "f30f68e7-802f-4bb9-95f4-2cc66edfcf14",
#     redirect_uri:  "http://127.0.0.1:3000/"
#     )