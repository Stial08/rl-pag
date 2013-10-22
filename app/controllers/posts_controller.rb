class PostsController < ApplicationController

  include ActionController::Live

  before_action :set_post, only: [:show,:edit,:update,]
  before_filter :set_post_for_events, only: :events
  # The method Edit is not necesary
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post
    @comments = @post.comments.build
  end

  def events 
    response.headers['Content-Type'] = 'text/event-stream'
    start = Time.zone.now
    @post.comments.uncached do
      @post.comments.where('created_at > ?', start).each do |message|
        response.stream.write "data: #{message.to_json} \n\n"
        start = message.created_at  
      end
    end
    sleep 2
  rescue IOError
    # Error
  ensure
    response.stream.close
  end

  def edit
    @post
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save!
      flash[:notice] = "Post has been saved"
      redirect_to @post 
    else
      flash[:error] = "Sorry, the post can't saved"
      render 'new'
    end
  end

  def update
    if @post.update_attributes(post_params)
      flash[:notice] = "Post has been updated"
      redirect_to @post 
    else
      flash[:error] = "Sorry, the pot can't be updated"
      render 'edit'
    end
  end

  private

  def post_params
    params.require(:post).permit(:name,:content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
  def set_post_for_events
    @post = Post.find(params[:post_id])
  end
end
