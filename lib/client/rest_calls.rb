API_URL = "https://sendbottles.com/api/v1/"
# API_URL = "https://mercyapp-staging.herokuapp.com/api/v1/"

class Bottle::Client

  def request()
  end

  def post(url_extension, params)
    connection = Faraday.new(url: API_URL) 
    response = connection.post(url_extension, params.merge({uid: self.uid, token: self.token}))
    attributes = JSON.parse(response.body)
    return Bottle::Message.new(attributes) if url_extension == 'messages'
    return Bottle::Conversation.new(attributes) if url_extension == 'conversations'
  end

end