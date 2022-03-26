require "open-uri"

class CallApiCompany

  def initialize(departement)
    @dep = departement
  end

  def search
    path = "https://entreprise.data.gouv.fr/api/sirene/v1/full_text/*?"
    options = "departement=#{@dep}"
    # nb_page = "&page=50"
    per_page = "&per_pages=100"
    @url = "#{path}#{options}#{per_page}"
    user_serialized = URI.open(@url).read
    JSON.parse(user_serialized)
  end
end
