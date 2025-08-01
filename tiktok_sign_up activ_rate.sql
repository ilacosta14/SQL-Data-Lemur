-- find activation rate. Round the percentage to 2 decimal places.
-- calculate total ppl in emails
-- calculate signup actionof confirmed
WITH total_signs AS
(
  SELECT 
  count(*) total_emails,
  sum(case when signup_action = 'Confirmed' then 1 else 0 end) signup_confirmed
  FROM emails e1
  JOIN texts t1 on t1.email_id = e1.email_id
)

SELECT round(1.00* signup_confirmed/ total_emails,2)
FROM total_signs