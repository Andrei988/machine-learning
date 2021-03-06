function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

    function H = hypothesis(x)
        H = theta(1, 1) + (theta(2, 1) * x);
    end

sum = 0;

for i = 1 : m
    sum = sum + ((hypothesis(X(i, 2)) - y(i, 1)))^2;
end    

J = 1/(2*m) * sum;
% =========================================================================

end
