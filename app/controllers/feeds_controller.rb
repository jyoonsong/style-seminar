class FeedsController < ApplicationController
  def index
    @feeds = Feed.all
    render 'index'
  end

  def new
    render 'new'
  end

  def create
    title = params[:title]
    content = params[:content]

    feed = Feed.new
    feed.title = title
    feed.content = content
    feed.save

    redirect_to action: 'index'
  end

  def destroy
    feed_id = params[:id]
    Feed.destroy(feed_id)

    redirect_to action: 'index'
  end

  def create_comment
    feed_id = params[:id]
    content = params[:content]

    feed = Feed.find(feed_id)
    new_comment = feed.feed_comments.new
    new_comment.content = content
    new_comment.save
=begin
동일한 일을 하는 코드
    new_comment = FeedComment.new
    new_comment.feed_id = feed_id
    new_comment.content = content
    new_comment.save
=end

    redirect_to action: 'index'
  end

  def destroy_comment

  end
end
