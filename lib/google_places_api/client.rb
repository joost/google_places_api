module GooglePlacesApi
  class Client

    def initialize(options)
      @key = options[:key]
      @sensor = options[:sensor] || false
    end

    API_URL = "https://maps.googleapis.com/maps/api/place/"

    def connection
      @connection ||= Faraday.new(url: API_URL, params: {key: @key, sensor: @sensor}) do |conn|
        conn.adapter    Faraday.default_adapter
        conn.response   :mashify
        conn.response   :json
      end
    end

    # Usage:
    #   get('some_path', params: 'if you need')
    def get(path, params = {})
      connection.get("#{path}/json", params)
    rescue Faraday::ParsingError
      nil
    end
  end
end