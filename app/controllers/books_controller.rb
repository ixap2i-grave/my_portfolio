class BooksController < ApplicationController
    def index
        @books = Book.all.order(id: :desc)
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to books_path
        else
            render :new
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to books_path
    end

    private

    def book_params
        params.permit(:title, :description, :isbn, :category_id)
    end
end
