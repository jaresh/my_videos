json.array!(@filmies) do |filmy|
  json.extract! filmy, :id, :nazwa, :gatunek, :rok
  json.url filmy_url(filmy, format: :json)
end
