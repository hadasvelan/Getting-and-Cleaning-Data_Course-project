# Getting and Cleaning Data - Course Project
# CodeBoook


### Measure names
The `feature.txt` file contains the measures taken in the experiment. The measure names were transformed 
so they will be more human readable, the transformation made:
+ All letters were transformed to lower case letters
+ All punctuations were replaced with a dot
+ All spaces were deleted
+ Where this processed created a sequence of dots, they were minimised to a single dot.

Here are the measure names before and after transformation:

      | before                               | after                               |
      |--------------------------------------|-------------------------------------|
      | tBodyAcc-mean()-X                    | tbodyacc.mean.x                     |
      | tBodyAcc-mean()-Y                    | tbodyacc.mean.y                     |
      | tBodyAcc-mean()-Z                    | tbodyacc.mean.z                     |
      | tBodyAcc-std()-X                     | tbodyacc.std.x                      |
      | tBodyAcc-std()-Y                     | tbodyacc.std.y                      |
      | tBodyAcc-std()-Z                     | tbodyacc.std.z                      |
      | tBodyAcc-mad()-X                     | tbodyacc.mad.x                      |
      | tBodyAcc-mad()-Y                     | tbodyacc.mad.y                      |
      | tBodyAcc-mad()-Z                     | tbodyacc.mad.z                      |
      | tBodyAcc-max()-X                     | tbodyacc.max.x                      |
      | tBodyAcc-max()-Y                     | tbodyacc.max.y                      |
      | tBodyAcc-max()-Z                     | tbodyacc.max.z                      |
      | tBodyAcc-min()-X                     | tbodyacc.min.x                      |
      | tBodyAcc-min()-Y                     | tbodyacc.min.y                      |
      | tBodyAcc-min()-Z                     | tbodyacc.min.z                      |
      | tBodyAcc-sma()                       | tbodyacc.sma                        |
      | tBodyAcc-energy()-X                  | tbodyacc.energy.x                   |
      | tBodyAcc-energy()-Y                  | tbodyacc.energy.y                   |
      | tBodyAcc-energy()-Z                  | tbodyacc.energy.z                   |
      | tBodyAcc-iqr()-X                     | tbodyacc.iqr.x                      |
      | tBodyAcc-iqr()-Y                     | tbodyacc.iqr.y                      |
      | tBodyAcc-iqr()-Z                     | tbodyacc.iqr.z                      |
      | tBodyAcc-entropy()-X                 | tbodyacc.entropy.x                  |
      | tBodyAcc-entropy()-Y                 | tbodyacc.entropy.y                  |
      | tBodyAcc-entropy()-Z                 | tbodyacc.entropy.z                  |
      | tBodyAcc-arCoeff()-X,1               | tbodyacc.arcoeff.x.1                |
      | tBodyAcc-arCoeff()-X,2               | tbodyacc.arcoeff.x.2                |
      | tBodyAcc-arCoeff()-X,3               | tbodyacc.arcoeff.x.3                |
      | tBodyAcc-arCoeff()-X,4               | tbodyacc.arcoeff.x.4                |
      | tBodyAcc-arCoeff()-Y,1               | tbodyacc.arcoeff.y.1                |
      | tBodyAcc-arCoeff()-Y,2               | tbodyacc.arcoeff.y.2                |
      | tBodyAcc-arCoeff()-Y,3               | tbodyacc.arcoeff.y.3                |
      | tBodyAcc-arCoeff()-Y,4               | tbodyacc.arcoeff.y.4                |
      | tBodyAcc-arCoeff()-Z,1               | tbodyacc.arcoeff.z.1                |
      | tBodyAcc-arCoeff()-Z,2               | tbodyacc.arcoeff.z.2                |
      | tBodyAcc-arCoeff()-Z,3               | tbodyacc.arcoeff.z.3                |
      | tBodyAcc-arCoeff()-Z,4               | tbodyacc.arcoeff.z.4                |
      | tBodyAcc-correlation()-X,Y           | tbodyacc.correlation.x.y            |
      | tBodyAcc-correlation()-X,Z           | tbodyacc.correlation.x.z            |
      | tBodyAcc-correlation()-Y,Z           | tbodyacc.correlation.y.z            |
      | tGravityAcc-mean()-X                 | tgravityacc.mean.x                  |
      | tGravityAcc-mean()-Y                 | tgravityacc.mean.y                  |
      | tGravityAcc-mean()-Z                 | tgravityacc.mean.z                  |
      | tGravityAcc-std()-X                  | tgravityacc.std.x                   |
      | tGravityAcc-std()-Y                  | tgravityacc.std.y                   |
      | tGravityAcc-std()-Z                  | tgravityacc.std.z                   |
      | tGravityAcc-mad()-X                  | tgravityacc.mad.x                   |
      | tGravityAcc-mad()-Y                  | tgravityacc.mad.y                   |
      | tGravityAcc-mad()-Z                  | tgravityacc.mad.z                   |
      | tGravityAcc-max()-X                  | tgravityacc.max.x                   |
      | tGravityAcc-max()-Y                  | tgravityacc.max.y                   |
      | tGravityAcc-max()-Z                  | tgravityacc.max.z                   |
      | tGravityAcc-min()-X                  | tgravityacc.min.x                   |
      | tGravityAcc-min()-Y                  | tgravityacc.min.y                   |
      | tGravityAcc-min()-Z                  | tgravityacc.min.z                   |
      | tGravityAcc-sma()                    | tgravityacc.sma                     |
      | tGravityAcc-energy()-X               | tgravityacc.energy.x                |
      | tGravityAcc-energy()-Y               | tgravityacc.energy.y                |
      | tGravityAcc-energy()-Z               | tgravityacc.energy.z                |
      | tGravityAcc-iqr()-X                  | tgravityacc.iqr.x                   |
      | tGravityAcc-iqr()-Y                  | tgravityacc.iqr.y                   |
      | tGravityAcc-iqr()-Z                  | tgravityacc.iqr.z                   |
      | tGravityAcc-entropy()-X              | tgravityacc.entropy.x               |
      | tGravityAcc-entropy()-Y              | tgravityacc.entropy.y               |
      | tGravityAcc-entropy()-Z              | tgravityacc.entropy.z               |
      | tGravityAcc-arCoeff()-X,1            | tgravityacc.arcoeff.x.1             |
      | tGravityAcc-arCoeff()-X,2            | tgravityacc.arcoeff.x.2             |
      | tGravityAcc-arCoeff()-X,3            | tgravityacc.arcoeff.x.3             |
      | tGravityAcc-arCoeff()-X,4            | tgravityacc.arcoeff.x.4             |
      | tGravityAcc-arCoeff()-Y,1            | tgravityacc.arcoeff.y.1             |
      | tGravityAcc-arCoeff()-Y,2            | tgravityacc.arcoeff.y.2             |
      | tGravityAcc-arCoeff()-Y,3            | tgravityacc.arcoeff.y.3             |
      | tGravityAcc-arCoeff()-Y,4            | tgravityacc.arcoeff.y.4             |
      | tGravityAcc-arCoeff()-Z,1            | tgravityacc.arcoeff.z.1             |
      | tGravityAcc-arCoeff()-Z,2            | tgravityacc.arcoeff.z.2             |
      | tGravityAcc-arCoeff()-Z,3            | tgravityacc.arcoeff.z.3             |
      | tGravityAcc-arCoeff()-Z,4            | tgravityacc.arcoeff.z.4             |
      | tGravityAcc-correlation()-X,Y        | tgravityacc.correlation.x.y         |
      | tGravityAcc-correlation()-X,Z        | tgravityacc.correlation.x.z         |
      | tGravityAcc-correlation()-Y,Z        | tgravityacc.correlation.y.z         |
      | tBodyAccJerk-mean()-X                | tbodyaccjerk.mean.x                 |
      | tBodyAccJerk-mean()-Y                | tbodyaccjerk.mean.y                 |
      | tBodyAccJerk-mean()-Z                | tbodyaccjerk.mean.z                 |
      | tBodyAccJerk-std()-X                 | tbodyaccjerk.std.x                  |
      | tBodyAccJerk-std()-Y                 | tbodyaccjerk.std.y                  |
      | tBodyAccJerk-std()-Z                 | tbodyaccjerk.std.z                  |
      | tBodyAccJerk-mad()-X                 | tbodyaccjerk.mad.x                  |
      | tBodyAccJerk-mad()-Y                 | tbodyaccjerk.mad.y                  |
      | tBodyAccJerk-mad()-Z                 | tbodyaccjerk.mad.z                  |
      | tBodyAccJerk-max()-X                 | tbodyaccjerk.max.x                  |
      | tBodyAccJerk-max()-Y                 | tbodyaccjerk.max.y                  |
      | tBodyAccJerk-max()-Z                 | tbodyaccjerk.max.z                  |
      | tBodyAccJerk-min()-X                 | tbodyaccjerk.min.x                  |
      | tBodyAccJerk-min()-Y                 | tbodyaccjerk.min.y                  |
      | tBodyAccJerk-min()-Z                 | tbodyaccjerk.min.z                  |
      | tBodyAccJerk-sma()                   | tbodyaccjerk.sma                    |
      | tBodyAccJerk-energy()-X              | tbodyaccjerk.energy.x               |
      | tBodyAccJerk-energy()-Y              | tbodyaccjerk.energy.y               |
      | tBodyAccJerk-energy()-Z              | tbodyaccjerk.energy.z               |
      | tBodyAccJerk-iqr()-X                 | tbodyaccjerk.iqr.x                  |
      | tBodyAccJerk-iqr()-Y                 | tbodyaccjerk.iqr.y                  |
      | tBodyAccJerk-iqr()-Z                 | tbodyaccjerk.iqr.z                  |
      | tBodyAccJerk-entropy()-X             | tbodyaccjerk.entropy.x              |
      | tBodyAccJerk-entropy()-Y             | tbodyaccjerk.entropy.y              |
      | tBodyAccJerk-entropy()-Z             | tbodyaccjerk.entropy.z              |
      | tBodyAccJerk-arCoeff()-X,1           | tbodyaccjerk.arcoeff.x.1            |
      | tBodyAccJerk-arCoeff()-X,2           | tbodyaccjerk.arcoeff.x.2            |
      | tBodyAccJerk-arCoeff()-X,3           | tbodyaccjerk.arcoeff.x.3            |
      | tBodyAccJerk-arCoeff()-X,4           | tbodyaccjerk.arcoeff.x.4            |
      | tBodyAccJerk-arCoeff()-Y,1           | tbodyaccjerk.arcoeff.y.1            |
      | tBodyAccJerk-arCoeff()-Y,2           | tbodyaccjerk.arcoeff.y.2            |
      | tBodyAccJerk-arCoeff()-Y,3           | tbodyaccjerk.arcoeff.y.3            |
      | tBodyAccJerk-arCoeff()-Y,4           | tbodyaccjerk.arcoeff.y.4            |
      | tBodyAccJerk-arCoeff()-Z,1           | tbodyaccjerk.arcoeff.z.1            |
      | tBodyAccJerk-arCoeff()-Z,2           | tbodyaccjerk.arcoeff.z.2            |
      | tBodyAccJerk-arCoeff()-Z,3           | tbodyaccjerk.arcoeff.z.3            |
      | tBodyAccJerk-arCoeff()-Z,4           | tbodyaccjerk.arcoeff.z.4            |
      | tBodyAccJerk-correlation()-X,Y       | tbodyaccjerk.correlation.x.y        |
      | tBodyAccJerk-correlation()-X,Z       | tbodyaccjerk.correlation.x.z        |
      | tBodyAccJerk-correlation()-Y,Z       | tbodyaccjerk.correlation.y.z        |
      | tBodyGyro-mean()-X                   | tbodygyro.mean.x                    |
      | tBodyGyro-mean()-Y                   | tbodygyro.mean.y                    |
      | tBodyGyro-mean()-Z                   | tbodygyro.mean.z                    |
      | tBodyGyro-std()-X                    | tbodygyro.std.x                     |
      | tBodyGyro-std()-Y                    | tbodygyro.std.y                     |
      | tBodyGyro-std()-Z                    | tbodygyro.std.z                     |
      | tBodyGyro-mad()-X                    | tbodygyro.mad.x                     |
      | tBodyGyro-mad()-Y                    | tbodygyro.mad.y                     |
      | tBodyGyro-mad()-Z                    | tbodygyro.mad.z                     |
      | tBodyGyro-max()-X                    | tbodygyro.max.x                     |
      | tBodyGyro-max()-Y                    | tbodygyro.max.y                     |
      | tBodyGyro-max()-Z                    | tbodygyro.max.z                     |
      | tBodyGyro-min()-X                    | tbodygyro.min.x                     |
      | tBodyGyro-min()-Y                    | tbodygyro.min.y                     |
      | tBodyGyro-min()-Z                    | tbodygyro.min.z                     |
      | tBodyGyro-sma()                      | tbodygyro.sma                       |
      | tBodyGyro-energy()-X                 | tbodygyro.energy.x                  |
      | tBodyGyro-energy()-Y                 | tbodygyro.energy.y                  |
      | tBodyGyro-energy()-Z                 | tbodygyro.energy.z                  |
      | tBodyGyro-iqr()-X                    | tbodygyro.iqr.x                     |
      | tBodyGyro-iqr()-Y                    | tbodygyro.iqr.y                     |
      | tBodyGyro-iqr()-Z                    | tbodygyro.iqr.z                     |
      | tBodyGyro-entropy()-X                | tbodygyro.entropy.x                 |
      | tBodyGyro-entropy()-Y                | tbodygyro.entropy.y                 |
      | tBodyGyro-entropy()-Z                | tbodygyro.entropy.z                 |
      | tBodyGyro-arCoeff()-X,1              | tbodygyro.arcoeff.x.1               |
      | tBodyGyro-arCoeff()-X,2              | tbodygyro.arcoeff.x.2               |
      | tBodyGyro-arCoeff()-X,3              | tbodygyro.arcoeff.x.3               |
      | tBodyGyro-arCoeff()-X,4              | tbodygyro.arcoeff.x.4               |
      | tBodyGyro-arCoeff()-Y,1              | tbodygyro.arcoeff.y.1               |
      | tBodyGyro-arCoeff()-Y,2              | tbodygyro.arcoeff.y.2               |
      | tBodyGyro-arCoeff()-Y,3              | tbodygyro.arcoeff.y.3               |
      | tBodyGyro-arCoeff()-Y,4              | tbodygyro.arcoeff.y.4               |
      | tBodyGyro-arCoeff()-Z,1              | tbodygyro.arcoeff.z.1               |
      | tBodyGyro-arCoeff()-Z,2              | tbodygyro.arcoeff.z.2               |
      | tBodyGyro-arCoeff()-Z,3              | tbodygyro.arcoeff.z.3               |
      | tBodyGyro-arCoeff()-Z,4              | tbodygyro.arcoeff.z.4               |
      | tBodyGyro-correlation()-X,Y          | tbodygyro.correlation.x.y           |
      | tBodyGyro-correlation()-X,Z          | tbodygyro.correlation.x.z           |
      | tBodyGyro-correlation()-Y,Z          | tbodygyro.correlation.y.z           |
      | tBodyGyroJerk-mean()-X               | tbodygyrojerk.mean.x                |
      | tBodyGyroJerk-mean()-Y               | tbodygyrojerk.mean.y                |
      | tBodyGyroJerk-mean()-Z               | tbodygyrojerk.mean.z                |
      | tBodyGyroJerk-std()-X                | tbodygyrojerk.std.x                 |
      | tBodyGyroJerk-std()-Y                | tbodygyrojerk.std.y                 |
      | tBodyGyroJerk-std()-Z                | tbodygyrojerk.std.z                 |
      | tBodyGyroJerk-mad()-X                | tbodygyrojerk.mad.x                 |
      | tBodyGyroJerk-mad()-Y                | tbodygyrojerk.mad.y                 |
      | tBodyGyroJerk-mad()-Z                | tbodygyrojerk.mad.z                 |
      | tBodyGyroJerk-max()-X                | tbodygyrojerk.max.x                 |
      | tBodyGyroJerk-max()-Y                | tbodygyrojerk.max.y                 |
      | tBodyGyroJerk-max()-Z                | tbodygyrojerk.max.z                 |
      | tBodyGyroJerk-min()-X                | tbodygyrojerk.min.x                 |
      | tBodyGyroJerk-min()-Y                | tbodygyrojerk.min.y                 |
      | tBodyGyroJerk-min()-Z                | tbodygyrojerk.min.z                 |
      | tBodyGyroJerk-sma()                  | tbodygyrojerk.sma                   |
      | tBodyGyroJerk-energy()-X             | tbodygyrojerk.energy.x              |
      | tBodyGyroJerk-energy()-Y             | tbodygyrojerk.energy.y              |
      | tBodyGyroJerk-energy()-Z             | tbodygyrojerk.energy.z              |
      | tBodyGyroJerk-iqr()-X                | tbodygyrojerk.iqr.x                 |
      | tBodyGyroJerk-iqr()-Y                | tbodygyrojerk.iqr.y                 |
      | tBodyGyroJerk-iqr()-Z                | tbodygyrojerk.iqr.z                 |
      | tBodyGyroJerk-entropy()-X            | tbodygyrojerk.entropy.x             |
      | tBodyGyroJerk-entropy()-Y            | tbodygyrojerk.entropy.y             |
      | tBodyGyroJerk-entropy()-Z            | tbodygyrojerk.entropy.z             |
      | tBodyGyroJerk-arCoeff()-X,1          | tbodygyrojerk.arcoeff.x.1           |
      | tBodyGyroJerk-arCoeff()-X,2          | tbodygyrojerk.arcoeff.x.2           |
      | tBodyGyroJerk-arCoeff()-X,3          | tbodygyrojerk.arcoeff.x.3           |
      | tBodyGyroJerk-arCoeff()-X,4          | tbodygyrojerk.arcoeff.x.4           |
      | tBodyGyroJerk-arCoeff()-Y,1          | tbodygyrojerk.arcoeff.y.1           |
      | tBodyGyroJerk-arCoeff()-Y,2          | tbodygyrojerk.arcoeff.y.2           |
      | tBodyGyroJerk-arCoeff()-Y,3          | tbodygyrojerk.arcoeff.y.3           |
      | tBodyGyroJerk-arCoeff()-Y,4          | tbodygyrojerk.arcoeff.y.4           |
      | tBodyGyroJerk-arCoeff()-Z,1          | tbodygyrojerk.arcoeff.z.1           |
      | tBodyGyroJerk-arCoeff()-Z,2          | tbodygyrojerk.arcoeff.z.2           |
      | tBodyGyroJerk-arCoeff()-Z,3          | tbodygyrojerk.arcoeff.z.3           |
      | tBodyGyroJerk-arCoeff()-Z,4          | tbodygyrojerk.arcoeff.z.4           |
      | tBodyGyroJerk-correlation()-X,Y      | tbodygyrojerk.correlation.x.y       |
      | tBodyGyroJerk-correlation()-X,Z      | tbodygyrojerk.correlation.x.z       |
      | tBodyGyroJerk-correlation()-Y,Z      | tbodygyrojerk.correlation.y.z       |
      | tBodyAccMag-mean()                   | tbodyaccmag.mean                    |
      | tBodyAccMag-std()                    | tbodyaccmag.std                     |
      | tBodyAccMag-mad()                    | tbodyaccmag.mad                     |
      | tBodyAccMag-max()                    | tbodyaccmag.max                     |
      | tBodyAccMag-min()                    | tbodyaccmag.min                     |
      | tBodyAccMag-sma()                    | tbodyaccmag.sma                     |
      | tBodyAccMag-energy()                 | tbodyaccmag.energy                  |
      | tBodyAccMag-iqr()                    | tbodyaccmag.iqr                     |
      | tBodyAccMag-entropy()                | tbodyaccmag.entropy                 |
      | tBodyAccMag-arCoeff()1               | tbodyaccmag.arcoeff1                |
      | tBodyAccMag-arCoeff()2               | tbodyaccmag.arcoeff2                |
      | tBodyAccMag-arCoeff()3               | tbodyaccmag.arcoeff3                |
      | tBodyAccMag-arCoeff()4               | tbodyaccmag.arcoeff4                |
      | tGravityAccMag-mean()                | tgravityaccmag.mean                 |
      | tGravityAccMag-std()                 | tgravityaccmag.std                  |
      | tGravityAccMag-mad()                 | tgravityaccmag.mad                  |
      | tGravityAccMag-max()                 | tgravityaccmag.max                  |
      | tGravityAccMag-min()                 | tgravityaccmag.min                  |
      | tGravityAccMag-sma()                 | tgravityaccmag.sma                  |
      | tGravityAccMag-energy()              | tgravityaccmag.energy               |
      | tGravityAccMag-iqr()                 | tgravityaccmag.iqr                  |
      | tGravityAccMag-entropy()             | tgravityaccmag.entropy              |
      | tGravityAccMag-arCoeff()1            | tgravityaccmag.arcoeff1             |
      | tGravityAccMag-arCoeff()2            | tgravityaccmag.arcoeff2             |
      | tGravityAccMag-arCoeff()3            | tgravityaccmag.arcoeff3             |
      | tGravityAccMag-arCoeff()4            | tgravityaccmag.arcoeff4             |
      | tBodyAccJerkMag-mean()               | tbodyaccjerkmag.mean                |
      | tBodyAccJerkMag-std()                | tbodyaccjerkmag.std                 |
      | tBodyAccJerkMag-mad()                | tbodyaccjerkmag.mad                 |
      | tBodyAccJerkMag-max()                | tbodyaccjerkmag.max                 |
      | tBodyAccJerkMag-min()                | tbodyaccjerkmag.min                 |
      | tBodyAccJerkMag-sma()                | tbodyaccjerkmag.sma                 |
      | tBodyAccJerkMag-energy()             | tbodyaccjerkmag.energy              |
      | tBodyAccJerkMag-iqr()                | tbodyaccjerkmag.iqr                 |
      | tBodyAccJerkMag-entropy()            | tbodyaccjerkmag.entropy             |
      | tBodyAccJerkMag-arCoeff()1           | tbodyaccjerkmag.arcoeff1            |
      | tBodyAccJerkMag-arCoeff()2           | tbodyaccjerkmag.arcoeff2            |
      | tBodyAccJerkMag-arCoeff()3           | tbodyaccjerkmag.arcoeff3            |
      | tBodyAccJerkMag-arCoeff()4           | tbodyaccjerkmag.arcoeff4            |
      | tBodyGyroMag-mean()                  | tbodygyromag.mean                   |
      | tBodyGyroMag-std()                   | tbodygyromag.std                    |
      | tBodyGyroMag-mad()                   | tbodygyromag.mad                    |
      | tBodyGyroMag-max()                   | tbodygyromag.max                    |
      | tBodyGyroMag-min()                   | tbodygyromag.min                    |
      | tBodyGyroMag-sma()                   | tbodygyromag.sma                    |
      | tBodyGyroMag-energy()                | tbodygyromag.energy                 |
      | tBodyGyroMag-iqr()                   | tbodygyromag.iqr                    |
      | tBodyGyroMag-entropy()               | tbodygyromag.entropy                |
      | tBodyGyroMag-arCoeff()1              | tbodygyromag.arcoeff1               |
      | tBodyGyroMag-arCoeff()2              | tbodygyromag.arcoeff2               |
      | tBodyGyroMag-arCoeff()3              | tbodygyromag.arcoeff3               |
      | tBodyGyroMag-arCoeff()4              | tbodygyromag.arcoeff4               |
      | tBodyGyroJerkMag-mean()              | tbodygyrojerkmag.mean               |
      | tBodyGyroJerkMag-std()               | tbodygyrojerkmag.std                |
      | tBodyGyroJerkMag-mad()               | tbodygyrojerkmag.mad                |
      | tBodyGyroJerkMag-max()               | tbodygyrojerkmag.max                |
      | tBodyGyroJerkMag-min()               | tbodygyrojerkmag.min                |
      | tBodyGyroJerkMag-sma()               | tbodygyrojerkmag.sma                |
      | tBodyGyroJerkMag-energy()            | tbodygyrojerkmag.energy             |
      | tBodyGyroJerkMag-iqr()               | tbodygyrojerkmag.iqr                |
      | tBodyGyroJerkMag-entropy()           | tbodygyrojerkmag.entropy            |
      | tBodyGyroJerkMag-arCoeff()1          | tbodygyrojerkmag.arcoeff1           |
      | tBodyGyroJerkMag-arCoeff()2          | tbodygyrojerkmag.arcoeff2           |
      | tBodyGyroJerkMag-arCoeff()3          | tbodygyrojerkmag.arcoeff3           |
      | tBodyGyroJerkMag-arCoeff()4          | tbodygyrojerkmag.arcoeff4           |
      | fBodyAcc-mean()-X                    | fbodyacc.mean.x                     |
      | fBodyAcc-mean()-Y                    | fbodyacc.mean.y                     |
      | fBodyAcc-mean()-Z                    | fbodyacc.mean.z                     |
      | fBodyAcc-std()-X                     | fbodyacc.std.x                      |
      | fBodyAcc-std()-Y                     | fbodyacc.std.y                      |
      | fBodyAcc-std()-Z                     | fbodyacc.std.z                      |
      | fBodyAcc-mad()-X                     | fbodyacc.mad.x                      |
      | fBodyAcc-mad()-Y                     | fbodyacc.mad.y                      |
      | fBodyAcc-mad()-Z                     | fbodyacc.mad.z                      |
      | fBodyAcc-max()-X                     | fbodyacc.max.x                      |
      | fBodyAcc-max()-Y                     | fbodyacc.max.y                      |
      | fBodyAcc-max()-Z                     | fbodyacc.max.z                      |
      | fBodyAcc-min()-X                     | fbodyacc.min.x                      |
      | fBodyAcc-min()-Y                     | fbodyacc.min.y                      |
      | fBodyAcc-min()-Z                     | fbodyacc.min.z                      |
      | fBodyAcc-sma()                       | fbodyacc.sma                        |
      | fBodyAcc-energy()-X                  | fbodyacc.energy.x                   |
      | fBodyAcc-energy()-Y                  | fbodyacc.energy.y                   |
      | fBodyAcc-energy()-Z                  | fbodyacc.energy.z                   |
      | fBodyAcc-iqr()-X                     | fbodyacc.iqr.x                      |
      | fBodyAcc-iqr()-Y                     | fbodyacc.iqr.y                      |
      | fBodyAcc-iqr()-Z                     | fbodyacc.iqr.z                      |
      | fBodyAcc-entropy()-X                 | fbodyacc.entropy.x                  |
      | fBodyAcc-entropy()-Y                 | fbodyacc.entropy.y                  |
      | fBodyAcc-entropy()-Z                 | fbodyacc.entropy.z                  |
      | fBodyAcc-maxInds-X                   | fbodyacc.maxinds.x                  |
      | fBodyAcc-maxInds-Y                   | fbodyacc.maxinds.y                  |
      | fBodyAcc-maxInds-Z                   | fbodyacc.maxinds.z                  |
      | fBodyAcc-meanFreq()-X                | fbodyacc.meanfreq.x                 |
      | fBodyAcc-meanFreq()-Y                | fbodyacc.meanfreq.y                 |
      | fBodyAcc-meanFreq()-Z                | fbodyacc.meanfreq.z                 |
      | fBodyAcc-skewness()-X                | fbodyacc.skewness.x                 |
      | fBodyAcc-kurtosis()-X                | fbodyacc.kurtosis.x                 |
      | fBodyAcc-skewness()-Y                | fbodyacc.skewness.y                 |
      | fBodyAcc-kurtosis()-Y                | fbodyacc.kurtosis.y                 |
      | fBodyAcc-skewness()-Z                | fbodyacc.skewness.z                 |
      | fBodyAcc-kurtosis()-Z                | fbodyacc.kurtosis.z                 |
      | fBodyAcc-bandsEnergy()-1,8           | fbodyacc.bandsenergy.1.8            |
      | fBodyAcc-bandsEnergy()-9,16          | fbodyacc.bandsenergy.9.16           |
      | fBodyAcc-bandsEnergy()-17,24         | fbodyacc.bandsenergy.17.24          |
      | fBodyAcc-bandsEnergy()-25,32         | fbodyacc.bandsenergy.25.32          |
      | fBodyAcc-bandsEnergy()-33,40         | fbodyacc.bandsenergy.33.40          |
      | fBodyAcc-bandsEnergy()-41,48         | fbodyacc.bandsenergy.41.48          |
      | fBodyAcc-bandsEnergy()-49,56         | fbodyacc.bandsenergy.49.56          |
      | fBodyAcc-bandsEnergy()-57,64         | fbodyacc.bandsenergy.57.64          |
      | fBodyAcc-bandsEnergy()-1,16          | fbodyacc.bandsenergy.1.16           |
      | fBodyAcc-bandsEnergy()-17,32         | fbodyacc.bandsenergy.17.32          |
      | fBodyAcc-bandsEnergy()-33,48         | fbodyacc.bandsenergy.33.48          |
      | fBodyAcc-bandsEnergy()-49,64         | fbodyacc.bandsenergy.49.64          |
      | fBodyAcc-bandsEnergy()-1,24          | fbodyacc.bandsenergy.1.24           |
      | fBodyAcc-bandsEnergy()-25,48         | fbodyacc.bandsenergy.25.48          |
      | fBodyAcc-bandsEnergy()-1,8           | fbodyacc.bandsenergy.1.8            |
      | fBodyAcc-bandsEnergy()-9,16          | fbodyacc.bandsenergy.9.16           |
      | fBodyAcc-bandsEnergy()-17,24         | fbodyacc.bandsenergy.17.24          |
      | fBodyAcc-bandsEnergy()-25,32         | fbodyacc.bandsenergy.25.32          |
      | fBodyAcc-bandsEnergy()-33,40         | fbodyacc.bandsenergy.33.40          |
      | fBodyAcc-bandsEnergy()-41,48         | fbodyacc.bandsenergy.41.48          |
      | fBodyAcc-bandsEnergy()-49,56         | fbodyacc.bandsenergy.49.56          |
      | fBodyAcc-bandsEnergy()-57,64         | fbodyacc.bandsenergy.57.64          |
      | fBodyAcc-bandsEnergy()-1,16          | fbodyacc.bandsenergy.1.16           |
      | fBodyAcc-bandsEnergy()-17,32         | fbodyacc.bandsenergy.17.32          |
      | fBodyAcc-bandsEnergy()-33,48         | fbodyacc.bandsenergy.33.48          |
      | fBodyAcc-bandsEnergy()-49,64         | fbodyacc.bandsenergy.49.64          |
      | fBodyAcc-bandsEnergy()-1,24          | fbodyacc.bandsenergy.1.24           |
      | fBodyAcc-bandsEnergy()-25,48         | fbodyacc.bandsenergy.25.48          |
      | fBodyAcc-bandsEnergy()-1,8           | fbodyacc.bandsenergy.1.8            |
      | fBodyAcc-bandsEnergy()-9,16          | fbodyacc.bandsenergy.9.16           |
      | fBodyAcc-bandsEnergy()-17,24         | fbodyacc.bandsenergy.17.24          |
      | fBodyAcc-bandsEnergy()-25,32         | fbodyacc.bandsenergy.25.32          |
      | fBodyAcc-bandsEnergy()-33,40         | fbodyacc.bandsenergy.33.40          |
      | fBodyAcc-bandsEnergy()-41,48         | fbodyacc.bandsenergy.41.48          |
      | fBodyAcc-bandsEnergy()-49,56         | fbodyacc.bandsenergy.49.56          |
      | fBodyAcc-bandsEnergy()-57,64         | fbodyacc.bandsenergy.57.64          |
      | fBodyAcc-bandsEnergy()-1,16          | fbodyacc.bandsenergy.1.16           |
      | fBodyAcc-bandsEnergy()-17,32         | fbodyacc.bandsenergy.17.32          |
      | fBodyAcc-bandsEnergy()-33,48         | fbodyacc.bandsenergy.33.48          |
      | fBodyAcc-bandsEnergy()-49,64         | fbodyacc.bandsenergy.49.64          |
      | fBodyAcc-bandsEnergy()-1,24          | fbodyacc.bandsenergy.1.24           |
      | fBodyAcc-bandsEnergy()-25,48         | fbodyacc.bandsenergy.25.48          |
      | fBodyAccJerk-mean()-X                | fbodyaccjerk.mean.x                 |
      | fBodyAccJerk-mean()-Y                | fbodyaccjerk.mean.y                 |
      | fBodyAccJerk-mean()-Z                | fbodyaccjerk.mean.z                 |
      | fBodyAccJerk-std()-X                 | fbodyaccjerk.std.x                  |
      | fBodyAccJerk-std()-Y                 | fbodyaccjerk.std.y                  |
      | fBodyAccJerk-std()-Z                 | fbodyaccjerk.std.z                  |
      | fBodyAccJerk-mad()-X                 | fbodyaccjerk.mad.x                  |
      | fBodyAccJerk-mad()-Y                 | fbodyaccjerk.mad.y                  |
      | fBodyAccJerk-mad()-Z                 | fbodyaccjerk.mad.z                  |
      | fBodyAccJerk-max()-X                 | fbodyaccjerk.max.x                  |
      | fBodyAccJerk-max()-Y                 | fbodyaccjerk.max.y                  |
      | fBodyAccJerk-max()-Z                 | fbodyaccjerk.max.z                  |
      | fBodyAccJerk-min()-X                 | fbodyaccjerk.min.x                  |
      | fBodyAccJerk-min()-Y                 | fbodyaccjerk.min.y                  |
      | fBodyAccJerk-min()-Z                 | fbodyaccjerk.min.z                  |
      | fBodyAccJerk-sma()                   | fbodyaccjerk.sma                    |
      | fBodyAccJerk-energy()-X              | fbodyaccjerk.energy.x               |
      | fBodyAccJerk-energy()-Y              | fbodyaccjerk.energy.y               |
      | fBodyAccJerk-energy()-Z              | fbodyaccjerk.energy.z               |
      | fBodyAccJerk-iqr()-X                 | fbodyaccjerk.iqr.x                  |
      | fBodyAccJerk-iqr()-Y                 | fbodyaccjerk.iqr.y                  |
      | fBodyAccJerk-iqr()-Z                 | fbodyaccjerk.iqr.z                  |
      | fBodyAccJerk-entropy()-X             | fbodyaccjerk.entropy.x              |
      | fBodyAccJerk-entropy()-Y             | fbodyaccjerk.entropy.y              |
      | fBodyAccJerk-entropy()-Z             | fbodyaccjerk.entropy.z              |
      | fBodyAccJerk-maxInds-X               | fbodyaccjerk.maxinds.x              |
      | fBodyAccJerk-maxInds-Y               | fbodyaccjerk.maxinds.y              |
      | fBodyAccJerk-maxInds-Z               | fbodyaccjerk.maxinds.z              |
      | fBodyAccJerk-meanFreq()-X            | fbodyaccjerk.meanfreq.x             |
      | fBodyAccJerk-meanFreq()-Y            | fbodyaccjerk.meanfreq.y             |
      | fBodyAccJerk-meanFreq()-Z            | fbodyaccjerk.meanfreq.z             |
      | fBodyAccJerk-skewness()-X            | fbodyaccjerk.skewness.x             |
      | fBodyAccJerk-kurtosis()-X            | fbodyaccjerk.kurtosis.x             |
      | fBodyAccJerk-skewness()-Y            | fbodyaccjerk.skewness.y             |
      | fBodyAccJerk-kurtosis()-Y            | fbodyaccjerk.kurtosis.y             |
      | fBodyAccJerk-skewness()-Z            | fbodyaccjerk.skewness.z             |
      | fBodyAccJerk-kurtosis()-Z            | fbodyaccjerk.kurtosis.z             |
      | fBodyAccJerk-bandsEnergy()-1,8       | fbodyaccjerk.bandsenergy.1.8        |
      | fBodyAccJerk-bandsEnergy()-9,16      | fbodyaccjerk.bandsenergy.9.16       |
      | fBodyAccJerk-bandsEnergy()-17,24     | fbodyaccjerk.bandsenergy.17.24      |
      | fBodyAccJerk-bandsEnergy()-25,32     | fbodyaccjerk.bandsenergy.25.32      |
      | fBodyAccJerk-bandsEnergy()-33,40     | fbodyaccjerk.bandsenergy.33.40      |
      | fBodyAccJerk-bandsEnergy()-41,48     | fbodyaccjerk.bandsenergy.41.48      |
      | fBodyAccJerk-bandsEnergy()-49,56     | fbodyaccjerk.bandsenergy.49.56      |
      | fBodyAccJerk-bandsEnergy()-57,64     | fbodyaccjerk.bandsenergy.57.64      |
      | fBodyAccJerk-bandsEnergy()-1,16      | fbodyaccjerk.bandsenergy.1.16       |
      | fBodyAccJerk-bandsEnergy()-17,32     | fbodyaccjerk.bandsenergy.17.32      |
      | fBodyAccJerk-bandsEnergy()-33,48     | fbodyaccjerk.bandsenergy.33.48      |
      | fBodyAccJerk-bandsEnergy()-49,64     | fbodyaccjerk.bandsenergy.49.64      |
      | fBodyAccJerk-bandsEnergy()-1,24      | fbodyaccjerk.bandsenergy.1.24       |
      | fBodyAccJerk-bandsEnergy()-25,48     | fbodyaccjerk.bandsenergy.25.48      |
      | fBodyAccJerk-bandsEnergy()-1,8       | fbodyaccjerk.bandsenergy.1.8        |
      | fBodyAccJerk-bandsEnergy()-9,16      | fbodyaccjerk.bandsenergy.9.16       |
      | fBodyAccJerk-bandsEnergy()-17,24     | fbodyaccjerk.bandsenergy.17.24      |
      | fBodyAccJerk-bandsEnergy()-25,32     | fbodyaccjerk.bandsenergy.25.32      |
      | fBodyAccJerk-bandsEnergy()-33,40     | fbodyaccjerk.bandsenergy.33.40      |
      | fBodyAccJerk-bandsEnergy()-41,48     | fbodyaccjerk.bandsenergy.41.48      |
      | fBodyAccJerk-bandsEnergy()-49,56     | fbodyaccjerk.bandsenergy.49.56      |
      | fBodyAccJerk-bandsEnergy()-57,64     | fbodyaccjerk.bandsenergy.57.64      |
      | fBodyAccJerk-bandsEnergy()-1,16      | fbodyaccjerk.bandsenergy.1.16       |
      | fBodyAccJerk-bandsEnergy()-17,32     | fbodyaccjerk.bandsenergy.17.32      |
      | fBodyAccJerk-bandsEnergy()-33,48     | fbodyaccjerk.bandsenergy.33.48      |
      | fBodyAccJerk-bandsEnergy()-49,64     | fbodyaccjerk.bandsenergy.49.64      |
      | fBodyAccJerk-bandsEnergy()-1,24      | fbodyaccjerk.bandsenergy.1.24       |
      | fBodyAccJerk-bandsEnergy()-25,48     | fbodyaccjerk.bandsenergy.25.48      |
      | fBodyAccJerk-bandsEnergy()-1,8       | fbodyaccjerk.bandsenergy.1.8        |
      | fBodyAccJerk-bandsEnergy()-9,16      | fbodyaccjerk.bandsenergy.9.16       |
      | fBodyAccJerk-bandsEnergy()-17,24     | fbodyaccjerk.bandsenergy.17.24      |
      | fBodyAccJerk-bandsEnergy()-25,32     | fbodyaccjerk.bandsenergy.25.32      |
      | fBodyAccJerk-bandsEnergy()-33,40     | fbodyaccjerk.bandsenergy.33.40      |
      | fBodyAccJerk-bandsEnergy()-41,48     | fbodyaccjerk.bandsenergy.41.48      |
      | fBodyAccJerk-bandsEnergy()-49,56     | fbodyaccjerk.bandsenergy.49.56      |
      | fBodyAccJerk-bandsEnergy()-57,64     | fbodyaccjerk.bandsenergy.57.64      |
      | fBodyAccJerk-bandsEnergy()-1,16      | fbodyaccjerk.bandsenergy.1.16       |
      | fBodyAccJerk-bandsEnergy()-17,32     | fbodyaccjerk.bandsenergy.17.32      |
      | fBodyAccJerk-bandsEnergy()-33,48     | fbodyaccjerk.bandsenergy.33.48      |
      | fBodyAccJerk-bandsEnergy()-49,64     | fbodyaccjerk.bandsenergy.49.64      |
      | fBodyAccJerk-bandsEnergy()-1,24      | fbodyaccjerk.bandsenergy.1.24       |
      | fBodyAccJerk-bandsEnergy()-25,48     | fbodyaccjerk.bandsenergy.25.48      |
      | fBodyGyro-mean()-X                   | fbodygyro.mean.x                    |
      | fBodyGyro-mean()-Y                   | fbodygyro.mean.y                    |
      | fBodyGyro-mean()-Z                   | fbodygyro.mean.z                    |
      | fBodyGyro-std()-X                    | fbodygyro.std.x                     |
      | fBodyGyro-std()-Y                    | fbodygyro.std.y                     |
      | fBodyGyro-std()-Z                    | fbodygyro.std.z                     |
      | fBodyGyro-mad()-X                    | fbodygyro.mad.x                     |
      | fBodyGyro-mad()-Y                    | fbodygyro.mad.y                     |
      | fBodyGyro-mad()-Z                    | fbodygyro.mad.z                     |
      | fBodyGyro-max()-X                    | fbodygyro.max.x                     |
      | fBodyGyro-max()-Y                    | fbodygyro.max.y                     |
      | fBodyGyro-max()-Z                    | fbodygyro.max.z                     |
      | fBodyGyro-min()-X                    | fbodygyro.min.x                     |
      | fBodyGyro-min()-Y                    | fbodygyro.min.y                     |
      | fBodyGyro-min()-Z                    | fbodygyro.min.z                     |
      | fBodyGyro-sma()                      | fbodygyro.sma                       |
      | fBodyGyro-energy()-X                 | fbodygyro.energy.x                  |
      | fBodyGyro-energy()-Y                 | fbodygyro.energy.y                  |
      | fBodyGyro-energy()-Z                 | fbodygyro.energy.z                  |
      | fBodyGyro-iqr()-X                    | fbodygyro.iqr.x                     |
      | fBodyGyro-iqr()-Y                    | fbodygyro.iqr.y                     |
      | fBodyGyro-iqr()-Z                    | fbodygyro.iqr.z                     |
      | fBodyGyro-entropy()-X                | fbodygyro.entropy.x                 |
      | fBodyGyro-entropy()-Y                | fbodygyro.entropy.y                 |
      | fBodyGyro-entropy()-Z                | fbodygyro.entropy.z                 |
      | fBodyGyro-maxInds-X                  | fbodygyro.maxinds.x                 |
      | fBodyGyro-maxInds-Y                  | fbodygyro.maxinds.y                 |
      | fBodyGyro-maxInds-Z                  | fbodygyro.maxinds.z                 |
      | fBodyGyro-meanFreq()-X               | fbodygyro.meanfreq.x                |
      | fBodyGyro-meanFreq()-Y               | fbodygyro.meanfreq.y                |
      | fBodyGyro-meanFreq()-Z               | fbodygyro.meanfreq.z                |
      | fBodyGyro-skewness()-X               | fbodygyro.skewness.x                |
      | fBodyGyro-kurtosis()-X               | fbodygyro.kurtosis.x                |
      | fBodyGyro-skewness()-Y               | fbodygyro.skewness.y                |
      | fBodyGyro-kurtosis()-Y               | fbodygyro.kurtosis.y                |
      | fBodyGyro-skewness()-Z               | fbodygyro.skewness.z                |
      | fBodyGyro-kurtosis()-Z               | fbodygyro.kurtosis.z                |
      | fBodyGyro-bandsEnergy()-1,8          | fbodygyro.bandsenergy.1.8           |
      | fBodyGyro-bandsEnergy()-9,16         | fbodygyro.bandsenergy.9.16          |
      | fBodyGyro-bandsEnergy()-17,24        | fbodygyro.bandsenergy.17.24         |
      | fBodyGyro-bandsEnergy()-25,32        | fbodygyro.bandsenergy.25.32         |
      | fBodyGyro-bandsEnergy()-33,40        | fbodygyro.bandsenergy.33.40         |
      | fBodyGyro-bandsEnergy()-41,48        | fbodygyro.bandsenergy.41.48         |
      | fBodyGyro-bandsEnergy()-49,56        | fbodygyro.bandsenergy.49.56         |
      | fBodyGyro-bandsEnergy()-57,64        | fbodygyro.bandsenergy.57.64         |
      | fBodyGyro-bandsEnergy()-1,16         | fbodygyro.bandsenergy.1.16          |
      | fBodyGyro-bandsEnergy()-17,32        | fbodygyro.bandsenergy.17.32         |
      | fBodyGyro-bandsEnergy()-33,48        | fbodygyro.bandsenergy.33.48         |
      | fBodyGyro-bandsEnergy()-49,64        | fbodygyro.bandsenergy.49.64         |
      | fBodyGyro-bandsEnergy()-1,24         | fbodygyro.bandsenergy.1.24          |
      | fBodyGyro-bandsEnergy()-25,48        | fbodygyro.bandsenergy.25.48         |
      | fBodyGyro-bandsEnergy()-1,8          | fbodygyro.bandsenergy.1.8           |
      | fBodyGyro-bandsEnergy()-9,16         | fbodygyro.bandsenergy.9.16          |
      | fBodyGyro-bandsEnergy()-17,24        | fbodygyro.bandsenergy.17.24         |
      | fBodyGyro-bandsEnergy()-25,32        | fbodygyro.bandsenergy.25.32         |
      | fBodyGyro-bandsEnergy()-33,40        | fbodygyro.bandsenergy.33.40         |
      | fBodyGyro-bandsEnergy()-41,48        | fbodygyro.bandsenergy.41.48         |
      | fBodyGyro-bandsEnergy()-49,56        | fbodygyro.bandsenergy.49.56         |
      | fBodyGyro-bandsEnergy()-57,64        | fbodygyro.bandsenergy.57.64         |
      | fBodyGyro-bandsEnergy()-1,16         | fbodygyro.bandsenergy.1.16          |
      | fBodyGyro-bandsEnergy()-17,32        | fbodygyro.bandsenergy.17.32         |
      | fBodyGyro-bandsEnergy()-33,48        | fbodygyro.bandsenergy.33.48         |
      | fBodyGyro-bandsEnergy()-49,64        | fbodygyro.bandsenergy.49.64         |
      | fBodyGyro-bandsEnergy()-1,24         | fbodygyro.bandsenergy.1.24          |
      | fBodyGyro-bandsEnergy()-25,48        | fbodygyro.bandsenergy.25.48         |
      | fBodyGyro-bandsEnergy()-1,8          | fbodygyro.bandsenergy.1.8           |
      | fBodyGyro-bandsEnergy()-9,16         | fbodygyro.bandsenergy.9.16          |
      | fBodyGyro-bandsEnergy()-17,24        | fbodygyro.bandsenergy.17.24         |
      | fBodyGyro-bandsEnergy()-25,32        | fbodygyro.bandsenergy.25.32         |
      | fBodyGyro-bandsEnergy()-33,40        | fbodygyro.bandsenergy.33.40         |
      | fBodyGyro-bandsEnergy()-41,48        | fbodygyro.bandsenergy.41.48         |
      | fBodyGyro-bandsEnergy()-49,56        | fbodygyro.bandsenergy.49.56         |
      | fBodyGyro-bandsEnergy()-57,64        | fbodygyro.bandsenergy.57.64         |
      | fBodyGyro-bandsEnergy()-1,16         | fbodygyro.bandsenergy.1.16          |
      | fBodyGyro-bandsEnergy()-17,32        | fbodygyro.bandsenergy.17.32         |
      | fBodyGyro-bandsEnergy()-33,48        | fbodygyro.bandsenergy.33.48         |
      | fBodyGyro-bandsEnergy()-49,64        | fbodygyro.bandsenergy.49.64         |
      | fBodyGyro-bandsEnergy()-1,24         | fbodygyro.bandsenergy.1.24          |
      | fBodyGyro-bandsEnergy()-25,48        | fbodygyro.bandsenergy.25.48         |
      | fBodyAccMag-mean()                   | fbodyaccmag.mean                    |
      | fBodyAccMag-std()                    | fbodyaccmag.std                     |
      | fBodyAccMag-mad()                    | fbodyaccmag.mad                     |
      | fBodyAccMag-max()                    | fbodyaccmag.max                     |
      | fBodyAccMag-min()                    | fbodyaccmag.min                     |
      | fBodyAccMag-sma()                    | fbodyaccmag.sma                     |
      | fBodyAccMag-energy()                 | fbodyaccmag.energy                  |
      | fBodyAccMag-iqr()                    | fbodyaccmag.iqr                     |
      | fBodyAccMag-entropy()                | fbodyaccmag.entropy                 |
      | fBodyAccMag-maxInds                  | fbodyaccmag.maxinds                 |
      | fBodyAccMag-meanFreq()               | fbodyaccmag.meanfreq                |
      | fBodyAccMag-skewness()               | fbodyaccmag.skewness                |
      | fBodyAccMag-kurtosis()               | fbodyaccmag.kurtosis                |
      | fBodyBodyAccJerkMag-mean()           | fbodybodyaccjerkmag.mean            |
      | fBodyBodyAccJerkMag-std()            | fbodybodyaccjerkmag.std             |
      | fBodyBodyAccJerkMag-mad()            | fbodybodyaccjerkmag.mad             |
      | fBodyBodyAccJerkMag-max()            | fbodybodyaccjerkmag.max             |
      | fBodyBodyAccJerkMag-min()            | fbodybodyaccjerkmag.min             |
      | fBodyBodyAccJerkMag-sma()            | fbodybodyaccjerkmag.sma             |
      | fBodyBodyAccJerkMag-energy()         | fbodybodyaccjerkmag.energy          |
      | fBodyBodyAccJerkMag-iqr()            | fbodybodyaccjerkmag.iqr             |
      | fBodyBodyAccJerkMag-entropy()        | fbodybodyaccjerkmag.entropy         |
      | fBodyBodyAccJerkMag-maxInds          | fbodybodyaccjerkmag.maxinds         |
      | fBodyBodyAccJerkMag-meanFreq()       | fbodybodyaccjerkmag.meanfreq        |
      | fBodyBodyAccJerkMag-skewness()       | fbodybodyaccjerkmag.skewness        |
      | fBodyBodyAccJerkMag-kurtosis()       | fbodybodyaccjerkmag.kurtosis        |
      | fBodyBodyGyroMag-mean()              | fbodybodygyromag.mean               |
      | fBodyBodyGyroMag-std()               | fbodybodygyromag.std                |
      | fBodyBodyGyroMag-mad()               | fbodybodygyromag.mad                |
      | fBodyBodyGyroMag-max()               | fbodybodygyromag.max                |
      | fBodyBodyGyroMag-min()               | fbodybodygyromag.min                |
      | fBodyBodyGyroMag-sma()               | fbodybodygyromag.sma                |
      | fBodyBodyGyroMag-energy()            | fbodybodygyromag.energy             |
      | fBodyBodyGyroMag-iqr()               | fbodybodygyromag.iqr                |
      | fBodyBodyGyroMag-entropy()           | fbodybodygyromag.entropy            |
      | fBodyBodyGyroMag-maxInds             | fbodybodygyromag.maxinds            |
      | fBodyBodyGyroMag-meanFreq()          | fbodybodygyromag.meanfreq           |
      | fBodyBodyGyroMag-skewness()          | fbodybodygyromag.skewness           |
      | fBodyBodyGyroMag-kurtosis()          | fbodybodygyromag.kurtosis           |
      | fBodyBodyGyroJerkMag-mean()          | fbodybodygyrojerkmag.mean           |
      | fBodyBodyGyroJerkMag-std()           | fbodybodygyrojerkmag.std            |
      | fBodyBodyGyroJerkMag-mad()           | fbodybodygyrojerkmag.mad            |
      | fBodyBodyGyroJerkMag-max()           | fbodybodygyrojerkmag.max            |
      | fBodyBodyGyroJerkMag-min()           | fbodybodygyrojerkmag.min            |
      | fBodyBodyGyroJerkMag-sma()           | fbodybodygyrojerkmag.sma            |
      | fBodyBodyGyroJerkMag-energy()        | fbodybodygyrojerkmag.energy         |
      | fBodyBodyGyroJerkMag-iqr()           | fbodybodygyrojerkmag.iqr            |
      | fBodyBodyGyroJerkMag-entropy()       | fbodybodygyrojerkmag.entropy        |
      | fBodyBodyGyroJerkMag-maxInds         | fbodybodygyrojerkmag.maxinds        |
      | fBodyBodyGyroJerkMag-meanFreq()      | fbodybodygyrojerkmag.meanfreq       |
      | fBodyBodyGyroJerkMag-skewness()      | fbodybodygyrojerkmag.skewness       |
      | fBodyBodyGyroJerkMag-kurtosis()      | fbodybodygyrojerkmag.kurtosis       |
      | angle(tBodyAccMean,gravity)          | angle.tbodyaccmean.gravity          |
      | angle(tBodyAccJerkMean),gravityMean) | angle.tbodyaccjerkmeangravitymean   |
      | angle(tBodyGyroMean,gravityMean)     | angle.tbodygyromean.gravitymean     |
      | angle(tBodyGyroJerkMean,gravityMean) | angle.tbodygyrojerkmean.gravitymean |
      | angle(X,gravityMean)                 | angle.x.gravitymean                 |
      | angle(Y,gravityMean)                 | angle.y.gravitymean                 |
      | angle(Z,gravityMean)                 | angle.z.gravitymean                 |
      

## Activity types
1 - WALKING
2 - WALKING_UPSTAIRS
3 - WALKING_DOWNSTAIRS
4 - SITTING
5 - STANDING
6 - LAYING

## Training subjects
subjects' ids in the training set
      + 1
      + 3
      + 5
      + 6
      + 7
      + 8
      + 11
      + 14
      + 15
      + 16
      + 17
      + 19
      + 21
      + 22
      + 23
      + 25
      + 26
      + 27
      + 28
      + 29
      + 30

## Training subjects
subjects' ids in the test set
      + 2
      + 4
      + 9
      + 10
      + 12
      + 13
      + 18
      + 20
      + 24


## train_data  & test_data datasets
Both the `train_data`  & `test_data` datasets were created by merging (by cbind) either the  `train_subject`, `train_labels` & `train_df` or their tests counterparts.
+ `train_subject` - subject ids 
+ `train_labels` - activity labels
+ `train_df` - measures data set
An additional variable was added, the `group` variable, to state from which dataset the data came from (_train_ / _test_). 


## combining the test & train dataset
The train and test data were combined (using rbind), then activity labels were added (by using merge) creating `data` dataset. Next, the `data_clean` was form by subsetting the `data` dataset and selecting only the activity, subject and all measures that contained either mean or std in their names. 
Then, the variable `subject` was transformed into a factor.

# Reshaping the data
Using the `melt()` function (form the _reshape2_ package), the data was melted by **subjects** and **activity** type producing the `melt_data` dataset.


##  Caculating the mean and producing a clean dataset
Using the `dcasst()` function from the `reshape2` package, mean was calculated for all measure types by subject and activity type.

```
data_tidy <- dcast(melt_data, subject + activity ~ variable, mean)
```
