%% Exercise 1
% Generate a 4-element array of random integers. 
rand_array = randi(10, 1, 4)
% Write an if statement that returns "The sum is ___ and it is 
% greater than 20" if the sum of the array is greater than 20, 
% or “The sum is ___ and it is less than 20” if the sum of the 
% array is less than 20.
if sum(rand_array)>20
    disp("The sum is " + sum(rand_array) + " and it is greater than 20")
else
    disp("The sum is " + sum(rand_array) + " and it is less than 20")
end


%% Exercise 2
% Generate a 4-element array of random integers. 
rand_array = randi(10, 1, 4)
% % Write an if statement that returns "The sum is ___ and it is 
% greater than 20" if the sum of the array is greater than 20, 
% “The sum is ___ and it is less than 20” if the sum of the 
% array is less than 20, or "The sum is 20" if the sum of the array
% is 20.
if sum(rand_array)>20
    disp("The sum is " + sum(rand_array) + " and it is greater than 20")
   
elseif sum(rand_array)<20
    disp("The sum is " + sum(rand_array) + " and it is less than 20")
else
    disp("The sum is 20.")
end
%% Exercise 3
% Generate a 5-element array of random integers.
rand_array = randi(10, 1, 5);
% Write a while loop where for each element of the array, if the 
% element is greater than 5 or equal to 1, return the element.
count = 1;
while count <= 5
    if rand_array(count) > 5 | rand_array(count) == 1
        disp(rand_array(count))
    end
    count = count + 1;
end

%% Exercise 4
% Rewrite your code from Exercise 3, but using a for loop.
rand_array = randi(10, 1, 5);

for i = rand_array
    if i > 5 | i == 1
        disp(i)
    end
end

%% Exercise 5
% Generate two random 3x4 matrices consisting of integers
% between -6 and 6.
mat1 = randi([-6, 6], 3, 4)
mat2 = randi([-6, 6], 3, 4)

% Write a nested for loop that creates a new 3x4 matrix called 
% `sum_matrix` that contains the sum of the two matrices. 
for row = 1:3
    for column=1:4
        sum_mat(row,column) = mat1(row, column)+ mat2(row, column);
    end
end
sum_mat

%% Exercise 6
% We have 5 contacts on our phone: Abby, Bob, Carl, Doris, and Mom. 
% Let’s send each of them a text message using a for loop!

% For each contact, 
% print "I'm going out" if the contact is Mom,
% don't print anything if the contact is Bob (we don t really like him),
% and print "let's hang out" for everyone else

% Use either a continue or a break statement in this exercise
for contact=["Abby", "Bob", "Carl", "Doris", "Mom"]
    if contact=="Mom"
        disp("I'm going out")
    elseif contact=="Bob"
        continue
    else
        disp("let's hang")
    end
end




