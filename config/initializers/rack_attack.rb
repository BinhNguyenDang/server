class Rack::Attack
    throttle("request by ip", limit: 5, period: 5.minutes) do |request|
        request.ip
    end
end

Rails.application.config.middleware.use Rack::Attack