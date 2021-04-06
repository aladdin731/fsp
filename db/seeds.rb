# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Course.create!({course_name: "react", description: "best react course", course_type:"Frontend", mentor_id: 5, image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png', tag_1:"tag1", tag_2:"tag2"})
User.destroy_all
User.create!({username: "Demo User", password:"123123"})
User.create!({username:"user1", password:"123123"})
User.create!({username:"user2", password:"123123"})
User.create!({username:"user3", password:"123123"})
User.create!({username:"user4", password:"123123"})
User.create!({username:"user5", password:"123123"})
User.create!({username:"user6", password:"123123"})



CourseTag.destroy_all

  Tag.destroy_all

  Course.destroy_all


  courses = {
    '1' => {
      'course_name' => 'python',
      'description' => "best python course",
      'course_type' => "Frontend",
      'mentor_id' => 1,
      'image_url' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png',
      'tags' => [
     'tag1_haha',
     'tag2_lala'
      ],
    },
    '2' => {
      'course_name' => 'redux',
      'description' => "best redux course",
      'course_type' => "Frontend",
      'mentor_id' => 2,
      'image_url' => 'https://miro.medium.com/max/800/1*4sxOPaVNwxrfZ9uxVbUaKg.jpeg',
      'tags' => [
     'tag1_haha',
     'tag2_lolo'
      ],
    },
    '3' => {
      'course_name' => 'rails',
      'description' => "best rails course",
      'course_type' => "Backend",
      'mentor_id' => 3,
      'image_url' => 'https://hackernoon.com/drafts/3b3t3yqt.png',
      'tags' => [
     'tag1_zozo',
     'tag2_gogo'
      ],
    },
    '4' => {
      'course_name' => 'ruby',
      'description' => "best ruby course",
      'course_type' => "Backend",
      'mentor_id' => 3,
      'image_url' => 'https://portswigger.net/cms/images/f5/d7/61c1d398bde7-article-main.jpg',
      'tags' => [
     'tag1_zozo',
     'tag2_gogo'
      ],
    },
    '5' => {
      'course_name' => 'resume',
      'description' => "best resume course",
      'course_type' => "Resume",
      'mentor_id' => 6,
      'image_url' => 'https://image.slidesharecdn.com/presentation-150219211039-conversion-gate01/95/professional-resume-open-door-to-oportunity-3-638.jpg?cb=1424380396',
      'tags' => [
     'tag1_tutu',
     'tag2_zuzu'
      ],
    },

  }

    courses.map do |num, stats|

        course = Course.create!(
            course_name: stats['course_name'], 
            description: stats['description'], 
            course_type: stats['course_type'], 
            mentor_id: stats['mentor_id'], 
            image_url: stats['image_url']
        )
        stats['tags'].each do |tag|
            if !Tag.where(tag_name: tag).present?
                Tag.create!(tag_name: tag)
            end
            CourseTag.create!(course_id: course.id, tag_id: Tag.find_by(tag_name: tag).id)
        end
    end



