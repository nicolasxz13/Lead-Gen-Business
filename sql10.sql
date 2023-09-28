SELECT concat(clients.first_name, clients.last_name), group_concat(sites.domain_name SEPARATOR' / ') as sites from clients
inner join sites on sites.client_id = clients.client_id
group by clients.client_id
order by clients.client_id