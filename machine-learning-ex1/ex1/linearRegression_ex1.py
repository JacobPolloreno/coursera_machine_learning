import pandas as pd
import matplotlib.pyplot as plt
from sklearn import linear_model

data = pd.read_csv('ex1data1.txt', names=['population', 'profit'])
length = data.shape[0]
X = data['population'].reshape(length,1)
y = data['profit'].reshape(length,1)

reg = linear_model.LinearRegression() #Uses orindary least square regression to find theta parameters
reg.fit(X,y)

plt.figure()
plt.plot(X, y, 'x')
plt.plot(X, reg.predict(X), color="black")
# plt.title('Prices')
plt.xlabel('Population of City in 10,000s')
plt.ylabel('Profit in $10,000s')

print 'Theta found by linear regression(ordinary least squares)  %s,%s' % (reg.coef_, reg.intercept_)
predict1 = reg.predict([3.5])[0][0] * 10000
print 'Predict for population 35,000, we predict profit of  %s' % predict1

plt.show()
