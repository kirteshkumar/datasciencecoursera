##reading the test files

a <-read.table("UCI HAR Dataset/test/X_test.txt")
b <-read.table("UCI HAR Dataset/test/y_test.txt")
c <-read.table("UCI HAR Dataset/test/subject_test.txt")
f<-read.table("UCI HAR Dataset/features.txt")
h<-read.table("UCI HAR Dataset/activity_labels.txt")
names(a) <- f[,2]
names(c) <- "Subjects"

## selecting mean and SD variables

d <- a[,c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543)]

## merging Subjects and Activity Names

l<-cbind(d,b)
m <-cbind(l,c)
n<- merge(m,h,by.x="V1",by.y="V1")
o <- n[,c(68,69,2:67)]

## Assigning Proper names to all variable

names(o)<- c("Subjects","Activity.Name","time.Body.AccelerationX(Mean)","time.Body.AccelerationY(Mean)","time.Body.AccelerationZ(Mean)","time.Body.AccelerationX(SD)" , "time.Body.AccelerationY(SD)","time.Body.AccelerationZ(SD)","time.Gravity.AccelerationX(Mean)","time.Gravity.AccelerationY(Mean)","time.Gravity.Acceleration(Mean)", "time.Gravity.AccelerationX(SD)","time.Gravity.AccelerationY(SD)","time.Gravity.AccelerationZ(SD)","time.Body.Acceleration.JerkX(Mean)","time.Body.Acceleration.JerkY(Mean)","time.Body.Acceleration.JerkZ(Mean)","time.Body.Acceleration.JerkX(SD)","time.Body.Acceleration.JerkY(SD)","time.Body.Acceleration.Jerk(SD)" , "time.Body.GyroscopeX(Mean)","time.Body.GyroscopeY(Mean)","time.Body.GyroscopeZ(Mean)","time.Body.GyroscopeX(SD)", "time.Body.GyroscopeY(SD)","time.Body.GyroscopeZ(SD)","time.Body.Gyroscope.JerkX(Mean)","time.Body.Gyroscope.JerkY(Mean)","time.Body.Gyroscope.JerkZ(Mean)","time.Body.Gyroscope.JerkX(SD)","time.Body.Gyroscope.JerkY(SD)", "time.Body.Gyroscope.JerkZ(SD)","time.Body.Acceleration.Magnitude(Mean)","time.Body.Acceleration.Magnitude(SD)","time.Gravity.Acceleration.Magnitude(Mean)","time.Gravity.Acceleration.Magnitud(SD)" , "time.Body.Acceleration.Jerk.Magnitude(Mean)","time.Body.Acceleration.Jerk.Magnitud(SD)", "time.Body.Gyroscope.Magnitude(Mean)", "time.Body.Gyroscope.Magnitude(SD)","time.Body.Gyroscope.Jerk.Magnitude(Mean)","time.Body.Gyroscope.Jerk.Magnitud(SD)", "frequency.Body.AccelerationX(Mean)", "frequency.Body.AccelerationY(Mean)","frequency.Body.AccelerationZ(Mean)","frequency.Body.AccelerationX(SD)","frequency.Body.AccelerationY(SD)","frequency.Body.AccelerationZ(SD)","frequency.Body.Acceleration.JerkX(Mean)","frequency.Body.Acceleration.Jerk(Mean)" , "frequency.Body.Acceleration.JerkZ(Mean)" , "frequency.Body.Acceleration.JerkX(SD)","frequency.Body.Acceleration.JerkY(SD)","frequency.Body.Acceleration.JerkZ(SD)","frequency.Body.GyroscopeX(Mean)","frequency.Body.GyroscopeY(Mean)","frequency.Body.GyroscopeZ(Mean)","frequency.Body.GyroscopeX(SD)" , "frequency.Body.GyroscopeY(SD)","frequency.Body.GyroscopeZ(SD)" , "frequency.BodyAcceleration.Magnitude(Mean)","frequency.BodyAcceleration.Magnitude(SD)", "frequency.Body.Acceleration.Jerk.Magnitude(Mean)","frequency.Body.Acceleration.Jerk.Magnitude(SD)","frequency.Body.Gyroscope.Magnitud(Mean)" , "frequency.Body.Gyroscope.Magnitude(SD)","frequency.Body.Gyroscope.Jerk.Magnitude(Mean)","frequency.Body.Gyroscope.Jerk.Magnitude(SD)")

##reading training data files

g <- read.table("UCI HAR Dataset/train/X_train.txt")
g1<-read.table("UCI HAR Dataset/train/y_train.txt")
g2<-read.table("UCI HAR Dataset/train/subject_train.txt")
names(g) <- f[,2]
names(g1)<- "activity"

##selecting mean and SD variables

p <- g[,c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543)]

## merging Subjects and Activity Names

g3<-cbind(p,g1)
g4<-cbind(g3,g2)
g5<- merge(g4,h,by.x="activity",by.y="V1")
g6 <- g5[c(68,69,2:67)]

## Assigning Proper names to all variable

names(g6)<- c("Subjects","Activity.Name","time.Body.AccelerationX(Mean)","time.Body.AccelerationY(Mean)","time.Body.AccelerationZ(Mean)","time.Body.AccelerationX(SD)" , "time.Body.AccelerationY(SD)","time.Body.AccelerationZ(SD)","time.Gravity.AccelerationX(Mean)","time.Gravity.AccelerationY(Mean)","time.Gravity.Acceleration(Mean)", "time.Gravity.AccelerationX(SD)","time.Gravity.AccelerationY(SD)","time.Gravity.AccelerationZ(SD)","time.Body.Acceleration.JerkX(Mean)","time.Body.Acceleration.JerkY(Mean)","time.Body.Acceleration.JerkZ(Mean)","time.Body.Acceleration.JerkX(SD)","time.Body.Acceleration.JerkY(SD)","time.Body.Acceleration.Jerk(SD)" , "time.Body.GyroscopeX(Mean)","time.Body.GyroscopeY(Mean)","time.Body.GyroscopeZ(Mean)","time.Body.GyroscopeX(SD)", "time.Body.GyroscopeY(SD)","time.Body.GyroscopeZ(SD)","time.Body.Gyroscope.JerkX(Mean)","time.Body.Gyroscope.JerkY(Mean)","time.Body.Gyroscope.JerkZ(Mean)","time.Body.Gyroscope.JerkX(SD)","time.Body.Gyroscope.JerkY(SD)", "time.Body.Gyroscope.JerkZ(SD)","time.Body.Acceleration.Magnitude(Mean)","time.Body.Acceleration.Magnitude(SD)","time.Gravity.Acceleration.Magnitude(Mean)","time.Gravity.Acceleration.Magnitud(SD)" , "time.Body.Acceleration.Jerk.Magnitude(Mean)","time.Body.Acceleration.Jerk.Magnitud(SD)", "time.Body.Gyroscope.Magnitude(Mean)", "time.Body.Gyroscope.Magnitude(SD)","time.Body.Gyroscope.Jerk.Magnitude(Mean)","time.Body.Gyroscope.Jerk.Magnitud(SD)", "frequency.Body.AccelerationX(Mean)", "frequency.Body.AccelerationY(Mean)","frequency.Body.AccelerationZ(Mean)","frequency.Body.AccelerationX(SD)","frequency.Body.AccelerationY(SD)","frequency.Body.AccelerationZ(SD)","frequency.Body.Acceleration.JerkX(Mean)","frequency.Body.Acceleration.Jerk(Mean)" , "frequency.Body.Acceleration.JerkZ(Mean)" , "frequency.Body.Acceleration.JerkX(SD)","frequency.Body.Acceleration.JerkY(SD)","frequency.Body.Acceleration.JerkZ(SD)","frequency.Body.GyroscopeX(Mean)","frequency.Body.GyroscopeY(Mean)","frequency.Body.GyroscopeZ(Mean)","frequency.Body.GyroscopeX(SD)" , "frequency.Body.GyroscopeY(SD)","frequency.Body.GyroscopeZ(SD)" , "frequency.BodyAcceleration.Magnitude(Mean)","frequency.BodyAcceleration.Magnitude(SD)", "frequency.Body.Acceleration.Jerk.Magnitude(Mean)","frequency.Body.Acceleration.Jerk.Magnitude(SD)","frequency.Body.Gyroscope.Magnitud(Mean)" , "frequency.Body.Gyroscope.Magnitude(SD)","frequency.Body.Gyroscope.Jerk.Magnitude(Mean)","frequency.Body.Gyroscope.Jerk.Magnitude(SD)")

## making a tidy dataset merging both training and test dataset

final <- rbind(o,g6)

## aggreggating dataset as per Activity Name and Subjects

final$Activity.Name <- as.numeric(final$Activity.Name)
final1 <- aggregate(final, by= list(final$Subjects,final$Activity.Name),FUN="mean")
final2 <- merge(final1,h,by.x="Activity.Name",by.y="V1")
final3 <- final2[,c(71,4:70)]
names(final3)[1] <- "Activity.Name"

## writing the final tidy data set into text file
write.table(final8,file="final.txt",row.names = FALSE)







