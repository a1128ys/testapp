class SayHelloController < ApplicationController
  def index
    @hellos = Hello.all
    @hello = @hellos[rand(@hellos.length)]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hellos }
    end
  end
end
