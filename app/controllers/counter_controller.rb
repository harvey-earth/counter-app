class CounterController < ApplicationController
  def index
    # Get this server, or create a new one in database
    server = Server.find_or_create_by(name: SERVER_HOSTNAME)
    save_time(server)

    # Get all servers to show
    @servers = Server.all.order(id: :desc)
    # Get current server to pass
    @host = SERVER_HOSTNAME
  end

  private

  def save_time(server)
    visit_time = Visit.create(server_id: server.id, timestamp: Time.now.utc, requestip: request.remote_ip)
    visit_time.save!
  end
end
