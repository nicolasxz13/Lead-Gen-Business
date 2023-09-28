SELECT concat(clients.first_name, clients.last_name) as client_name, count(leads.leads_id) as number_leads, monthname(leads.registered_datetime) as month_generated from clients
inner join sites on sites.client_id = clients.client_id
inner join leads on leads.site_id = sites.site_id
where leads.registered_datetime > '2011-01-1' and leads.registered_datetime < '2011-06-31'
group by leads.registered_datetime
order by leads.registered_datetime