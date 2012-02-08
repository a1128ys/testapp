class HellosController < ApplicationController
  # GET /hellos
  # GET /hellos.json
  def index
    @hellos = Hello.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hellos }
    end
  end

  # GET /hellos/1
  # GET /hellos/1.json
  def show
    @hello = Hello.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hello }
    end
  end

  # GET /hellos/new
  # GET /hellos/new.json
  def new
    @hello = Hello.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hello }
    end
  end

  # GET /hellos/1/edit
  def edit
    @hello = Hello.find(params[:id])
  end

  # POST /hellos
  # POST /hellos.json
  def create
    @hello = Hello.new(params[:hello])

    respond_to do |format|
      if @hello.save
        format.html { redirect_to @hello, notice: 'Hello was successfully created.' }
        format.json { render json: @hello, status: :created, location: @hello }
      else
        format.html { render action: "new" }
        format.json { render json: @hello.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hellos/1
  # PUT /hellos/1.json
  def update
    @hello = Hello.find(params[:id])

    respond_to do |format|
      if @hello.update_attributes(params[:hello])
        format.html { redirect_to @hello, notice: 'Hello was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hello.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hellos/1
  # DELETE /hellos/1.json
  def destroy
    @hello = Hello.find(params[:id])
    @hello.destroy

    respond_to do |format|
      format.html { redirect_to hellos_url }
      format.json { head :no_content }
    end
  end
end
