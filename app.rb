require 'bundler'
Bundler.require

class PropertyCollection
  class << self
    def get_property(lat, lng)
      [
        {name: "24 Nelson Street, Gordon, NSW 2072", image: "http://i2.au.reastatic.net/355x265/7f0cac29cf9cbb8b80c81a1358b75bd92861adc613c57fb42ac850505bdd5c72/main.jpg"},
        {name: "50 Douglas Street, St Ives, NSW 2075", image: "http://i4.au.reastatic.net/355x265/f4dbe95e4f64131111dc79088f77e5ed595fffc154c82859d5470bec95dc7965/main.jpg"},
        {name: "34 Kubis Drive, Ringwood North, Vic 3134", image: "http://i3.au.reastatic.net/355x265/31b35b3cfac9e93e86ae6c5e2a4ec9fd79690ac314620ab76f33e68ad689e408/main.jpg"},
        {name: "1151 Rosebank Way, Hope Island, Qld 4212", image: "http://i2.au.reastatic.net/355x265/7f0cac29cf9cbb8b80c81a1358b75bd92861adc613c57fb42ac850505bdd5c72/main.jpg"},
        {name: "51 Surrey Street, Darlinghurst, NSW 2010", image: "http://i2.au.reastatic.net/355x265/68f97d5f2991b65077fe8edaa41268d7399b7d7f02d4bd752a7ad584bd27064b/main.jpg"}
      ].sample(1).first
    end
  end
end


get '/property' do
  content_type :json

  latitude = params[:latitude]
  longitude = params[:longitude]

  property = PropertyCollection.get_property(latitude, longitude)
  property.to_json
end

