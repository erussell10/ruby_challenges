class Blog

    @@total_blog_posts = 0
    @@all_blog_posts = []
    
    def self.all
        @@all_blog_posts
    end

    def self.add(new)
        @@all_blog_posts << new
        @@total_blog_posts += 1
    end
    
    def publish
        @@all_blog_posts.each do |post|
            puts "Title:\n #{title}"
            puts "Author:\n #{author}"
            puts "Date:\n #{Time.now}"
            puts "#{content}"
        end
    end
end

class Blog_Post < Blog
    
    def save
        Blog_Post.add(self)
    end

    def self.create
        post = new
        puts "Do you want to publish a blog post [Y/N]?"
        answer = gets.chomp.downcase
        if answer == "y"
        puts "Title:"
        title = gets.chomp
        puts "Author:"
        author = gets.chomp
        puts "Content:"
        content = gets.chomp
        post.save
        end
    end
end

Blog_Post.create
all_blog_posts = Blog_Post.all
all_blog_posts.publish





# You may want to do this by modifying the initialize method OR you may want you craft your own method, with all the special behaviour in it.
#   use logic to create a prompt saying “do you want to create another blog post? [Y/N]”. If you hit Y the script will run through the questions to add content. If you hit N, you will stop entering content.
        #       Hmm, shouldn’t you be practicing inheritance? Create a parent class called something like ‘Blog’, that will keep track of how many blog posts you have created, and what to do with them.
        # Save all blog posts in an array or a hash (you learned about these in lesson 7), in the parent class. Experiment with both. Push every new blog post into said array. Look up ‘Array’ methods in ruby to figure out how this might be possible.
        #   Let’s create a variable that will count our blog posts, starting at 0, and a method that will increment with each new blog post created and appended to our array of posts. Should this be an instance variable or a class variable? In what class should this counter be?
        #   Create a ‘publish’ method that will output all your blog posts to the terminal Would that be a class or instance method?
        #   Make it so that blog posts can have authors
