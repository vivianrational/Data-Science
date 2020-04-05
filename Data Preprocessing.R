getwd() # return your work path
setwd('E:\\master\\project\\datascienceR') # set your new work path, by the way, this is for windows system
# importing your dataset
dataset = read.csv('data.csv')
#if you want load xlxs,you could use readxl::read_xls();note: readxl is a package.

# splitting the dataset 

library(caTools)
set.seed(123) #control your random number
split = sample.split(dataset$DependentVariable, SplitRatio = "ration")
# sample.split is similar to sample function
training_set = subset(dataset, split == TRUE)

test_set = subset(dataset, split == FALSE)

# subset: return subsets of vectors, matrices or data frames which meet conditions, here split is our conditions


# feature scaling
training_set = scale(training_set)
test_set = scale(test_set)

# Notice: machine learning use Eucledian distance between two data points, 
# so if your dataset contain features highly varying in magnitudes, units and range, you need to scale features
