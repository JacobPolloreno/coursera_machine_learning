function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% Calculate hypothesis
h = X * theta;

% Compute unreg cost function
J = sum((h-y).^2)/(2*m);

% Add regularization, excluding theta_0
J = J + sum(theta(2:end).^2)*lambda/(2*m);

% Compute unreg gradients
for iter = 1:size(theta)
  grad(iter) = sum((h-y).*X(:,iter))./m;
endfor

% Exclude theta_0 for reg
temp = theta;
temp(1) = 0;

% Add regularization term to gradients theta_i >= 1
grad = grad + (lambda/m)*temp;





% =========================================================================

grad = grad(:);

end
