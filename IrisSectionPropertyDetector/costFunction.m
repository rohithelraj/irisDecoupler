function [J, grad,pd] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));


%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
%               Note: grad should have the same dimensions as theta
%
alpha = 1;
Z = X * theta;
h_theta_x = sigmoid(Z);
term1 = (transpose(-y)) * log(h_theta_x);
term2= (transpose(1-y)) * log(1 - h_theta_x); 
J = sum(term1 - term2)/m;

Z = theta(1)+ theta(2)*X(:,2)+theta(3)*X(:,3);
htheta = sigmoid(Z);


partial_derivative0 = (1/m)  *(transpose(X(:,1)))* (htheta - y);
partial_derivative1 = (1/m)  *(transpose(X(:,2)))* (htheta - y);
partial_derivative2 = (1/m)  *(transpose(X(:,3)))* (htheta - y);
grad = [partial_derivative0;partial_derivative1;partial_derivative2];


