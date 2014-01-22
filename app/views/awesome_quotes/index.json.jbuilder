json.array!(@awesome_quotes) do |awesome_quote|
  json.extract! awesome_quote, :id, :partaker_id, :quote
  json.url awesome_quote_url(awesome_quote, format: :json)
end
