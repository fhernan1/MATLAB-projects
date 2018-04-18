% Ask user for their character string.
prompt = {'Enter a string:'};
dlg_title = 'Enter letters'; % Needs to be short to be completely seen
num_lines = 1; % Lines per edit field.
defaultResponses = {'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^'};
response = inputdlg(prompt, dlg_title, num_lines, defaultResponses);
response = cell2mat(response)
if isempty(response)
	% Bail out if they click Cancel.
	return;
end
% Get list of unique characters entered.
allChars = unique(response)
% Go through the list of unique characters
% getting the count for each one.
for c = 1 : length(allChars)
	countForThisChar = sum(response == allChars(c));
	histogram(c) = countForThisChar;
	fprintf('Counted %d occurrences of character %s\n', ...
		countForThisChar, allChars(c));
end
% Display letters then character counts (all 1's if default input was used)
allChars
histogram