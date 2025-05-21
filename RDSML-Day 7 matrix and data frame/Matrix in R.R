#Matrix in R (10 students study hours given)
study_hours= c(89,69, 45, 75, 63,54, 23, 25, 46, 67)
subject_marks = c(79, 53, 71, 57, 63, 54, 74, 77, 61, 69)
#creating a matrix in r just using study hours
# matrix is data sturcuture which can combine different vector in single data stucture 
study_hours
study_hours_mat = matrix(study_hours)
study_hours_mat

# matrix can add different data type/vectors as column next to a column, adding column in matrix 
#joining two colums in a matrix
student_data = c(study_hours, subject_marks)
student_data
# all twenty data came into in a row, student data working here as a vector
# vector can not combine columns but matrix can

student_data = c(study_hours, subject_marks)
student_matrix = matrix(student_data, byrow = FALSE, nrow = 10 )
student_matrix

student_matrix = matrix(student_data)
study_hours= c(89,69, 45, 75, 63,54, 23, 57, 46, 67)
subject_marks = c (79, 53, 71, 57, 63, 54, 74, 77, 61, 69)
study_hours_mat = matrix(study_hours)
study_hours_mat = matrix(study_hours)
subject_marks_mat = matrix(subject_marks)
stu_hours_mat = matrix(study_hours)
stu_hours_mat
study_hours
study_hours = c(89, 69, 45, 75, 63, 54, 23, 25, 57, 46)
subject_marks = c(79, 53, 71, 57, 63, 54, 74, 77, 61, 69)
stu_hours_mat = matrix(study_hours)
stu_hours_mat
study_hours
student_data = c(study_hours, subject_marks)
student_matrix = matrix(student_data, byrow = FALSE, nrow = 10)
student_matrix
colnames(student_matrix) = c('Hours', 'Marks')
student_matrix
rownames(student_matrix) = c(1:10)
student_matrix
student_matrix[6, 2]

student_data_mat
student_matrix= matrix(student_data)
student_matrix
summary(student_matrix)
#DATA FRAMES IN R
Student_names = c("Mr1", "Ms2", "Ms3", "Mr4","Ms5")
study_hours= c(20, 24, 46, 62, 22)
marks = c(40, 55, 69, 54, 45)
Gender = c('Male', 'Female', 'Female', 'Male', 'Female')
male= c(TRUE, FALSE,FALSE, TRUE, FALSE)

stu_data= data.frame(Student_names, study_hours, marks, Gender)
View(stu_data)
#matrix works on numerical data to add column but view/data frame combine both numerical and string data/text type
summary(stu_data)
stu_data$study_hours
mean(stu_data$study_hours)
