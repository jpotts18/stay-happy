class GoalsController < AuthenticatedController

  before_action :set_goal, only: [:show, :edit, :update, :destroy]
  before_action :set_goals, only: [:index]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy]

  # GET /goals
  def index
  end

  # GET /goals/1
  def show
  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  def create
    @goal = Goal.new(goal_params)
    @goal.user_id = current_user.id

    if @goal.save
      redirect_to @goal, notice: 'Goal was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /goals/1
  def update
    if @goal.update(goal_params)
      redirect_to @goal, notice: 'Goal was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /goals/1
  def destroy
    @goal.destroy
    redirect_to goals_url, notice: 'Goal was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = current_user.goals.find(params[:id])
    end

    def set_goals
      @goals = current_user.goals
    end

    # Only allow a trusted parameter "white list" through.
    def goal_params
      params.require(:goal).permit(:name, :type, :user_id, :end_date)
    end
end
