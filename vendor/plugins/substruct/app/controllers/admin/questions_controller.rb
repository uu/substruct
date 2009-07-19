class Admin::QuestionsController < Admin::BaseController
  def index
    list
    render :action => 'list'
  end

  def list
    @title = t(:questions)
    @questions = Question.paginate(
      :order => '-rank DESC',
      :page => params[:page],
      :per_page => 30
    )
  end

  def show
    @title = t(:showing_question)
    @question = Question.find(params[:id])
  end

  def new
    @title = t(:create_new_question)
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      flash[:notice] = t(:question_was_succ_created)
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @title = t(:editing_question)
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(params[:question])
      flash[:notice] = t(:question_was_succ_updated)
      redirect_to :action => 'show', :id => @question
    else
      render :action => 'edit'
    end
  end

  def destroy
    Question.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
