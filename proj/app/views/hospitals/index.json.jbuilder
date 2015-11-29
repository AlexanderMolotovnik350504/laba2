json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :name
  json.url hospital_url(hospital, format: :json)
end
