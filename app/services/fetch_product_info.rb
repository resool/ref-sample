class FetchProductInfo
  def initialize(product:)
    @ext_id = product.ext_id
  end

  def call
    {
      title: api_user_data[:title],
      avatar_url: api_user_data[:avatar_url],
      department: api_user_data[:department],
    } rescue { }
  end

  private

  def api_user_data
    {
      name: data.dig('data', 0, 'name'),
      avatar_url: data.dig('data', 0, AVATAR_LABEL),
      department: data.dig('data', 0, DEPARTMENT_LABEL),
      title: data.dig('data', 0, TITLE_LABEL)
    }.deep_symbolize_keys
  end

  def data
    @data ||= fetch_data
  end

  def fetch_data
    url = API_URL + ext_id
    uri = URI(url)

    response = Net::HTTP.get_response(uri)
    JSON(response.body)
  end

  API_URL = 'http://api.example.com/products?id='

  AVATAR_LABEL = 'media_avatar'
  DEPARTMENT_LABEL = 'department'
  TITLE_LABEL = 'title'

  attr_reader :ext_id
end
