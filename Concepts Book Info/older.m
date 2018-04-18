% 7.9	You have a structure array of friends. Each structure contains a
% Name, Age, Gender, Birthplace, and Zip code. An example of this structure
% might be as follows:
% techFriend.Name = 'George P. Burdell';
% techFriend.Age = 100;
% techFriend.Gender = 'Male';
% techFriend.Birthplace = 'Atlanta';
% techFriend.ZipCode = 30332;
% Write a function called older that will take in an array of the above 
% structure type and an age. Your function should return a new structure 
% array containing every friend whose age is higher than the provided age.
% If none of the friends contained in the structure array meets the age 
% criteria, return the empty vector, [].

function ret=older(arr,age)
ret=[];
for in =1:length(arr)
    st=arr(in);
    if st.Age>age
        ret=[ret st];
    end
end