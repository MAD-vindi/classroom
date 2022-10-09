/* Creating Database named classroom, run everyting in one go */
create database classroom;

use classroom;

/* Defining status schema

NOTE
Morning is equivalent to 11:00 - 12:00
Noon is equivalent to 12:00-13:00
Afternoon is equivalent to 14:00-15:00
midEve is equivalent to 15:00-16:00
Evening is equivalent to 16:00-17:00
Day is current day and
Block represents the buildings present in the college [ here there are four buildings Golden jubilee bhavan, Polymer Science Block, Environment block, Admin Block ]

 */
create table status (
	id int,
    Classroom varchar(455),
    Morning int,
    Noon int,
    Afternoon int,
    midEve int,
    Evening int,
    Day varchar(455),
    Block varchar(455)
    );
    
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('ME001', '0', '0', '0', '0', '1', 'Monday', 'Golden Jubilee');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('ME001', '0', '0', '0', '1', '1', 'Tuesday', 'Golden Jubilee');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('ME001', '1', '1', '0', '1', '1', 'Wednesday', 'Golden Jubilee');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('ME001', '1', '1', '1', '1', '1', 'Thursday', 'Golden Jubilee');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('ME001', '1', '1', '0', '0', '1', 'Friday', 'Golden Jubilee');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('ME001', '1', '1', '0', '0', '0', 'Saturday', 'Golden Jubilee');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('ME002', '1', '1', '1', '1', '0', 'Monday', 'Golden Jubilee');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('ME002', '1', '1', '1', '0', '0', 'Tuesday', 'Golden Jubilee');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('ME002', '1', '1', '0', '0', '0', 'Wednesday', 'Golden Jubilee');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('ME002', '1', '0', '0', '1', '1', 'Thursday', 'Golden Jubilee');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('ME002', '1', '1', '1', '0', '0', 'Friday', 'Golden Jubilee');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('ME002', '1', '1', '0', '0', '0', 'Saturday', 'Golden Jubilee');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('CV001', '1', '1', '1', '0', '1', 'Monday', 'Environment');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('CV001', '1', '0', '1', '0', '1', 'Tuesday', 'Environment');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('CV001', '1', '1', '0', '0', '1', 'Wednesday', 'Environment');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('CV001', '0', '0', '1', '1', '1', 'Thursday', 'Environment');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('CV001', '1', '0', '0', '1', '1', 'Friday', 'Environment');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('CV001', '1', '1', '0', '0', '0', 'Saturday', 'Environment');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EV002', '1', '1', '1', '0', '0', 'Monday', 'Environment');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EV002', '1', '0', '1', '1', '1', 'Tuesday', 'Environment');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EV002', '0', '1', '1', '1', '1', 'Wednesday', 'Environment');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EV002', '0', '0', '1', '1', '1', 'Thursday', 'Environment');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EV002', '1', '1', '1', '0', '0', 'Friday', 'Environment');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EV002', '1', '1', '0', '0', '0', 'Saturday', 'Environment');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('PS001', '1', '1', '0', '0', '0', 'Monday', 'Polymer Science');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('PS001', '1', '0', '0', '1', '1', 'Tuesday', 'Polymer Science');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('PS001', '0', '0', '1', '1', '0', 'Wednesday', 'Polymer Science');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('PS001', '1', '0', '0', '1', '1', 'Thursday', 'Polymer Science');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('PS001', '0', '1', '1', '0', '0', 'Friday', 'Polymer Science');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('PS001', '1', '1', '0', '0', '0', 'Saturday', 'Polymer Science');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('PS101', '1', '1', '0', '0', '1', 'Monday', 'Polymer Science');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('PS101', '0', '0', '1', '1', '1', 'Tuesday', 'Polymer Science');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('PS101', '0', '0', '1', '1', '0', 'Wednesday', 'Polymer Science');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('PS101', '1', '1', '1', '1', '1', 'Thursday', 'Polymer Science');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('PS101', '1', '0', '0', '1', '1', 'Friday', 'Polymer Science');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('PS101', '1', '1', '0', '0', '0', 'Saturday', 'Polymer Science');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EC001', '0', '1', '1', '1', '0', 'Monday', 'Admin');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EC001', '1', '0', '1', '1', '1', 'Tuesday', 'Admin');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EC001', '0', '1', '1', '1', '1', 'Wednesday', 'Admin');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EC001', '1', '1', '0', '0', '1', 'Thursday', 'Admin');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EC001', '1', '1', '0', '0', '1', 'Friday', 'Admin');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EC001', '1', '1', '0', '0', '0', 'Saturday', 'Admin');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EE001', '1', '1', '1', '1', '1', 'Monday', 'Admin');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EE001', '0', '0', '1', '1', '1', 'Tuesday', 'Admin');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EE001', '1', '1', '1', '0', '0', 'Wednesday', 'Admin');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EE001', '1', '1', '0', '1', '1', 'Thursday', 'Admin');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EE001', '0', '0', '1', '1', '1', 'Friday', 'Admin');
INSERT INTO `classroom`.`status` (`Classroom`, `Morning`, `Noon`, `Afternoon`, `midEve`, `Evening`, `Day`, `Block`) VALUES ('EE001', '1', '1', '0', '0', '0', 'Saturday', 'Admin');




/* user table for authentication */
create table users (
	username varchar(255),
    password varchar(255)
    );
    
INSERT INTO `classroom`.`users` (`username`, `password`) VALUES ('ram', 'ram');