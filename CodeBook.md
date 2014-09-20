The "tidy_data_set" ("tidy_data_set.txt") output by "run_analysis.R" includes 180 observations of 81 variables. Each of the
observations references a subject, activity and the mean of each measurement variable; the mean measurement value for each
unique "subject" and "activity" pairing.

Subject, activity and measurement data, the activity and feature (measurement) labels are from the UCI Human Activity
Recognition Using Smartphones Dataset[1].

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on
Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living
(IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their
institutions for its use or misuse. Any commercial use is prohibited. Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto,
Davide Anguita. November 2012.

UCI HAR Dataset may be retrieved here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

UCI HAR Dataset description may be retreived here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Any errors in analysis, transformation or discussion present here, in the associated README.md or the "run_analysis"
script or output .txt are wholly the responsibility of the author.

NOTE:  all measurement variables described below, to exclude "subject" and "activity", should be understood to be the
mean of the described measurement, over all relevant values for each "subject" and "activity" pair, including those
measurement variables described as  mean; indicating the mean of a repeated mean measurement. "X","Y" and "Z"
descriptors should be understood to reference the axis along which a measurment is being made; "time" should be
understood to reference the domain across which sginal was acquired; "fourier" to indicate the raw signal was transformed
via fast fourier transform (FFT). "Accelerometer" and "Gyroscope" should be understood to refer to the measurement
device and modality; "Body" and "Gravity" to refer to expected source of an acceleration signal. Lastly, "Jerk" should be
understood to refer to a detected linear acceleration or angular velocity (gyroscopic) in time; "Magnitude" to refer to
the magnitude of such a (calculated) three-dimensional signal.

Variables of "tidy_data_set":
 [1] "subject" - specifies volunteer, 1-30                                      
 [2] "activity" - specifies activity,  "walking","walkingUpstairs","walkingDownstairs","sitting","standing" or "laying"
 [3] "timeBodyAccelerometer_Mean_X"                  
 [4] "timeBodyAccelerometer_Mean_Y"                  
 [5] "timeBodyAccelerometer_Mean_Z"                  
 [6] "timeBodyAccelerometer_Std_X"                   
 [7] "timeBodyAccelerometer_Std_Y"                   
 [8] "timeBodyAccelerometer_Std_Z"                   
 [9] "timeGravityAccelerometer_Mean_X"               
[10] "timeGravityAccelerometer_Mean_Y"               
[11] "timeGravityAccelerometer_Mean_Z"               
[12] "timeGravityAccelerometer_Std_X"                
[13] "timeGravityAccelerometer_Std_Y"                
[14] "timeGravityAccelerometer_Std_Z"                
[15] "timeBodyAccelerometerJerk_Mean_X"              
[16] "timeBodyAccelerometerJerk_Mean_Y"              
[17] "timeBodyAccelerometerJerk_Mean_Z"              
[18] "timeBodyAccelerometerJerk_Std_X"               
[19] "timeBodyAccelerometerJerk_Std_Y"               
[20] "timeBodyAccelerometerJerk_Std_Z"               
[21] "timeBodyGyroscope_Mean_X"                      
[22] "timeBodyGyroscope_Mean_Y"                      
[23] "timeBodyGyroscope_Mean_Z"                      
[24] "timeBodyGyroscope_Std_X"                       
[25] "timeBodyGyroscope_Std_Y"                       
[26] "timeBodyGyroscope_Std_Z"                       
[27] "timeBodyGyroscopeJerk_Mean_X"                  
[28] "timeBodyGyroscopeJerk_Mean_Y"                  
[29] "timeBodyGyroscopeJerk_Mean_Z"                  
[30] "timeBodyGyroscopeJerk_Std_X"                   
[31] "timeBodyGyroscopeJerk_Std_Y"                   
[32] "timeBodyGyroscopeJerk_Std_Z"                   
[33] "timeBodyAccelerometerMagnitude_Mean"           
[34] "timeBodyAccelerometerMagnitude_Std"            
[35] "timeGravityAccelerometerMagnitude_Mean"        
[36] "timeGravityAccelerometerMagnitude_Std"         
[37] "timeBodyAccelerometerJerkMagnitude_Mean"       
[38] "timeBodyAccelerometerJerkMagnitude_Std"        
[39] "timeBodyGyroscopeMagnitude_Mean"               
[40] "timeBodyGyroscopeMagnitude_Std"                
[41] "timeBodyGyroscopeJerkMagnitude_Mean"           
[42] "timeBodyGyroscopeJerkMagnitude_Std"            
[43] "fourierBodyAccelerometer_Mean_X"               
[44] "fourierBodyAccelerometer_Mean_Y"               
[45] "fourierBodyAccelerometer_Mean_Z"               
[46] "fourierBodyAccelerometer_Std_X"                
[47] "fourierBodyAccelerometer_Std_Y"                
[48] "fourierBodyAccelerometer_Std_Z"                
[49] "fourierBodyAccelerometer_MeanFreq_X"           
[50] "fourierBodyAccelerometer_MeanFreq_Y"           
[51] "fourierBodyAccelerometer_MeanFreq_Z"           
[52] "fourierBodyAccelerometerJerk_Mean_X"           
[53] "fourierBodyAccelerometerJerk_Mean_Y"           
[54] "fourierBodyAccelerometerJerk_Mean_Z"           
[55] "fourierBodyAccelerometerJerk_Std_X"            
[56] "fourierBodyAccelerometerJerk_Std_Y"            
[57] "fourierBodyAccelerometerJerk_Std_Z"            
[58] "fourierBodyAccelerometerJerk_MeanFreq_X"       
[59] "fourierBodyAccelerometerJerk_MeanFreq_Y"       
[60] "fourierBodyAccelerometerJerk_MeanFreq_Z"       
[61] "fourierBodyGyroscope_Mean_X"                   
[62] "fourierBodyGyroscope_Mean_Y"                   
[63] "fourierBodyGyroscope_Mean_Z"                   
[64] "fourierBodyGyroscope_Std_X"                    
[65] "fourierBodyGyroscope_Std_Y"                    
[66] "fourierBodyGyroscope_Std_Z"                    
[67] "fourierBodyGyroscope_MeanFreq_X"               
[68] "fourierBodyGyroscope_MeanFreq_Y"               
[69] "fourierBodyGyroscope_MeanFreq_Z"               
[70] "fourierBodyAccelerometerMagnitude_Mean"        
[71] "fourierBodyAccelerometerMagnitude_Std"         
[72] "fourierBodyAccelerometerMagnitude_MeanFreq"    
[73] "fourierBodyAccelerometerJerkMagnitude_Mean"    
[74] "fourierBodyAccelerometerJerkMagnitude_Std"     
[75] "fourierBodyAccelerometerJerkMagnitude_MeanFreq"
[76] "fourierBodyGyroscopeMagnitude_Mean"            
[77] "fourierBodyGyroscopeMagnitude_Std"             
[78] "fourierBodyGyroscopeMagnitude_MeanFreq"        
[79] "fourierBodyGyroscopeJerkMagnitude_Mean"        
[80] "fourierBodyGyroscopeJerkMagnitude_Std"         
[81] "fourierBodyGyroscopeJerkMagnitude_MeanFreq"  
