% Listing 19.20 – testing the Queue class
clear
clc
clear classes

 q = Queue;
 fprintf('is queue empty? %d\n', isEmpty(q) );
 for ix = 1:10
     enqueue(q, ix);
 end
 fprintf('is queue empty? %d\n', isEmpty(q) );
 q
 fprintf('dequeue -> %d leaving %s\n', ...
       dequeue(q), char(q) );
 fprintf('peek at queue -> %d leaving %s\n', ...
        peek(q), char(q) );

% Listing 19.24 – testing the MStack class
 stk = MStack;
 fprintf('is stack empty? %d\n', isEmpty(stk) );
 for ix = 1:10
     push(stk, ix);
 end
 fprintf('is stack empty? %d\n', isEmpty(stk) );
 stk
 fprintf('pop from stack -> %d leaving %s\n', ...
     pop(stk), char(stk) );
 fprintf('peek stack -> %d leaving %s\n', ...
        peek(stk), char(stk) );
 while ~isEmpty(q)
     push(stk, dequeue(q));
 end
 fprintf('stack with whole queue is %s\n', ...
                               char(stk) );
                               
                               
% Listing 19.27 - Priority Queue test script
 pq = PriorityQueue;
 for ix = 1:10
     value = floor(100*rand);
     fprintf(' %g:', value );
     enqueue(pq, value );
 end
 fprintf('\npriority queue is %s\n', char(pq) );

