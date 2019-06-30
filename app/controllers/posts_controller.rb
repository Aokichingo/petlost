class PostsController < ApplicationController
    def index
     @posts = Post.all.order(created_at:'desc')
    end
    
    def new
     @post = Post.new
    end
    
    def create
    #render plain:params[:post].inspect
    @post = Post.new(post_params)
    if @post.save
     flash[:notice]="投稿しました"
       redirect_to "/"
    else
    render 'new'
    end
    end
    
    def show
    @post = Post.find(params[:id])
    end
    
    def edit
    @post = Post.find(params[:id])
    end
    
    def update
     @post = Post.find(:params[:id])
    if @post.update(post_params)
      flash[:notice]="編集しました"
       redirect_to "/"
    else
    render 'edit'
    end
    end
    
    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to "/"
    end
    
 private
    def post_params
     params.require(:post).permit(:title, :body)
    end
end
