
cc_values_HI2_5 = zeros(168, 1);

% Loop through the cells

    for j = 1:168
        % Extract data from the first column of each cell
        data_X = cell2mat(capacity(:,1));
        data_Y =  cell2mat(IHI2(:,1));
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
            % Calculate the cc
            cc = 1 - sum(abs(normalized_X - normalized_Y)) / sum(abs(normalized_X + normalized_Y));
        end
        
        % Store the GACC value
        cc_values_HI2_5(j, 1) = cc;
    end
    mean_CC_HI{2,1} = mean(cc_values_HI2_5);

 cc_values_HI2_6 = zeros(168, 1);

% Loop through the cells

    for j = 1:168
        % Extract data from the first column of each cell
        data_X = cell2mat(capacity(:,2));
        data_Y =  cell2mat(IHI2(:,2));
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
        cc_values_HI2_6(j, 1) = cc;
    end
    mean_CC_HI{2,2} = mean(cc_values_HI2_6);


cc_values_HI2_7 = zeros(168, 1);

% Loop through the cells

    for j = 1:168
        % Extract data from the first column of each cell
        data_X = cell2mat(capacity(:,3));
        data_Y =  cell2mat(IHI2(:,3));
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
        cc_values_HI2_7(j, 1) = cc;
    end
    mean_CC_HI{2,3} = mean(cc_values_HI2_7);
   

   cc_values_HI2_18 = zeros(132, 1);

% Loop through the cells

    for j = 1:132
        % Extract data from the first column of each cell
        data_X = cell2mat(capacity(:,4));
        data_Y =  cell2mat(IHI2(:,4));
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
            % Calculate the CC
            cc = 1 - sum(abs(normalized_X - normalized_Y)) / sum(abs(normalized_X + normalized_Y));
        end
        
        % Store the GACC value
        cc_values_HI2_18(j, 1) = cc;
    end
    mean_CC_HI{2,4} = mean(cc_values_HI2_18);





    
