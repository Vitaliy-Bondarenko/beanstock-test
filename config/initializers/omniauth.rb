OmniAuth.config.logger = Rails.logger

LINKEDIN_KEY    = "77d2whaoqxzts4"
LINKEDIN_SECRET = "aun1hzkn4gGQQAh1"


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, LINKEDIN_KEY, LINKEDIN_SECRET
end

OmniAuth.config.on_failure do |env|
    new_path = "/auth/failure"
    Rack::Response.new(["302 Moved"], 302, 'Location' => new_path).finish
end