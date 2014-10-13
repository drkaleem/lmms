json.array!(@ab_phones) do |ab_phone|
  json.extract! ab_phone, :id, :abmaster_id, :effectivedate, :phonetype, :phonenum, :preferred, :invalid
  json.url ab_phone_url(ab_phone, format: :json)
end
