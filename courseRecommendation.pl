% =======================================================================


% EXERCISE - 1
% NAME      : ASHUWIN P <ashuwin2210335@ssn.edu.in>
% REG.No    : 3122225002013
% Advanced Artificial Intelligence Techniques

% Expert System Development

% Course Recommendation System


% =======================================================================

% Facts about departments and students
department(it_department, ashuwin).
department(cs_department, ganesh).
department(ec_department, hayagrivan).

% Facts about student interests
interest(ml, ashuwin).
interest(ai, ashuwin).

interest(web_development, ganesh).
interest(app_development, ganesh).
interest(vlsi, hayagrivan).
interest(digital_design, hayagrivan).

% Relationships between departments and related fields
related(it_department, ai).
related(it_department, ml).
related(it_department, web_development).
related(cs_department, web_development).
related(cs_department, app_development).
related(ec_department, vlsi).
related(ec_department, digital_design).

% Courses offered in different fields with their difficulty level
course(ai, "Introduction to AI", easy).
course(ai, "Advanced AI", hard).
course(ai, "AI Ethics", medium).
course(ai, "AI in Healthcare", medium).
course(ai, "AI in Robotics", hard).

course(ml, "Introduction to Machine Learning", easy).
course(ml, "Deep Learning", hard).
course(ml, "Machine Learning for Beginners", easy).
course(ml, "Natural Language Processing", medium).
course(ml, "Reinforcement Learning", medium).

course(web_development, "HTML & CSS", easy).
course(web_development, "JavaScript Basics", easy).
course(web_development, "Full Stack Development", medium).
course(web_development, "Web Security", medium).
course(web_development, "Advanced JavaScript", hard).

course(app_development, "Android App Development", medium).
course(app_development, "iOS App Development", hard).
course(app_development, "Cross-Platform Development", medium).

course(vlsi, "VLSI Design", medium).
course(vlsi, "Advanced VLSI", hard).
course(vlsi, "VLSI Circuit Simulation", medium).

course(digital_design, "Digital Logic Design", easy).
course(digital_design, "Advanced Digital Systems", medium).
course(digital_design, "Digital Circuit Analysis", hard).

% Student current semester
semester(1, ashuwin).
semester(2, ganesh).
semester(1, hayagrivan).

% Course availability by semester
available(1, "Introduction to AI").
available(1, "Machine Learning for Beginners").
available(1, "HTML & CSS").
available(1, "Digital Logic Design").
available(2, "AI Ethics").
available(2, "Introduction to Machine Learning").
available(2, "JavaScript Basics").
available(2, "Android App Development").
available(3, "Advanced AI").
available(3, "Deep Learning").
available(3, "Advanced VLSI").
available(3, "Advanced Digital Systems").

% Student CGPA
cgpa(ashuwin, 8.5).
cgpa(ganesh, 6.8).
cgpa(hayagrivan, 8.2).

% Rule to recommend courses based on CGPA and difficulty
recommend(Course, Student):-
    department(Department, Student),
    interest(FieldOfInterest, Student),
    related(Department, FieldOfInterest),
    semester(CurrentSemester, Student),
    course(FieldOfInterest, Course, Difficulty),
    available(CurrentSemester, Course),
    cgpa(Student, CGPA),
    suitable_for_cgpa(CGPA, Difficulty).

% Rule to determine if a course difficulty is suitable for a given CGPA
suitable_for_cgpa(CGPA, easy) :-
    CGPA >= 5.0.

suitable_for_cgpa(CGPA, medium) :-
    CGPA >= 6.0.

suitable_for_cgpa(CGPA, hard) :-
    CGPA >= 7.0.


% recommend(Course, ashuwin).