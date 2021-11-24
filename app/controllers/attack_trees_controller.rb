class AttackTreesController < ApplicationController
  before_action :set_attack_tree, only: %i[ show edit update destroy ]
  if Rails.env.production?
    before_action :authenticate, only: %i[ edit update destroy ]
  end



  # GET /attack_trees or /attack_trees.json
  def index
    @attack_trees = AttackTree.all
  end

  # GET /attack_trees/1 or /attack_trees/1.json
  def show
  end

  # GET /attack_trees/new
  def new
    @attack_tree = AttackTree.new
  end

  # GET /attack_trees/1/edit
  def edit
  end

  # POST /attack_trees or /attack_trees.json
  def create
    @attack_tree = AttackTree.new(attack_tree_params)

    respond_to do |format|
      if @attack_tree.save
        format.html { redirect_to @attack_tree, notice: "Attack tree was successfully created." }
        format.json { render :show, status: :created, location: @attack_tree }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attack_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attack_trees/1 or /attack_trees/1.json
  def update
    respond_to do |format|
      if @attack_tree.update(attack_tree_params)
        format.html { redirect_to @attack_tree, notice: "Attack tree was successfully updated." }
        format.json { render :show, status: :ok, location: @attack_tree }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attack_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attack_trees/1 or /attack_trees/1.json
  def destroy
    @attack_tree.destroy
    respond_to do |format|
      format.html { redirect_to attack_trees_url, notice: "Attack tree was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attack_tree
      @attack_tree = AttackTree.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attack_tree_params
      params.require(:attack_tree).permit(:content)
    end

    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV['SYCAMORE_USERNAME'] && password == ENV['SYCAMORE_PASSWORD']
      end
    end

end
