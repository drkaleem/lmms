json.array!(@ab_details) do |ab_detail|
  json.extract! ab_detail, :id, :abmaster_id, :effectivedate, :addressline1, :addressline2, :addressline3, :city, :state, :zipcode, :country, :invalid
  json.url ab_detail_url(ab_detail, format: :json)
end
