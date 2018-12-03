json.extract! user, :id, :group_id, :name, :profile, :created_at, :updated_at
json.url user_url(user, format: :json)
