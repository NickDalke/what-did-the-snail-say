class CommentsController < ApplicationController

	before_action :set_comment, only: [:show, :edit, :update, :destroy]

	def index
		@comments = Comment.all
	end

	def show
	end

	def new
		@comment = Comment.new
	end

	def edit
	end

	def create
		@snail = Snail.find(params[:snail_id])
		@comment = @snail.comments.create(comment_params)

		respond_to do |format|
			if @comment.save
		        format.html { redirect_to snail_path(@snail), notice: 'Comment was successfully created.' }
		        format.json { render :show, status: :created, location: @snail_path }
		    else
		        format.html { render :new }
		        format.json { render json: @comment.errors, status: :unprocessable_entity }
		   	end
		end 
	end

	def update
		respond_to do |format| 
			if @comment.save
		        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
		        format.json { render :show, status: :created, location: @comment }
		    else
		        format.html { render :new }
		        format.json { render json: @comment.errors, status: :unprocessable_entity }
		    end
		end
	end

	def destroy
		@comment.destroy
		respond_to do |format|
      		format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      		format.json { head :no_content }
    	end
    end

    private
	def set_comment
		@comment = Comment.find(params[:id])
	end 

	def comment_params
  		params.require(:comment).permit(:commenter, :body, :post_id)
	end
	
end
