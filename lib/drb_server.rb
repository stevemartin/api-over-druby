require 'drb/drb'
require 'api_endpoint'

# The URI for the server to connect to
URI="druby://localhost:8787"

FRONT_OBJECT=ApiEndpoint.new
#
# $SAFE = 1   # disable eval() and friends
#
DRb.start_service(URI, FRONT_OBJECT)

# Wait for the drb server thread to finish before exiting.
DRb.thread.join
