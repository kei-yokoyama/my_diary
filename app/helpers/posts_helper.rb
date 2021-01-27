module PostsHelper
  def post_lists(posts)
    html = ''
    unless posts.nil?
      posts.each do |post|
        html += render(partial: 'post', locals: { post: post })
      end
      raw(html)
    end
  end
end
