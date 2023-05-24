class BooksController < ApplicationController
  def new
    @list = List.new
  end

  def index
    @list = List.all
  end

  def create
    list = List.new(book_params)
    list.save
    redirect_to book_path(list.id)
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:list).permit(:title, :body)
  end
end
