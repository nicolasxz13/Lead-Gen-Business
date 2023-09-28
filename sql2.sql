SELECT clients.client_id, sum(billing.amount) from billing
inner join clients on clients.client_id = billing.client_id
WHERE clients.client_id = 2;