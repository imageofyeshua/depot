Product.delete_all
# . . .
product = Product.create(title: 'Rails Scales!',
  description:
  %(<p>
  <em>Practical Techniques for Performance and Growth</em> Rails doesn’t scale. So say the naysayers. They’re wrong. Ruby on Rails runs some of the biggest sites in the world, impacting the lives of millions of users while efficiently crunching petabytes of data. This book reveals how they do it, and how you can apply the same techniques to your applications. Optimize everything necessary to make an application function at scale: monitoring, product design, Ruby code, software architecture, database access, caching, and more. Even if app may never have millions of users, you reduce the costs of hosting and maintaining it.
  </p>),
  price: 30.95)

product.image.attach(io: File.open(
  Rails.root.join('db', 'images', 'ruby.jpg')),
  filename: 'ruby.jpg')

product.save!
# . . .
