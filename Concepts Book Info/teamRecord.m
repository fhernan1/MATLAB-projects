function [season wPercentage] = teamRecord(wins, losses)

season = 0;
if wins > losses
    season = 1;
end

wPercentage = floor(wins / (wins + losses) * 100);