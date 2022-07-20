class AuthorsController < ApplicationController
    def show_all_article
        @author = Author.find(params[:author_id])
      end
end
