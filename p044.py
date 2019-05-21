
success = False
pent = [0,1]
counter = 2
while not success:
    new_pent = counter * ( 3 * counter - 1) * 0.5
    
    for idx, value in enumerate(pent):
        diff_pent = new_pent - value
        if diff_pent in pent:
            diff_success = (idx, value, counter, new_pent, diff_pent)
            sum_pent = new_pent + value
            pent_ref = pent.copy()
            count_ref = counter
            while sum_pent > max(pent_ref):
                new_pent_ref = count_ref * ( 3 * count_ref - 1) * 0.5
                pent_ref.append(new_pent_ref)
                count_ref = count_ref + 1
            if sum_pent in pent_ref:
                sum_success = (idx, value, counter, new_pent, count_ref, sum_pent)
                print(sum_success)
                print(diff_success)
                
    pent.append(new_pent)
    counter = counter + 1
    
    if 'sum_success' in locals():
        success = True

# (1020, 1560090.0, 2167, 7042750.0, 2396, 8602840.0 )
# (1020, 1560090.0, 2167, 7042750.0, 5482660.0)
# 5482660.0