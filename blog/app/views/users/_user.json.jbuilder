json.extract! user, :id, :email, :name, :last_name, :work_place, :mobile_phone, :created_at, :updated_at
json.url user_url(user, format: :json)
