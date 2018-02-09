# Variables in file

- tBodyAccmean()X
- tBodyAccmean()Y
- tBodyAccmean()Z
- tBodyAccstd()X
- tBodyAccstd()Y
- tBodyAccstd()Z
- tGravityAccmean()X
- tGravityAccmean()Y
- tGravityAccmean()Z
- tGravityAccstd()X
- tGravityAccstd()Y
- tGravityAccstd()Z
- tBodyAccJerkmean()X
- tBodyAccJerkmean()Y
- tBodyAccJerkmean()Z
- tBodyAccJerkstd()X
- tBodyAccJerkstd()Y
- tBodyAccJerkstd()Z
- tBodyGyromean()X
- tBodyGyromean()Y
- tBodyGyromean()Z
- tBodyGyrostd()X
- tBodyGyrostd()Y
- tBodyGyrostd()Z
- tBodyGyroJerkmean()X
- tBodyGyroJerkmean()Y
- tBodyGyroJerkmean()Z
- tBodyGyroJerkstd()X
- tBodyGyroJerkstd()Y
- tBodyGyroJerkstd()Z
- tBodyAccMagmean()
- tBodyAccMagstd()
- tGravityAccMagmean()
- tGravityAccMagstd()
- tBodyAccJerkMagmean()
- tBodyAccJerkMagstd()
- tBodyGyroMagmean()
- tBodyGyroMagstd()
- tBodyGyroJerkMagmean()
- tBodyGyroJerkMagstd()
- fBodyAccmean()X
- fBodyAccmean()Y
- fBodyAccmean()Z
- fBodyAccstd()X
- fBodyAccstd()Y
- fBodyAccstd()Z
- fBodyAccmeanFreq()X
- fBodyAccmeanFreq()Y
- fBodyAccmeanFreq()Z
- fBodyAccJerkmean()X
- fBodyAccJerkmean()Y
- fBodyAccJerkmean()Z
- fBodyAccJerkstd()X
- fBodyAccJerkstd()Y
- fBodyAccJerkstd()Z
- fBodyAccJerkmeanFreq()X
- fBodyAccJerkmeanFreq()Y
- fBodyAccJerkmeanFreq()Z
- fBodyGyromean()X
- fBodyGyromean()Y
- fBodyGyromean()Z
- fBodyGyrostd()X
- fBodyGyrostd()Y
- fBodyGyrostd()Z
- fBodyGyromeanFreq()X
- fBodyGyromeanFreq()Y
- fBodyGyromeanFreq()Z
- fBodyAccMagmean()
- fBodyAccMagstd()
- fBodyAccMagmeanFreq()
- fBodyBodyAccJerkMagmean()
- fBodyBodyAccJerkMagstd()
- fBodyBodyAccJerkMagmeanFreq()
- fBodyBodyGyroMagmean()
- fBodyBodyGyroMagstd()
- fBodyBodyGyroMagmeanFreq()
- fBodyBodyGyroJerkMagmean()
- fBodyBodyGyroJerkMagstd()
- fBodyBodyGyroJerkMagmeanFreq()



The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
