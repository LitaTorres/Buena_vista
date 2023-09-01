json.extract! state, :id, :available, :rent, :sale, :leased, :sold, :created_at, :updated_at
json.url state_url(state, format: :json)
