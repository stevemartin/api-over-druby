require 'drb/drb'

SERVER_URI="druby://localhost:8787"
DRb.start_service
@api_client = DRbObject.new_with_uri(SERVER_URI)
