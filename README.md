# GooglePlacesApi

Super simple Google Places API client.

## Usage

    client = GooglePlacesApi::Client.new(key: API_KEY)
    response = client.get('textsearch', query: 'something')
    ref = response.body.results.first.reference
    client.get('details', reference: ref).body.result.name
    client.get('nearbysearch', name: 'optional', language: 'nl', keywords: 'optional', location: "#{lat},#{lng}", radius: 100)

## Contributing

1. Fork it ( http://github.com/<my-github-username>/google_places_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
