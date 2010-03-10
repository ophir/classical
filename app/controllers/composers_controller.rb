class ComposersController < ApplicationController
  # GET /composers
  # GET /composers.xml
  def index
    @composers = Composer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @composers }
    end
  end

  # GET /composers/1
  # GET /composers/1.xml
  def show
    @composer = Composer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @composer }
    end
  end

  # GET /composers/new
  # GET /composers/new.xml
  def new
    @composer = Composer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @composer }
    end
  end

  # GET /composers/1/edit
  def edit
    @composer = Composer.find(params[:id])
  end

  # POST /composers
  # POST /composers.xml
  def create
    @composer = Composer.new(params[:composer])

    respond_to do |format|
      if @composer.save
        flash[:notice] = 'Composer was successfully created.'
        format.html { redirect_to(@composer) }
        format.xml  { render :xml => @composer, :status => :created, :location => @composer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @composer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /composers/1
  # PUT /composers/1.xml
  def update
    @composer = Composer.find(params[:id])

    respond_to do |format|
      if @composer.update_attributes(params[:composer])
        flash[:notice] = 'Composer was successfully updated.'
        format.html { redirect_to(@composer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @composer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /composers/1
  # DELETE /composers/1.xml
  def destroy
    @composer = Composer.find(params[:id])
    @composer.destroy

    respond_to do |format|
      format.html { redirect_to(composers_url) }
      format.xml  { head :ok }
    end
  end
end
