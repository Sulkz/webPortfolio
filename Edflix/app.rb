require "sinatra"
require "sinatra/reloader"
require "require_all"

# So we can escape HTML special characters in the view
include ERB::Util

enable :sessions
set :session_secret, "az9gfSCQnpSWGDisfmSU7DVKemmTKdpKpJo65kq1ZV2FN3WZXYm4NNwxB0UIgpmN"

require_rel "controllers", "db/db", "models"