class VotesController < ApplicationController
  before_filter :to_login
  # GET /votes
  # GET /votes.json
  def index
    # @votes = Vote.all

    @votes = Vote.where(:user_id=>params['user_id'])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @votes }
    end
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
    @vote = Vote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vote }
    end
  end

  # GET /votes/new
  # GET /votes/new.json
  def new
    @user = User.find(params[:user_id])
    @vote = @user.votes.new
    @teams = Team.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vote }
    end
  end

  # GET /votes/1/edit
  def edit
    @vote = Vote.find(params[:id])
  end

  # POST /votes
  # POST /votes.json
  def create
    @user = User.find(params[:user_id])
    # @vote = Vote.new(vote_params)
    params[:vote].each do |id, attr|
      data = Vote.where(:user_id=>current_user.id,:team_id=>id).first
      @vote = data ? data : Vote.new
      @vote.team_id = id.to_i
      @vote.user_id = current_user.id
      @vote.sata= attr['sata'].to_i
      @vote.save
    end

    respond_to do |format|
      if @vote.save
        format.html { redirect_to user_votes_path(@user) }
        format.json { render json: @vote, status: :created, location: @vote }
      else
        format.html { render action: "new" }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    @vote = Vote.find(params[:id])

    respond_to do |format|
      if @vote.update_attributes(vote_params)
        format.html { redirect_to @vote, notice: 'Vote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy

    respond_to do |format|
      format.html { redirect_to votes_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example: params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def vote_params
      params.require(:vote).permit(:user_id, :team_id, :sata)
    end
end
