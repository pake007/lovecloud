class Admin::PostsController < Admin::BaseController
  def index
    respond_to do |format|
      format.html {
        @posts = Post.paginate(
          :order => "published_at DESC",
          :page  => params[:page]
        )
      }
    end
  end

  def create
    p '----------------create post--------------------'
    @post = Post.new(params[:post])
    if @post.save
      respond_to do |format|
        format.html {
          flash[:notice] = "Created post '#{@post.title}'"
          redirect_to(:action => 'show', :id => @post)
        }
      end
    else
      respond_to do |format|
        format.html { render :action => 'new', :status => :unprocessable_entity }
      end
    end
  end

  def new
    @post = Post.new
  end


end
