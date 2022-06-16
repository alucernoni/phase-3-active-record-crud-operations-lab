class Movie < ActiveRecord::Base
    def Movie.create_with_title(title)
        self.create(title: title)
    end

    def Movie.first_movie
        self.first
    end

    def Movie.last_movie
        self.last
    end

    def Movie.movie_count
        self.count
    end

    def Movie.find_movie_with_id(id)
        self.find(id)
    end

    def Movie.find_movie_with_attributes(attributes)
        self.find_by(attributes)
    end

    def Movie.find_movies_after_2002
        self.where("release_date > 2002")
    end

    def update_with_attributes(attributes)
        self.update(attributes: attributes)
    end

    def self.update_all_titles(title)
        self.update(title: title)
    end

    def Movie.delete_by_id(id)
        self.destroy(id)
    end

    def Movie.delete_all_movies
        self.destroy_all
    end
end