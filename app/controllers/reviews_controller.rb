class ReviewsController < ApplicationController

    
    def show
        @article = Article.find(params[:article_id])
        @starave = Review.average(:restars)
    end
    
    def create
       @article = Article.find(params[:article_id])
       @review = @article.reviews.create(review_params)
       redirect_to article_path(@article)
     end

    def destroy
        @article = Article.find(params[:article_id])
        @review = @article.reviews.find(params[:id])
        @review.destroy
        redirect_to article_path(@article)
    end
    
     private
     #カラム追加した後ここの許可を忘れるとストロングパラメータに引っかかってDBに保存できない
       def review_params
         params.require(:review).permit(:commenter, :body, :restars)
       end
end
