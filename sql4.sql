SELECT clients.client_id, count(sites.domain_name), monthname(sites.created_datetime), year(sites.created_datetime) from clients
inner join sites on sites.client_id = clients.client_id
where clients.client_id = 1
group by sites.created_datetime

SELECT clients.client_id, count(sites.domain_name), monthname(sites.created_datetime), year(sites.created_datetime) from clients
inner join sites on sites.client_id = clients.client_id
where clients.client_id = 20
group by sites.created_datetime