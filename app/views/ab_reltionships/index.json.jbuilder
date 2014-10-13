json.array!(@ab_reltionships) do |ab_reltionship|
  json.extract! ab_reltionship, :id, :abmaster_id, :relatedto_id, :relationtype
  json.url ab_reltionship_url(ab_reltionship, format: :json)
end
