require 'open-uri'
require 'nokogiri'

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
    if valid?(@post.url)
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
      redirect_to posts_path, alert: 'Invalid email or password'
      else
      @post.user = current_user
    end
    if @post.save
      redirect_to post_path(@post), notice: "Article publié !"
    else
      redirect_to posts_path, status: :unprocessable_entity
    end
  end


  private

  def post_params
    params.require(:post).permit(:url, :title, :content, :photo)
  end

  def valid?(el)
    el.match(/https:\/\/www.socialter.fr\//)
  end
end
