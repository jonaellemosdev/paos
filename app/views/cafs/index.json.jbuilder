json.array!(@cafs) do |caf|
  json.extract! caf, :id, :usuario, :senha
  json.url caf_url(caf, format: :json)
end
