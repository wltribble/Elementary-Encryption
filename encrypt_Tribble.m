% Clear the windows
clc
clear

% Prompt for a message
msg = input('Enter a message to encode: ','s');

% Display the original message
fprintf('\nMessage: %s',msg);

% Encrypt the message by moving each letter 6 letters to the right in the
% alphabet
for i = 1:length(msg)
    if double(msg(i)) >= 65 && double(msg(i)) <= 84 || double(msg(i)) >= 96 && double(msg(i)) <= 116
        msg(i) = double(msg(i)) + 6;
    elseif double(msg(i)) >= 85 && double(msg(i)) <= 90 || double(msg(i)) >= 117 && double(msg(i)) <= 122
        msg(i) = double(msg(i)) - 20;
    else
        msg(i) = double(msg(i));
    end
end

% Print the encrypted message
fprintf('\nEncrypted: %s',char(msg));

% Decrypt the message
for i = 1:length(msg)
    if msg(i) >= 71 && msg(i) <= 90 || msg(i) >= 103 && msg(i) <= 122
        msg(i) = msg(i) - 6;
        msg(i) = char(msg(i));
    elseif msg(i) >= 65 && msg(i) <= 70 || msg(i) >= 96 && msg(i) <= 102
        msg(i) = msg(i) + 20;
        msg(i) = char(msg(i));
    else
        msg(i) = char(msg(i));
    end
end

% Print the decrypted message
fprintf('\nDecrypted: %s\n\n',msg);

