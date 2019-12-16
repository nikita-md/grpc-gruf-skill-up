class RpcTriggersController < ApplicationController
  def ping
    result = Demo::Dispatcher::Stub.new('rpc:50051', :this_channel_is_insecure).then do |stub|
      stub.ping(
        Demo::PingReq.new(
          ping: Demo::Ping.new(
            msg: params[:msg]
          )
        )
      )
    end
    respond_to do |format|
      format.json { render json: { msg: result.pong.msg } }
    end
  end
end
