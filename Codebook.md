---
title: "Codebook.rmd"
output: html_document

CODEBBOK

Here I shall describe the columns present in the FINAL TIDY DATASET created in STEP 5
The tidy dataset contains 81 data columns and 181 obs.

Activity

It refers to the 6 types of activities done by the user

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

Subject

It refers to the test subject, ie. one of the 30 people (ages between 19-48 years) this experiment was conducted on.

1- First Subject/Person
2- Second Subject/Person
.
.
and so forth

Columns 1 to 79
are the 80 estimated quantiites or FEATURES calculated after performing this experiment. Their MEANS have been ordered in the tidy dataset according to Subject and Activity. Only those columns are present in the tidy dataset, which contain mean() or std().

None of them have units since they have been NORMALIZED. (Dimensionless quantities)

SOme column names are-

tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
.
.
.
and so forth (79)

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

use summary() function to see the summary of the created tidy dataset.

Thank you!
