json.extract! report, :id, :name, :result, :created_at, :updated_at
json.url report_url(report, format: :json)
