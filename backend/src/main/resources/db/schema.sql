create table ability (
    id bigint not null primary key, 
    name varchar(255)
);

create table pokemon (
    id bigint not null primary key, 
    experience integer, 
    name varchar(255), 
    trainer_id bigint,
    foreign key fk_trainer_id (trainer_id) references trainer(id)
);

create table pokemon_ability (
    pokemon_id bigint not null, 
    ability_id bigint not null,
    primary key pk_pokemon_ability (pokemon_id, ability_id),
    foreign key fk_pokemon_id (pokemon_id) references pokemon(id),
    foreign key fk_ability_id (ability_id) references ability(id)
);

create table trainer (
    id bigint not null primary key, 
    email varchar(255), 
    instagram_link varchar(255), 
    name varchar(255)
);

create sequence seq_ability start with 1 increment by 1;
create sequence seq_pokemon start with 1 increment by 1;
create sequence seq_trainer start with 1 increment by 1;