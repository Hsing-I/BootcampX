const { Pool } = require('pg');
const process = require('process');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2] || "JUL02";

pool.query(`SELECT DISTINCT teachers.name AS "teacher", cohorts.name AS "cohort" FROM teachers JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id 
JOIN students ON assistance_requests.student_id = students.id JOIN cohorts ON students.cohort_id = cohorts.id WHERE cohorts.name = $1 ORDER BY teacher`, [cohortName])
  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    });
  });  
