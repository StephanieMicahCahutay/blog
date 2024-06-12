posts_data = [
  { title: "Exploring the Ruby Language", body: "An in-depth look at the features and capabilities of Ruby.", author: "Jane Doe", published_at: Time.now - 10.days, status: "published" },
  { title: "Understanding Rails MVC", body: "A comprehensive guide to the Model-View-Controller pattern in Rails.", author: "John Smith", published_at: Time.now - 9.days, status: "published" },
  { title: "Getting Started with ActiveRecord", body: "Learn how to use ActiveRecord to interact with your database.", author: "Alice Johnson", published_at: Time.now - 8.days, status: "draft" },
  { title: "Mastering Ruby on Rails", body: "Advanced techniques and best practices for Rails development.", author: "Bob Brown", published_at: Time.now - 7.days, status: "published" },
  { title: "Building RESTful APIs with Rails", body: "Step-by-step guide to creating RESTful APIs using Rails.", author: "Chris White", published_at: Time.now - 6.days, status: "draft" },
  { title: "Deploying Rails Applications", body: "Tips and tricks for deploying Rails applications in production.", author: "Dana Green", published_at: Time.now - 5.days, status: "published" },
  { title: "Testing Rails Applications", body: "A guide to testing your Rails applications with RSpec.", author: "Evan Black", published_at: Time.now - 4.days, status: "draft" },
  { title: "Optimizing Rails Performance", body: "Strategies for improving the performance of your Rails applications.", author: "Fiona Blue", published_at: Time.now - 3.days, status: "published" },
  { title: "Introduction to RubyGems", body: "How to use and create RubyGems for code reuse.", author: "George Red", published_at: Time.now - 2.days, status: "draft" },
  { title: "Rails and JavaScript Integration", body: "Best practices for integrating JavaScript frameworks with Rails.", author: "Hannah Violet", published_at: Time.now - 1.day, status: "published" },
  { title: "Building E-commerce with Rails", body: "Creating an online store using Ruby on Rails.", author: "Ivan Orange", published_at: Time.now, status: "published" },
  { title: "Understanding Rails Routing", body: "Deep dive into Rails routing and how to manage routes.", author: "Julia Yellow", published_at: Time.now + 1.day, status: "draft" },
  { title: "Authentication in Rails", body: "Implementing user authentication in Rails applications.", author: "Kevin Purple", published_at: Time.now + 2.days, status: "published" },
  { title: "Authorization in Rails", body: "Managing user permissions and roles in Rails applications.", author: "Laura Pink", published_at: Time.now + 3.days, status: "draft" },
  { title: "Rails Views Best Practices", body: "Creating maintainable and efficient views in Rails.", author: "Mike Teal", published_at: Time.now + 4.days, status: "published" },
  { title: "Background Jobs in Rails", body: "Using Sidekiq and ActiveJob for background processing in Rails.", author: "Nina Silver", published_at: Time.now + 5.days, status: "draft" },
  { title: "Using Webpack with Rails", body: "Integrating Webpack for modern JavaScript in Rails applications.", author: "Oliver Gold", published_at: Time.now + 6.days, status: "published" },
  { title: "Rails and React Integration", body: "Combining Rails with React for powerful web applications.", author: "Paula Bronze", published_at: Time.now + 7.days, status: "draft" },
  { title: "Creating GraphQL APIs with Rails", body: "Building and consuming GraphQL APIs in Rails applications.", author: "Quinn Lime", published_at: Time.now + 8.days, status: "published" },
  { title: "Security Best Practices in Rails", body: "Protecting your Rails applications from common security threats.", author: "Rick Cyan", published_at: Time.now + 9.days, status: "draft" }
]

posts_data.each do |post_data|
  Post.create!(post_data)
end
