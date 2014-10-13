json.array!(@ab_emails) do |ab_email|
  json.extract! ab_email, :id, :abmaster_id, :effectivedate, :emailtype, :emailid, :preferred, :invalid
  json.url ab_email_url(ab_email, format: :json)
end
