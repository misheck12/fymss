json.extract! assignee, :id, :name, :email, :password_digest, :created_at, :updated_at
json.url assignee_url(assignee, format: :json)
