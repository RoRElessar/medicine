json.array!(@records) do |record|
  json.extract! record, :id, :create
  json.url record_url(record, format: :json)
end
