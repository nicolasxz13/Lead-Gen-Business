SELECT sites.domain_name, count(leads.leads_id),date_format(leads.registered_datetime,'%M %d, %Y') as date_generated from sites
inner join leads on leads.site_id = sites.site_id
where leads.registered_datetime > '2011-01-01' and leads.registered_datetime < '2011-02-15'
group by sites.domain_name
order by leads.leads_id