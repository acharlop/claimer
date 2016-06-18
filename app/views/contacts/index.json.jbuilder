json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first, :last, :position_id, :company_id
  json.url contact_url(contact, format: :json)
end
