SELECT sites.domain_name, clients.client_id from sites
inner join clients on clients.client_id = sites.client_id 
where clients.client_id  = 10