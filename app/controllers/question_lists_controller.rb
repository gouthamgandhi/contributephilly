class QuestionListsController < ApplicationController
  layout "admin"
  # GET /question_lists
  # GET /question_lists.json
  def index
    @question_lists = QuestionList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @question_lists }
    end
  end

  # GET /question_lists/1
  # GET /question_lists/1.json
  def show
    @question_list = QuestionList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question_list }
    end
  end

  # GET /question_lists/new
  # GET /question_lists/new.json
  def new
    @question_list = QuestionList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @question_list }
    end
  end

  # GET /question_lists/1/edit
  def edit
    @question_list = QuestionList.find(params[:id])
  end

  # POST /question_lists
  # POST /question_lists.json
  def create
    @question_list = QuestionList.new(params[:question_list])

    respond_to do |format|
      if @question_list.save
        format.html { redirect_to @question_list, notice: 'Question list was successfully created.' }
        format.json { render json: @question_list, status: :created, location: @question_list }
      else
        format.html { render action: "new" }
        format.json { render json: @question_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /question_lists/1
  # PUT /question_lists/1.json
  def update
    @question_list = QuestionList.find(params[:id])

    respond_to do |format|
      if @question_list.update_attributes(params[:question_list])
        format.html { redirect_to @question_list, notice: 'Question list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @question_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_lists/1
  # DELETE /question_lists/1.json
  def destroy
    @question_list = QuestionList.find(params[:id])
    @question_list.destroy

    respond_to do |format|
      format.html { redirect_to question_lists_url }
      format.json { head :no_content }
    end
  end
end
