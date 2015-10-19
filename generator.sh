rails g scaffold User first:string last:string birthday:date checkin_hour:integer checkin_minute:integer timezone:string
rails g scaffold GoalCategory name:string
rails g scaffold Goal name:string description:text type:string end_date:date start_date:date
rails g scaffold UserGoal user:belongs_to goal:belongs_to
