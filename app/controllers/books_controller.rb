class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  # 投稿データの保存
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if@book.save
      redirect_to books_path
    else
      render :new
    end
  end
  
  def index
    @book = Book.all
  end
  
  def destroy
    @book = Book.find(params[:id]) 
    @book.destroy
    redirect_to books_path
  end

  def show
    @book = Book.find(params[:id]) 
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id]) 
    book.update(book_params)
    redirect_to book_path(@book.id)  
  end

 protected
 
 def book_params
    params.require(:book).permit(:title, :image, :body)
 end

end