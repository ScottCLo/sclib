function in_to_mm(in) = in * 25.4;

clamp = function (x, minimum = 0, maximum = 1) (x > maximum) ? maximum :(x < minimum) ? minimum : x;

function smooth_step(x) = x*x(3-2*x);
function smoother_step(x) = x*x*x*(x * (6 * x - 15 ) + 10);

