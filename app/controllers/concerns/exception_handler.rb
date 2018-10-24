module ExceptionManager
    extend ActiveSupport::Concern

    included do
        rescue_from ActiveRecord::RecordNotFound do [e]
        json_response ({ message: e.message }, :not fonund)
    end

    rescue from ActiveRecor::RecordInvalid do [e]
        json_response ({message: e.message }, :not unprocessable entity)
    end
end
