#Set working directory accordingly to read the files!

#Refer to ReadMe for explanation of steps

#STEP 0

gettrain<-function()
{
  traindata<-read.table("X_train.txt")
  trainsub<-read.table("subject_train.txt",col.names = "Subject")
  trainlabel<-read.table("y_train.txt",col.names = "Activity")
  
  train<-cbind.data.frame(traindata,trainsub,trainlabel)
 
  
   
  train 
}


gettest<-function()
{   
  testdata<-read.table("x_test.txt")
  testsub<-read.table("subject_test.txt",col.names = "Subject")
  testlabel<-read.table("y_test.txt",col.names = "Activity")
  
  test<-cbind.data.frame(testdata,testsub,testlabel)
  
  test
}


#Step1

part1<-function(train,test)
{
  merged<-rbind(test,train)
  merged
  
}


#Step 2

part2<-function(merged)
{
  newtable<-data.frame()
  
  feature<-read.table("features.txt",col.names = c("sno","value"))
  
  featureval<-as.character(feature$value)
  
  meanexists<-grepl("mean()",featureval)
 
   stdexists<-grepl("std()",featureval)
  
  
   colnumb<-c(feature[meanexists,]$sno,feature[stdexists,]$sno)
    
   
   
   newtable=merged[,colnumb]

#STEP 4   
   
 #part4  Here we name the columns according to the process performed
   #on them. It is easier to do so here, instead of giving
   #commands all over again
   
   colnames(newtable)<-feature[colnumb,]$value
   
#part4 end
   
      newtable=cbind.data.frame(newtable,Activity=merged$Activity,Subject=merged$Subject)
   
   newtable
   
   
  
  
}


#STEP 3

part3<-function(dataset)
{
  actlabels<-read.table("activity_labels.txt")
  
  dataset$Activity<-factor(dataset$Activity,labels=actlabels$V2)
  
  
  dataset
}


  #part4 done in part2 itself
  

#STEP 5
  
  part5<-function(dataset)
  {
    print(colnames(dataset))
    
    tidydata<-aggregate.data.frame(dataset[seq(1,79)],by=list(Activity=dataset$Activity,Subject=dataset$Subject),mean)
  
    tidydata
    
    }
