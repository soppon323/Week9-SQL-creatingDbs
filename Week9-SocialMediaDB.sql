Create database if not exists Users;

Use Users;
Drop table if exists Comments;
Drop table if exists Posts;
Drop table if exists User;

Create table User(
  ID int(10) not null auto_increment,
  User_name varchar(18) not null,
  Password varchar(30) not null,
  primary key(ID)
);

Create table Posts(
  ID int(100) not null auto_increment,
  User_ID int(10) not null ,
  Post varchar (140),
  Time_Posted datetime default current_timestamp,
  Primary Key(ID),
  Foreign Key(User_ID) references User(ID)
);

Create table Comments(
  ID int(100) not null auto_increment,
  User_ID int (10) not null,
  Post_ID int (100) not null,
  Time_Posted datetime default current_timestamp,
  Comment varchar(140),
  Primary key (ID),
  Foreign Key (Post_ID) references Posts(ID),
  Foreign Key (User_ID) references User(ID)
);
