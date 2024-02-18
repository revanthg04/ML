cc_values_HI1_5 = zeros(168, 1);
mean_CC_HI = cell(3, 4);
% Loop through the cells

    for j = 1:168
        % Extract data from the first column of each cell
        data_X = cell2mat(capacity(:,1));
        data_Y =  cell2mat(IHI1(:,1));
        % Calculate the mean for each data set
        mean_X = mean(data_X);
        mean_Y = mean(data_Y);

        % Check for division by zero
        if mean_X == 0 && mean_Y == 0
            cc = 0;  % Handle the case when both means are zero
        else
            % Normalize the data
            normalized_X = data_X(j) / mean_X;
            normalized_Y = data_Y(j) / mean_Y;
            % Calculate the GACC
            cc = 1 - sum(abs(normalized_X - normalized_Y)) / sum(abs(normalized_X + normalized_Y));
        end
        
        % Store the GACC value
        cc_values_HI1_5(j, 1) = cc;
    end
  mean_CC_HI{1,1} = mean(cc_values_HI1_5);

cc_values_HI1_6 = zeros(168, 1);

% Loop through the cells

    for j = 1:168
        % Extract data from the first column of each cell
        data_X = cell2mat(capacity(:,2));
        data_Y =  cell2mat(IHI1(:,2));
        % Calculate the mean for each data set
        mean_X = mean(data_X);
        mean_Y = mean(data_Y);

        % Check for division by zero
        if mean_X == 0 && mean_Y == 0
            cc = 0;  % Handle the case when both means are zero
        else
            % Normalize the data
            normalized_X = data_X(j) / mean_X;
            normalized_Y = data_Y(j) / mean_Y;
            % Calculate the GACC
            cc = 1 - sum(abs(normalized_X - normalized_Y)) / sum(abs(normalized_X + normalized_Y));
        end
        
        % Store the GACC value
        cc_values_HI1_6(j, 1) = cc;
    end
 mean_CC_HI{1,2} = mean(cc_values_HI1_6);

cc_values_HI1_7 = zeros(168, 1);

% Loop through the cells

    for j = 1:168
        % Extract data from the first column of each cell
        data_X = cell2mat(capacity(:,3));
        data_Y =  cell2mat(IHI1(:,3));
        % Calculate the mean for each data set
        mean_X = mean(data_X);
        mean_Y = mean(data_Y);

        % Check for division by zero
        if mean_X == 0 && mean_Y == 0
            cc = 0;  % Handle the case when both means are zero
        else
            % Normalize the data
            normalized_X = data_X(j) / mean_X;
            normalized_Y = data_Y(j) / mean_Y;
            % Calculate the GACC
            cc = 1 - sum(abs(normalized_X - normalized_Y)) / sum(abs(normalized_X + normalized_Y));
        end
        
        % Store the GACC value
        cc_values_HI1_7(j, 1) = cc;
    end
  mean_CC_HI{1,3} = mean(cc_values_HI1_7);

cc_values_HI1_18 = zeros(132, 1);

% Loop through the cells

    for j = 1:132
        % Extract data from the first column of each cell
        data_X = cell2mat(capacity(:,4));
        data_Y =  cell2mat(IHI1(:,4));
        % Calculate the mean for each data set
        mean_X = mean(data_X);
        mean_Y = mean(data_Y);

        % Check for division by zero
        if mean_X == 0 && mean_Y == 0
            cc = 0;  % Handle the case when both means are zero
        else
            % Normalize the data
            normalized_X = data_X(j) / mean_X;
            normalized_Y = data_Y(j) / mean_Y;
            % Calculate the GACC
            cc = 1 - sum(abs(normalized_X - normalized_Y)) / sum(abs(normalized_X + normalized_Y));
        end
        
        % Store the GACC value
        cc_values_HI1_18(j, 1) = cc;
    end
 mean_CC_HI{1,4} = mean(cc_values_HI1_18);



