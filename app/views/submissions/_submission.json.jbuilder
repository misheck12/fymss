json.extract! submission, :id, :content, :grade, :project_id, :user_id, :created_at, :updated_at
json.url submission_url(submission, format: :json)
