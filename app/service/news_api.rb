require "httparty"

class NewsApi
  URI = ENV["NEWS_API_HOST"]

  def self.top_headlines(country: "us")
    data   = {
      country: country,
      apiKey: ENV["NEWS_API_KEY"]
    }

    request = HTTParty.get("#{URI}/top-headlines", query: data)
    response = JSON.parse(request.body)["articles"]
  end

  def self.everything(query:, sort_by: "publishedAt")
    data = {
        query: {
        q: query,
        sortBy: sort_by,
        apiKey: ENV["NEWS_API_KEY"]
      }
    }

    request = HTTParty.get("#{URI}/everything", data)
    response = JSON.parse(request.body)["articles"]
  end
end
