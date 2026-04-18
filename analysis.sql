-- Question 1: Does sleep differ across addiction levels?
SELECT ROUND(AVG(sleep_hours), 2), addiction_level
FROM Smartphone_Usage_And_Addiction_Analysis_7500_Rows1
GROUP BY addiction_level;

-- Question 2: Does screen time differ across addiction levels?
SELECT ROUND(AVG(daily_screen_tim), 2), addiction_level
FROM Smartphone_Usage_And_Addiction_Analysis_7500_Rows1
GROUP BY addiction_level
ORDER BY CASE addiction_level
    WHEN 'None' THEN 1
    WHEN 'Mild' THEN 2
    WHEN 'Moderate' THEN 3
    WHEN 'Severe' THEN 4
END;

-- Question 3: Does screen time by addiction level differ by gender?
SELECT ROUND(AVG(daily_screen_tim), 2), addiction_level, gender
FROM Smartphone_Usage_And_Addiction_Analysis_7500_Rows1
GROUP BY gender, addiction_level
ORDER BY CASE addiction_level
    WHEN 'None' THEN 1
    WHEN 'Mild' THEN 2
    WHEN 'Moderate' THEN 3
    WHEN 'Severe' THEN 4
END;
