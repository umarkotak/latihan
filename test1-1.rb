def hire_app(experience, github, languages, recent, age)
	point =[]
	languages.include?("Ruby") ? point[0] = 1 : point[0] = 0 
	experience >= 2 ? point[1] = 1 : point[1] = 0

	if experience < 2
		github >= 500 ? point[1] = 1 : point[1] = 1
	end

	age.to_i > 15 ? point[2] = 1 : point[2] = 0
	
	recent == false ? point[3] = 1 : point[3] = 0
	
	total = point.sum
	total == 4 ? hired = true : hired = false

	puts hired
end

experience = 4
github = 293
languages = ['C', 'Ruby', 'Python', 'Clojure']
recent = false
age = 16

hire_app(experience, github, languages, recent, age)

# 1. Candidate must have experience working with Ruby programming language
# 2. Candidate must have two or more years in working experience. 
# However, if a candidate has less than two years experience,
# we can still hire him/her if he/she has great Github points (500 or more)
# 3. Candidate must be older than 15 years old
# 4. Candidate that has recently applied should not be considered