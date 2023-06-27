#1
set.seed(123)

#2
library(ggplot2)

#3
library(dplyr)

#4
data <- read.csv("mind_matters_data.csv", header = TRUE)

#5
head(data)

#6
str(data)

#7
summary(data)

#8
data_train <- data[1:1000, ]

#9
data_test <- data[1001:2000, ]

#10
fit<-glm(depressed~.,family="binomial",data=data_train)

#11
probab <- predict(fit, data_test, type="response")

#12
pred<-ifelse(probab > 0.5, 1, 0)

#13
table(pred,data_test$depressed)

#14
conf_matrix<-table(pred, data_test$depressed)

#15
accuracy<-sum(diag(conf_matrix))/sum(conf_matrix)

#16
accuracy

#17
library(caret)

#18
model_fit<-train(depressed~.,data=data_train,method="glm",trControl=trainControl(method="none"), family="binomial")

#19
pred_caret<-predict(model_fit, data_test)

#20
conf_matrix_caret<-confusionMatrix(data_test$depressed, pred_caret)

#21
conf_matrix_caret

#22
library(correlation)

#23
corr_matrix<-cor_matrix(data)

#24
corr_matrix

#25
feature_list <-names(data)[2:11]

#26
corrplot(corr_matrix, order="FPC", tl.cex=.7, tl.col="black", 
         tl.srt=45, addrect=2, rect.col="red", rect.lty=3, rect.lwd=2,
         method="circle")

#27
library(corrplot)

#28
library(ggplot2) 

#29
ggplot(data, aes(x=depressed, y=income, color=gender)) +
  geom_point() +
  labs(title="Depression and Income by Gender", 
       x="Depression",
       y="Income")

#30
ggplot(data, aes(x=depressed, y=family_members, color=gender)) +
  geom_point() +
  labs(title="Depression and Family Members by Gender", 
       x="Depression",
       y="Family Members")

#31
ggplot(data, aes(x=depressed, y=education, color=gender)) +
  geom_point() +
  labs(title="Depression and Education by Gender", 
       x="Depression",
       y="Education Level")

#32
ggplot(data, aes(x=depressed, y=age, color=gender)) +
  geom_point() +
  labs(title="Depression and Age by Gender", 
       x="Depression",
       y="Age")

#33
ggplot(data, aes(x=depressed, y=health_status, color=gender)) +
  geom_point() +
  labs(title="Depression and Health Status by Gender", 
       x="Depression",
       y="Health Status")

#34
ggplot(data, aes(x=depressed, y=stress, color=gender)) + 
  geom_point() +
  labs(title="Depression and Stress Level by Gender", 
       x="Depression",
       y="Stress Level")

#35
ggplot(data, aes(x=depressed, y=working_hours, color=gender)) +
  geom_point() +
  labs(title="Depression and Working Hours by Gender", 
       x="Depression",
       y="Working Hours")

#36
ggplot(data, aes(x=depressed, y=smoking, color=gender)) +
  geom_point() +
  labs(title="Depression and Smoking by Gender", 
       x="Depression",
       y="Smoking")

#37
ggplot(data, aes(x=depressed, y=alcohol, color=gender)) +
  geom_point() +
  labs(title="Depression and Alcohol by Gender", 
       x="Depression",
       y="Alcohol")

#38
ggplot(data, aes(x=depressed, y=exercise, color=gender)) +
  geom_point() +
  labs(title="Depression and Exercise by Gender", 
       x="Depression",
       y="Exercise")

#39
model_fit<-train(depressed~.,data=data_train,method="glmnet",trControl=trainControl(method="cv"), family="binomial")

#40
pred_caret<-predict(model_fit, data_test)

#41
conf_matrix_caret<-confusionMatrix(data_test$depressed, pred_caret)

#42
conf_matrix_caret

#43
library(randomForest)

#44
set.seed(123)

#45
model_fit_rf<-randomForest(depressed~.,data=data_train)

#46
importance_matrix<-importance(model_fit_rf)

#47
importance_matrix

#48
varImpPlot(model_fit_rf)

#49
pred_rf<-predict(model_fit_rf,data_test)

#50
table(pred_rf,data_test$depressed)

#51
accuracy_rf<-sum(diag(conf_matrix_rf))/sum(conf_matrix_rf)

#52
accuracy_rf

#53
library(VIM)

#54
library(mice)

#55
data_na<-data[,c("income", "health_status", "working_hours")]

#56
data_na[is.na(data_na)] <- 0

#57
imputed_data <-complete(mice(data_na))

#58
imputed_data<-as.data.frame(imputed_data)

#59
data$income<-imputed_data$income

#60
str(data)

#61
data$health_status<-imputed_data$health_status

#62
data$working_hours<-imputed_data$working_hours

#63
ggplot(data, aes(x=depressed, y=income, color=gender)) +
  geom_point() +
  labs(title="Depression and Income by Gender", 
       x="Depression",
       y="Income")

#64
ggplot(data, aes(x=depressed, y=health_status, color=gender)) +
  geom_point() +
  labs(title="Depression and Health Status by Gender", 
       x="Depression",
       y="Health Status")

#65
ggplot(data, aes(x=depressed, y=working_hours, color=gender)) +
  geom_point() +
  labs(title="Depression and Working Hours by Gender", 
       x="Depression",
       y="Working Hours")

#66
fit<-glm(depressed~.,family="binomial",data=data_train)

#67
probab <- predict(fit, data_test, type="response")

#68
pred<-ifelse(probab > 0.5, 1, 0)

#69
table(pred,data_test$depressed)

#70
conf_matrix<-table(pred, data_test$depressed)

#71
accuracy<-sum(diag(conf_matrix))/sum(conf_matrix)

#72
accuracy

#73
model_fit<-train(depressed~.,data=data_train,method="glm",trControl=trainControl(method="none"), family="binomial")

#74
pred_caret<-predict(model_fit, data_test)

#75
conf_matrix_caret<-confusionMatrix(data_test$depressed, pred_caret)

#76
conf_matrix_caret

#77
set.seed(123)

#78
model_fit_rf<-randomForest(depressed~.,data=data_train)

#79
importance_matrix<-importance(model_fit_rf)

#80
importance_matrix

#81
varImpPlot(model_fit_rf)

#82
pred_rf<-predict(model_fit_rf,data_test)

#83
table(pred_rf,data_test$depressed)

#84
conf_matrix_rf<-table(pred_rf, data_test$depressed)

#85
accuracy_rf<-sum(diag(conf_matrix_rf))/sum(conf_matrix_rf)

#86
accuracy_rf

#87
library(e1071)

#88
model_fit_svm<-svm(depressed~.,data=data_train)

#89
pred_svm<-predict(model_fit_svm, data_test)

#90
table(pred_svm,data_test$depressed)

#91
conf_matrix_svm<-table(pred_svm, data_test$depressed)

#92
accuracy_svm<-sum(diag(conf_matrix_svm))/sum(conf_matrix_svm)

#93
accuracy_svm

#94
library(caret)

#95
model_fit_nn<-train(depressed~.,data=data_train,method="nnet",trControl=trainControl(method="none"), family="binomial")

#96
pred_nn<-predict(model_fit_nn, data_test)

#97
conf_matrix_nn<-confusionMatrix(data_test$depressed, pred_nn)

#98
conf_matrix_nn

#99
accuracy_nn<-sum(diag(conf_matrix_nn))/sum(conf_matrix_nn)

#100
accuracy_nn

#101
library(coefplot)

#102
coefplot(fit)

#103
library(pROC)

#104
pred_prob<-predict(fit, data_test, type="response")

#105
roccurve<-roc(data_test$depressed, pred_prob)

#106
plot(roccurve, main="ROC Curve for GLM", col="blue")

#107
auc(roccurve)

#108
pred_prob_caret<-predict(model_fit, data_test, type="prob")

#109
roccurve_caret<-roc(data_test$depressed, pred_prob_caret$depressed)

#110
plot(roccurve_caret, main="ROC Curve for GLM (Caret)", col="red")

#111
auc(roccurve_caret)

#112
pred_prob_rf<-predict(model_fit_rf, data_test, type="prob")

#113
roccurve_rf<-roc(data_test$depressed, pred_prob_rf[,2])

#114
plot(roccurve_rf, main="ROC Curve for Random Forest", col="green")

#115
auc(roccurve_rf)

#116
pred_prob_svm<-predict(model_fit_svm,data_test,type="prob")

#117
roccurve_svm<-roc(data_test$depressed, pred_prob_svm[,2])

#118
plot(roccurve_svm, main="ROC Curve for SVM", col="orange")

#119
auc(roccurve_svm)

#120
pred_prob_nn<-predict(model_fit_nn,data_test,type="prob")

#121
roccurve_nn<-roc(data_test$depressed, pred_prob_nn$depressed)

#122
plot(roccurve_nn, main="ROC Curve for Neural Network", col="purple")

#123
auc(roccurve_nn)

#124
library(gridExtra)

#125
grid.arrange(plot(roccurve, main="ROC Curve for GLM", col="blue"),
             plot(roccurve_caret, main="ROC Curve for GLM (Caret)", col="red"),
             plot(roccurve_rf, main="ROC Curve for Random Forest", col="green"),
             plot(roccurve_svm, main="ROC Curve for SVM", col="orange"),
             plot(roccurve_nn, main="ROC Curve for Neural Network", col="purple"),
             nrow=2)

#126
plot.roc.together(list(glm=roccurve, 
                       caret=roccurve_caret, 
                       rf=roccurve_rf, 
                       svm=roccurve_svm,
                       nn=roccurve_nn), 
                  lty=c(0,1,2,3,4))

#127
auc_scores<- data.frame(model=c("glm","glm (Caret)","Random Forest",
                                "SVM","Neural Network"),
                        auc=c(auc(roccurve),auc(roccurve_caret),
                              auc(roccurve_rf),
                              auc(roccurve_svm),
                              auc(roccurve_nn)))

#128
auc_scores

#129
library(ggplot2)

#130
ggplot(auc