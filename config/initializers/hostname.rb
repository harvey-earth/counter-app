# config/initializers/hostname.rb
# Sets hostname
SERVER_HOSTNAME = Socket.gethostname

HOSTNAME_FORMAT = /([a-zA-Z]+-\d)/
