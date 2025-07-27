require "httparty"

class NewsApi
  include HTTParty
  base_uri ENV.fetch("NEWS_API_HOST")

  def self.top_headlines(country: "us", category: nil)
    options = {
      query: {
        country: country,
        apiKey: ENV.fetch("NEWS_API_KEY")
      }
    }
    options[:query][:category] = category if category

    get("/top-headlines", options)
  end

  def self.everything(query:, from: nil, to: nil, sort_by: "publishedAt")
    options = {
      query: {
        q: query,
        sortBy: sort_by,
        apiKey: ENV.fetch("NEWS_API_KEY")
      }
    }
    options[:query][:from] = from if from
    options[:query][:to] = to if to

    get("/everything", options)
  end
end
