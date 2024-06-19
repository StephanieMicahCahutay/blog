module Api
    module V1
      class CommentsController < ApplicationController
        before_action :set_post
        before_action :set_comment, only: %i[show update destroy]
  
        api :GET, "/api/v1/posts/:post_id/comments", "Get a list of comments for a post"
        returns code: 200, desc: "Ok"
        returns code: 404, desc: "Not Found"
  
        def index
          @comments = @post.comments.page(params[:page]).per(10)
          render json: @comments
        end
  
        api :GET, "/api/v1/posts/:post_id/comments/:id", "Get a specific comment for a post"
        returns code: 200, desc: "Ok"
        returns code: 404, desc: "Not Found"
  
        def show
          render json: @comment
        end
  
        api :POST, "/api/v1/posts/:post_id/comments", "Create a new comment for a post"
        returns code: 201, desc: "Created"
        returns code: 422, desc: "Unprocessable Entity"
  
        def create
          @comment = @post.comments.build(comment_params)
          if @comment.save
            render json: @comment, status: :created
          else
            render json: @comment.errors, status: :unprocessable_entity
          end
        end
  
        api :PUT, "/api/v1/posts/:post_id/comments/:id", "Update a specific comment for a post"
        returns code: 200, desc: "Ok"
        returns code: 404, desc: "Not Found"
        returns code: 422, desc: "Unprocessable Entity"
  
        def update
          if @comment.update(comment_params)
            render json: @comment
          else
            render json: @comment.errors, status: :unprocessable_entity
          end
        end
  
        api :DELETE, "/api/v1/posts/:post_id/comments/:id", "Delete a specific comment for a post"
        returns code: 204, desc: "No Content"
        returns code: 404, desc: "Not Found"
  
        def destroy
          @comment.destroy
        end
  
        private
  
        def set_post
          @post = Post.find(params[:post_id])
        end
  
        def set_comment
          @comment = @post.comments.find(params[:id])
        end
  
        def comment_params
          params.require(:comment).permit(:content)
        end
      end
    end
  end
  