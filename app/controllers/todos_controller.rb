class TodosController < ApplicationController
  load_and_authorize_resource
  respond_to :html, :json, :xml

  # GET /todos
  # GET /todos.json
  def index
    respond_with(@todos)
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
    respond_with(@todo)
  end

  # GET /todos/new
  # GET /todos/new.json
  def new
    respond_with(@todo)
  end

  # GET /todos/1/edit
  def edit
    respond_with(@todo)
  end

  # POST /todos
  # POST /todos.json
  def create
    respond_to do |format|
      if @todo.save
        format.html { redirect_to @todo, notice: 'Todo was successfully created.' }
        format.json { render json: @todo, status: :created, location: @todo }
      else
        format.html { render action: "new" }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /todos/1
  # PUT /todos/1.json
  def update
    respond_to do |format|
      if @todo.update_attributes(params[:todo])
        format.html { redirect_to @todo, notice: 'Todo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy
    @todo.destroy

    respond_to do |format|
      format.html { redirect_to todos_url }
      format.json { head :no_content }
    end
  end
end
