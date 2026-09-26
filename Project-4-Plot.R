# Project-4-Plot
# Nicholas Vollmer
# 9/26/26
# Building a plot step by step by adding points, lines, and text

# Creating the hypothetical data vectors
x <- 1:20
y <- c(-1.49, 3.37, 2.59, -2.78, -3.94, -0.92, 6.43, 8.51, 3.41, -8.23,
       -12.01, -6.58, 2.87, 14.12, 9.63, -4.58, -14.78, -11.67, 1.17, 15.62)

# Creating an empty plotting region with axes but no points
plot(x, y, type = "n", main = "")

# Drawing red dashed horizontal lines at y = -5 and y = 5
abline(h = c(-5, 5), col = "red", lty = 2, lwd = 2)

# Drawing red dotted vertical segments to box in the sweet spot
segments(x0 = c(5, 15), y0 = c(-5, -5), x1 = c(5, 15), y1 = c(5, 5),
         col = "red", lty = 3, lwd = 2)

# Plotting the too big points as purple x's
points(x[y >= 5], y[y >= 5], pch = 4, col = "darkmagenta", cex = 2)

# plotting the too small points as green plus signs
points(x[y <= -5], y[y <= -5], pch = 3, col = "darkgreen", cex = 2)

# Plotting the points inside the sweet spot as solid blue dots
points(x[(x >= 5 & x <= 15) & (y > -5 & y < 5)],
       y[(x >= 5 & x <= 15) & (y > -5 & y < 5)], pch = 19, col = "blue")

# Plotting the remaining standard points as open circles
points(x[(x < 5 | x > 15) & (y > -5 & y < 5)],
       y[(x < 5 | x > 15) & (y > -5 & y < 5)])

# Connecting all the points with a dash-dot line
lines(x, y, lty = 4)

# Drawing an arrow pointing to the sweet spot
arrows(x0 = 8, y0 = 14, x1 = 11, y1 = 2.5)

# Labeling the arrow
text(x = 8, y = 15, labels = "sweet spot")

# Adding the legend scaled down to 0.5 for readability
legend("bottomleft",
       legend = c("overall process", "sweet", "standard", "too big",
                  "too small", "sweet y range", "sweet x range"),
       pch = c(NA, 19, 1, 4, 3, NA, NA), lty = c(4, NA, NA, NA, NA, 2, 3),
       col = c("black", "blue", "black", "darkmagenta", "darkgreen",
               "red", "red"),
       lwd = c(1, NA, NA, NA, NA, 2, 2), pt.cex = c(NA, 1, 1, 2, 2, NA, NA),
       cex = 0.5)