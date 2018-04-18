% 16.3	Sort the following array using the algorithms listed below. Show
% all of the vectors (excluding the empty ones) created at each step.
% [5 4 10 2 9 6 3 7 8 1]
% �	Using merge sort
%                          [5 4 10 2 9 6 3 7 8 1]
%                      [5 4 10 2 9]       [6 3 7 8 1]
%                     [5 4 10]  [2 9]    [6 3 7]   [8 1]
%                   [5 4] [10] [2] [9]  [6 3]  [7] [8] [1]
%                 [5] [4] [10] [2] [9] [6] [3] [7] [8] [1]
%                   [4 5] [10] [2] [9]  [3 6]  [7] [8] [1]
%                     [4 5 10]  [2 9]    [3 6 7]   [8 1]
%                      [2 4 5 9 10]       [1 3 6 7 8]
%                          [1 2 3 4 5 6 7 8 9 10]
% �	Using quick sort
%                               [5 4 10 2 9 6 3 7 8 1]
%                        [4 2 3 1] [5]         [10 9 6 7 8]
%                   [2 3 1] [4] [] [5]       [9 6 7 8]  [10] []
%                  [1] [2] [3] [4] [5]    [6 7 8]   [9] [] [10]
%                  [1] [2] [3] [4] [5] [] [6] [7 8] [9] [10]
%                  [1] [2] [3] [4] [5] [6] [] [7] [8] [9] [10]
%                          [1 2 3 4 5 6 7 8 9 10]
% �	Using insertion sort
%                               [5 4 10 2 9 6 3 7 8 1]
%                               [5]
%                               [4 5]
%                               [4 5 10]
%                               [2 4 5 10]
%                               [2 4 5 9 10]
%                               [2 4 5 6 9 10]
%                               [2 3 4 5 6 9 10]
%                               [2 3 4 5 6 7 9 10]
%                               [2 3 4 5 6 7 8 9 10]
%                               [1 2 3 4 5 6 7 8 9 10]
% �	Using bubble sort
%                               [5 4 10 2 9 6 3 7 8 1]
%                               [4 5 2 9 6 3 7 8 1 10]
%                               [4 2 5 6 3 7 8 1 9 10]
%                               [2 4 5 3 6 7 1 8 9 10]
%                               [2 4 3 5 6 1 7 8 9 10]
%                               [2 3 4 5 1 6 7 8 9 10]
%                               [2 3 4 1 5 6 7 8 9 10]
%                               [2 3 1 4 5 6 7 8 9 10]
%                               [2 1 3 4 5 6 7 8 9 10]
%                               [1 2 3 4 5 6 7 8 9 10]