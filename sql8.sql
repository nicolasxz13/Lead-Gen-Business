SELECT concat(clients.first_name, clients.last_name) as client_name,sites.domain_name, count(leads.leads_id) as number_leads, date_format(leads.registered_datetime,'%M %d, %Y')  as date_generated from clients
inner join sites on sites.client_id = clients.client_id
inner join leads on leads.site_id = sites.site_id
where leads.registered_datetime > '2011-01-1' and leads.registered_datetime < '2011-12-31'
group by sites.domain_name
order by clients.client_id

SELECT concat(clients.first_name, clients.last_name) as client_name,sites.domain_name as website, count(leads.leads_id) as number_leads from clients
inner join sites on sites.client_id = clients.client_id
inner join leads on leads.site_id = sites.site_id
group by sites.domain_name
order by clients.client_id, number_leads DESC