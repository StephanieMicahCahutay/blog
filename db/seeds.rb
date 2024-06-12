20.times do |i|
    Post.create!(
      title: "Post #{i + 1}",
      body: "This is the body of post #{i + 1}.",
      author: "Author #{i + 1}",
      published_at: Time.now,
      status: %w[draft published].sample
    )
  end
  