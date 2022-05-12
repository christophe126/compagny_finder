# require "open-uri"
require "uri"
require "net/http"

class CallApiCompany
  def initialize(departement, per_page)
    @dep = departement
    @per_page = per_page
  end

  def search
    # path = "https://entreprise.data.gouv.fr/api/sirene/v1/full_text/*?"
    # options = "departement=#{@dep}"
    # nb_page = "&page=2"
    # per_page = "&per_pages=#{@per_page}"
    # @url = "#{path}#{options}#{nb_page}#{per_page}"
    # raise
    # user_serialized = URI.open(@url).read
    # JSON.parse(user_serialized)

    url = URI("https://api.insee.fr/entreprises/sirene/V3/siren")

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["Authorization"] = ENV['APIAUTHORIZATION']
    request["Cookie"] = ENV['APICOOKIE']

    response = https.request(request)
    @res = response.read_body
  end
end
