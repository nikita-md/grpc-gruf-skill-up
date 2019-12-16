require 'gruf'
require_relative '../../app/rpc/protos/dispatcher_services_pb'

Gruf.configure do |c|
  c.server_binding_url = '0.0.0.0:50051'
  c.backtrace_on_error = !Rails.env.production?
  c.use_exception_message = !Rails.env.production?
  c.interceptors.use(Gruf::Interceptors::Instrumentation::RequestLogging::Interceptor, formatter: :logstash)
end
