json.extract! issue, :id, :title, :description, :severity, :status, :created_at, :updated_at
json.url issue_url(issue, format: :json)
