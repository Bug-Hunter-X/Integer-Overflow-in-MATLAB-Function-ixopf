function result = myFunction(input)
  % Check for potential overflow
  if input > intmax('uint64') / 2
    error('Input value too large; potential for integer overflow.');
  end

  % Perform the operations using a data type capable of handling larger values
  input = uint64(input);
  if input > 10
    result = input * 2; 
  elseif input < 0
    result = 0; 
  else
    result = input + 1; 
end
end