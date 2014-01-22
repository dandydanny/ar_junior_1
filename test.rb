require_relative 'app'

# tests!

cohort = Cohort.find(1)
cohort[:name] = 'Best Cohort Ever'
cohort.save

# This re-queries the database, so we're checking that we actually
# saved the data as intended
p Cohort.find(1)[:name] == 'Best Cohort Ever' #should return true

# p Student.all
# p Cohort.all

p Student.where('id = ?', 3)
p Cohort.where('id = ?', 3)

# p Student.new_record?
# p Cohort.where('id = ?', 3)
