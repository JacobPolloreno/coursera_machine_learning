% set options/parameters object
% GradObj = on => providing a gradient object
% MaxIter = 100 => number of iterations to perform
options = optimset('GradObj', 'on', 'MaxIter', '100');

initialTheta = zeros(2,1);

[optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options)
