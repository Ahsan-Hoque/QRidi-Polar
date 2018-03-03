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
OAUTH2C_CLIENT = OAuth2c::Client.new(
    authz_url:     "https://flow.polar.com/oauth2/authorization",
    token_url:     "https://polarremote.com/v2/oauth2/token",
    client_id:     "6ce77c5f-35ba-4c31-8caa-db4f266d3aa7",
    # client_id:     "fa1b23a7-55a2-4c28-b053-7c407b49e38e",
    client_secret: "f30f68e7-802f-4bb9-95f4-2cc66edfcf14",
    # client_secret: "84b86ea4-f375-4f3b-8ec8-3acb6dcf20f1",
    redirect_uri:  "http://127.0.0.1:3000/"
    )