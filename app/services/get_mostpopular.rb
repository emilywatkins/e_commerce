class MostPopular
  def self.get_mostpopular_list
    response = RestClient::Request.execute(method: :get, url: 'https://api.nytimes.com/svc/mostpopular/v2/mostviewed/Arts/7.json', headers: {api_key: '9c1c89726e334f95b1cc6554ea606237'})
  end
end
