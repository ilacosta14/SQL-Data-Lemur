WITH signups AS
(
  SELECT user_id, signup_date, action_date, signup_action
  FROM emails e1
  JOIN texts t1 on t1.email_id = e1.email_id
)
SELECT user_id
FROM signups
WHERE signup_action = 'Confirmed'
AND signup_date + Interval '1 Day' = action_date


-- output user_ids
-- did not confirm their sign-up on the first day, but confirmed on the second day