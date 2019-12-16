class DispatcherController < Gruf::Controllers::Base
  bind ::Demo::Dispatcher::Service

  def ping
    # request.message.id
    Demo::PingResp.new(
      pong: Demo::Pong.new(
        msg: "pong on #{request.message.ping.msg}"
      )
    )
  rescue
    fail!(:not_found, :pong_not_found, "Failed during pong: #{request.message.id}")
  end
end
