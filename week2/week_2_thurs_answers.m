% Answers for in-class exercises

%% Exercise 1
% Make a function that takes in the radius of a circle and returns its circumference
% For reference, circumfrence = 2 * pi * radius

function circumfrence = calc_circ(radius)
    circumference=2*pi*radius;
end

%% Exercise 2
% Make a function that takes in a vector of elements and returns the sum of its unique elements

function sum_u = sum_unique(array)
    u_array = unique(array);
    sum_u = sum(u_array);
end

%% Exercise 3
% Make a function that takes in a vector of elements and returns its mean, standard deviation, 
% min, max, and unique elements, all as separate variables.

function [avg, stand_dev, mini, maxi, uniq] = operations(array)
    avg = mean(array);
    stand_dev = std(array);
    mini = min(array);
    maxi = max(array);
    uniq = unique(array);
end

%% Exercise 4
% Write a function that takes in a temperature in Fahrenheit and returns two outputs: 
% the converted temperature in Celsius and the converted temperature in Kelvin
% For reference, C = 5/9 * (F − 32) and K = C + 273.15

function [cel_temp, kel_temp] = temp_conv(fah_temp)
    cel_temp=5/9*(fah_temp-32);
    kel_temp= cel_temp + 273.15;
end

%% Exercise 5
% Write a function that takes in an array of temperatures in Fahrenheit and returns 
% both the average and the range of these temperatures in Celsius.

function [avg_C, range_C] = temp_operations(temp_array)
    avg_F = mean(temp_array);
    range_F = range(temp_array);
    
    [avg_C, ~] = temp_conversion(avg_F);
    [range_C, ~]= temp_conversion(range_F);
end