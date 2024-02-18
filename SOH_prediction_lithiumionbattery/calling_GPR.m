[trainedModel, validationRMSE] = GPR(Book1);
yfit = trainedModel.predictFcn(Book2);


