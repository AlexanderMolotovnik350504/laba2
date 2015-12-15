json.array!(@queu_es) do |queu_e|
  json.extract! queu_e, :id, :room_id, :date, :time
  json.url queu_e_url(queu_e, format: :json)
end
