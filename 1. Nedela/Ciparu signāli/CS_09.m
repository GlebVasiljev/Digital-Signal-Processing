clear all;

N = 50;

impulse = [1, zeros(1, N-1)];
step = ones(1, N);

impulse_result = zeros(1, N);
step_result = zeros(1, N);

impulse_result(1) = 1;
step_result(1) = 1;

for n = 2:N
    impulse_result(n) = exp(-0.3) * impulse_result(n-1) + impulse(n);
end

for n = 2:N
    step_result(n) = exp(-0.3) * step_result(n-1) + step(n);
end

subplot(2,1,1)
plot(impulse_result)
subplot(2,1,2)
plot(step_result)

print -dpng "CS_09.png"
