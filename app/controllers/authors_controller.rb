class AuthorsController < ApplicationController
    def show_all_article
        @author = Author.find(params[:author_id])
      end

    def show
        @author = Author.find(params[:id])
    end

    def edit
        @author = Author.find(params[:id])
    end

    def update
        @author = Author.find(params[:id])
    
        if @author.update(athor_params)
          redirect_to @author
        else
          render :edit, status: :unprocessable_entity
        end
      end

      private
    def athor_params
      params.require(:author).permit(:name, :age, :about)
    end
end
