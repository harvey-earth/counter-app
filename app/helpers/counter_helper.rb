module CounterHelper
  def format_hostname(server)
    server.name
  end

  def format_timestamp(server)
    Visit.where(server_id: server.id).order(timestamp: :desc).first.timestamp
  end

  def format_visits(server)
    server.visits_count
  end
end
