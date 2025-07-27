{% docs positive_total_amount %}

This test ensures that the **total amount per order** in `stg_stripe__payments` is **always greater than or equal to 0**.  
If any order has a total amount below 0, the test will fail because refunds should not exceed the payments.

{% enddocs %}