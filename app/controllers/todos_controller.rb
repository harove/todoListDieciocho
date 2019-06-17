class TodosController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @todos = Todo.all
  end

  def show
  end
end
