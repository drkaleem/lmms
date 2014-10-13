json.array!(@ab_masters) do |ab_master|
  json.extract! ab_master, :id, :membercode, :salutation, :firstname, :middlename, :lastname, :addresstype, :dob, :group, :subgroup1, :subgroup2, :inactive, :status
  json.url ab_master_url(ab_master, format: :json)
end
