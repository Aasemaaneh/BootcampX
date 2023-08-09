const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];

const queryString = `
  SELECT DISTINCT teachers.name
  FROM teachers
  JOIN assistance_requests ON teacher_id = teachers.id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
  WHERE cohorts.name LIKE $1
  ORDER BY teachers.name;
`;

const values = [`%${cohortName}%`];

pool.query(queryString, values)
  .then(res => {
    console.log('connected');
    res.rows.forEach(row => {
      console.log(`${cohortName}: ${row.name}`);
    });
  })
  .catch(err => console.error('query error', err.stack));
