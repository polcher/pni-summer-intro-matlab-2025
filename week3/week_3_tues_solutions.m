%% Exercise 1
% 1. Create an array of integers going from 20 to 1 with a step of 2. 
array = [20:-2:1]

% 2. Find what integer is at index 4. 
array(4)

% 3. Find what index the number 6 is in this array. 
find(array == 6)

%% Exercise 2
% 1. create a 3X4 matrix using the rand() function.
mat = rand(3, 4)

% 2. find indices of the elements greater or equal to 0.5
inds_above_half = find(mat >= 0.5)

% 3. replace these elements with nan.
mat(inds_above_half) = NaN

% Challenge: replace all the numbers in your matrix which are smaller than 0.3 with
% 100. Do not use find(). 
mat(mat < 0.3) = 100

%% Exercise 3
% create a matrix of 8x8 random integers up to value 10.
mat2 = randi(10, 8, 8)

% find indices of elements bigger than 3 and smaller than 7. 
find(mat2 > 3 & mat2 < 7)

% find indices of elements either smaller than 2 or bigger than 9. 
find(mat2 < 2 | mat2 > 9)

% make these into a function that receives a matrix as an input and outputs two arrays
% of indices. 
function [arr1, arr2] = log_ops(mat)
    arr1 = find(mat2 > 3 & mat2 < 7);
    arr2 = find(mat2 < 2 | mat2 > 9);
end

%% Exercise 4
% 1. How can you test if at least any of the elements in a matrix are not 0?
any(mat ~= 0, 'all')
%2. How can you test if all the elements in a matrix are not 0? 
all(mat ~= 0, 'all')



