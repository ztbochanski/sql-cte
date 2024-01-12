-- Get initial data
with initial_data as (
    select
        trial,
        description,
        treatment,
        description,
        variety,
        produce_mass
    from
        db.schema.produce_yields
) 
-- Perform aggregate calculation
select
    trial_id,
    avg(produce_mass) as avg_produce_mass
from
    initial_data
where
    variety = 'Juniper'
group by
    trial
order by
    trial desc
limit
    10;
