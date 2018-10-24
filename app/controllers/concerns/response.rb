module Response
    def json_response(object, status = :ok)
        render json object, satatus: status
    end
end
