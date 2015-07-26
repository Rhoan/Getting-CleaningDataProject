# Getting-CleaningDataProject
Course project for Getting and Cleaning data (Samsung Data)

Greetings. My script is to be run step by step to get the final answer.

Source the Script

#Step 0 - In step 0, we join the train files together and the test files together seperately. 

I have used c.bind.dataframe() To bind the X_train.txt, y_tran.txt and subject_train.txt together. Similarly, for test.

Commands-

train<-gettrain()
test<-gettest()

We get train and test as seperate datasets.

#Step 1- In step 1 we, merge the two datasets train and test to get a single dataset. 
I have used rbind() command to merge them together.

Commands-

p1<-part1(train,test)

#Step 2- In step 2 we select only the columns whose column names have mean() or std() in them. We get this relevant data from the "features.txt" file.  
I have used the grepl() function to search for the occurence of "mean()" and "std()"

NOTE!!!

#Step 4 I have done the step 4 of the question here itself. I have assigned the column names to the relevant selected columns. ie. Assigned the descriptive variable names here itself. Use colnames() to test.

The output of this function is a dataset with descriptive columns containing mean() and std() as well as two more columns informing about the Activity and the Subject

Commands-

p2<-part2(p1)

#Step 3- In step 3, we assign the labels to the Activity. eg(WALKING< etc.) We get this relevant information from the "activity_labels.txt" file. I have used the factor() function to label the Activity in column p2$Activity

Commands-

p3<-part3(p2)


#Step 5 (As step 4 done before itself) 
In this step I create the tidy dataset by aggregating along the Subject and Activity columns. I have used the aggregate() function

Commands-

tidy<-part5(p3)



The final tidy dataset is a dataframe with 180 obs. of 81 Variables. 
.
.
.

Thank You!


