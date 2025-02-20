% Define the filter coefficient from the impulse response
alpha = exp(-0.3);

% Define signals: unit impulse and unit step
N = 50; % Number of samples
impulse = [1, zeros(1, N-1)];
step = ones(1, N);

% Initialize output arrays
impulse_response = zeros(1, N);
step_response = zeros(1, N);

% Set the first value of impulse response to match impulse input
impulse_response(1) = impulse(1);
step_response(1) = step(1);

% Compute impulse response manually
for n = 2:N
    impulse_response(n) = alpha * impulse_response(n-1) + impulse(n);
end

% Compute step response manually
for n = 2:N
    step_response(n) = alpha * step_response(n-1) + step(n);
end

% Plot results
figure;
subplot(2,1,1);
stem(impulse_response, 'filled');
title('Impulse Response');
xlabel('n'); ylabel('Amplitude'); grid on;

subplot(2,1,2);
stem(step_response, 'filled');
title('Step Response');
xlabel('n'); ylabel('Amplitude'); grid on;
