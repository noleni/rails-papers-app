class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    html_doc = Nokogiri::HTML(URI.open(@post.url).read)
    html_doc.search(".entry-title").each do |element|
      @post.title = element.text.strip
    end
    html_doc.search(".entry-content").each do |element|
      @post.content = element.text.strip
    end
    html_doc.search(".entry-image img").each do |element|
      @post.photo.attach(
        io: URI.open(element.attribute("src").value),
        filename: 'anyname.jpg',
        content_type: 'image/jpg'
        )
    end
    @post.user = current_user
    if @post.save
      redirect_to post_path(@post), notice: "Article publié !"
    else
      redirect_to posts_path, status: :unprocessable_entity, notice: "url invalide"
    end
  end

  private

  def post_params
    params.require(:post).permit(:url, :title, :content, :photo)
  end

  def valid?(url)
    url.match(/https:\/\/www.socialter.fr\//)
  end
end
