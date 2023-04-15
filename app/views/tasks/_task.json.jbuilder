json.extract! task, :id, :title, :description, :deadline, :assignee_id, :project_id, :created_at, :updated_at
json.url task_url(task, format: :json)
