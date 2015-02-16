require 'faker'
 
posts = Post.all

unique_title = "I think this is unique title :)"

unique_post_body = "Unique post body is here :)"

if (posts.select {|post| post.title == unique_title}).empty?
  if (posts.select {|post| post.body == unique_post_body}).empty?
    Post.create!(
      title:  unique_title,
      body:   unique_body
    )
  end
end


unique_body = "I think this is unique comment body"

unique_comment = true;
posts.each do |post|
  if !(post.comments.select {|comment| comment.body == unique_body}).empty?
    unique_comment = false;
  end
end

if unique_comment
  Comment.create!(
     post: posts.sample,
     body: unique_body
  )

end
 
 
 puts "Seed finished"
 puts "There are #{Post.count} posts"
 puts "There are #{Comment.count} comments"