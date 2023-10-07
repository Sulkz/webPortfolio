
require "require_all"

ENV["APP_ENV"] = "test" # change to "production" to seed the production.sqlite3 DB
require_rel "db"

unless DB.table_exists? :users
    DB.create_table :users do
        primary_key :id, Integer
        column :email, String, text: true
        column :password, String, text: true
        column :first_name, String, text: true
        column :last_name, String, text: true
        column :type, String, text: true
        column :suspended, Integer
    end
end

unless DB.table_exists? :courses
    DB.create_table :courses do
        primary_key :id, Integer
        column :moderator_id, Integer
        column :name, String, text: true
        column :description, String, text: true
        column :price, Float
        column :ranking_id, Integer
        column :trusted, Integer
    end
end

unless DB.table_exists? :course_reviews
    DB.create_table :course_reviews do
        primary_key :id, Integer
        column :course_id, Integer # which course the review was made for
        column :user_id, Integer # who made the review
        column :rating, Integer # out of 10
        column :description, String, text: true
    end
end

unless DB.table_exists? :tags
    DB.create_table :tags do
        primary_key :id, Integer
        column :name, String, text: true
    end
end

unless DB.table_exists? :course_tags
    DB.create_table :course_tags do
        primary_key :id, Integer
        column :tag_id, Integer # the id of the tag from :tags table
        column :course_id, Integer # the course this tag is linked to
    end
end

unless DB.table_exists? :rankings
    DB.create_table :rankings do
        primary_key :id, Integer
        column :name, String, text: true
    end
end

unless DB.table_exists? :joined_courses
    DB.create_table :joined_courses do
        primary_key :id, Integer
        column :user_id, Integer
        column :course_id, Integer
    end
end

unless DB.table_exists? :admin_reports
    DB.create_table :admin_reports do
        primary_key :id, Integer
        column :user_id, Integer
        column :type_id, Integer
        column :subject, String, text: true
        column :description, String, text: true
    end
end

unless DB.table_exists? :report_types
    DB.create_table :report_types do
        primary_key :id, Integer
        column :name, String, text: true
    end
end

unless DB.table_exists? :subscriptions
    DB.create_table :subscriptions do
        primary_key :id, Integer
        column :user_id, Integer
        column :course_id, Integer
    end
end

unless DB.table_exists? :roles
    DB.create_table :roles do
        primary_key :id, Integer
        column :name, String, text: true
        column :capabilities, String, text: true
    end
end

