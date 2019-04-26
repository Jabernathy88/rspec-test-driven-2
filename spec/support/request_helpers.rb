# methods to assist HTTP testing
module RequestHelpers
  def response_json
    JSON.parse(response.body)
  end
end 