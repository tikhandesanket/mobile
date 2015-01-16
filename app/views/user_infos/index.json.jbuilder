json.array!(@user_infos) do |user_info|
  json.extract! user_info, :id, :name, :e_mail, :company_name, :position, :education, :mark
  json.url user_info_url(user_info, format: :json)
end
