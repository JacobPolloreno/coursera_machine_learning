function [jVal, gradient] = costFunction(theta)

%basic cost function
jVal = (theta(1) - 5)^2 + (theta(2)-5)^2;

% init gradient
gradient = zeros(2,1);

% calculate partial derivatives
gradient(1) = 2 * (theta(1)-5);
gradient(2) = 2 * (theta(2)-5);

end