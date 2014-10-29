OmniAuth.config.logger = Rails.logger

LINKEDIN_KEY    = "77vyha9uxg99kg"
LINKEDIN_SECRET = "VxOBbzOVvoSv528u"
FACEBOOK_APP_ID = "727919817262567"
FACEBOOK_SECRET = "ac2c97b995efb91f7592ccfe84109ac9"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, LINKEDIN_KEY, LINKEDIN_SECRET
  provider :facebook, FACEBOOK_APP_ID, FACEBOOK_SECRET
end

OmniAuth.config.on_failure do |env|
  new_path = "/auth/failure"
  Rack::Response.new(["302 Moved"], 302, 'Location' => new_path).finish
end
