
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/c3c846a1-94cb-4f5d-a6af-ccbfc665c06a)![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/d13e1f5a-1d3a-46e5-9da9-43e092240a86)

![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/5c27084f-250d-4b65-bf2e-af6974b1e3c8)

![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/50625f89-108e-4e1a-ac0d-b21bc72d00c0)


![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/c8bbc6fb-d5e9-4f1f-a2a4-92007a42df0f)

![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/a409729c-18fc-4fe8-b6e9-c5910b2d12a2)![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/f434e885-ded8-41c5-b9c0-67e22b95eaad)

![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/ae9759a9-58f0-4df6-b116-24752dae2a33)

![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/8c096611-0969-44b1-a8a6-73cc6f1650f7)

![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/870c3bf3-27bc-4abc-b511-5a594ab16d03)

`math_model = lm(score_math ~ is_female + has_reduced_price_lunch + taken_prep_course, data = clean_student_performance)
rdg_model = lm(score_rdg ~ is_female + has_reduced_price_lunch + taken_prep_course, data = clean_student_performance)
wrtng_model = lm(score_wrtng ~ is_female + has_reduced_price_lunch + taken_prep_course, data = clean_student_performance)
combined_model = lm(Combined_scores ~ is_female + has_reduced_price_lunch + taken_prep_course, data = clean_student_performance)
clean_student_performance$predicted_math <- predict(math_model, clean_student_performance)`
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/63011d74-ea52-4897-8786-3a30eb490e37)

![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/b47f24fd-d731-41ae-8f81-9f9ed17e856d)
