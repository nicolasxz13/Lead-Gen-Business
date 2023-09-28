SELECT monthname(billing.charged_datetime), SUM(billing.amount) from billing
where monthname(billing.charged_datetime) = 'March' and year(billing.charged_datetime) = 2012