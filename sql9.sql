SELECT concat(clients.first_name, clients.last_name) as client_name, sum(billing.amount) as sumbilling,
monthname(billing.charged_datetime) as month_charge, year(billing.charged_datetime) as year_charge from clients
inner join billing on billing.client_id = clients.client_id
group by clients.client_id, DATE_FORMAT(billing.charged_datetime, '%Y-%M')
order by clients.client_id, DATE_FORMAT(billing.charged_datetime, '%Y-%M')