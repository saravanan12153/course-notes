class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :create, :destroy]
  before_action :set_subreddit_options, only: [:index, :new, :edit, :update, :create]

  # GET /links
  # GET /links.json
  def index
    if params[:subreddit_id]
      @subreddit = Subreddit.where(:name => params[:subreddit_id]).first
      @links = @subreddit.links.order("vote_total DESC")
    else
      @links = Link.order("vote_total DESC")
    end

    @link = Link.new
  end

  # GET /links/1
  # GET /links/1.json
  def show
    @comment = Comment.new
  end

  # GET /links/new
  def new
    @link = Link.new
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  # POST /links.json
  def create
    @link = Link.new(link_params)
    @link.user = current_user

    respond_to do |format|
      if @link.save
        format.html { redirect_to links_path, notice: 'Link was successfully created.' }
        format.json { render :show, status: :created, location: @link }
        format.js {}
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
        format.js {}
      end
    end
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: 'Link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def redirect
    @link = Link.find(params[:id])
    if current_user
      @link.vote(1, current_user)
    end
    redirect_to @link.url
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:url, :summary, :title, :subreddit_id)
    end

    def set_subreddit_options
      @subreddit_options = Subreddit.all.collect{ |subreddit| [subreddit.name, subreddit.id] }
    end

end
