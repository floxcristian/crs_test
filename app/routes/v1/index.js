'use strict'

// Load modules
const express = require('express'),
    auth = require('./auth'),
    activities = require('./activity'),
    activityParticipation = require('./activity_participation'),
    colors = require('./color'),
    calendars = require('./calendar'),
    categories = require('./category'),
    courses = require('./course'),
    enrollments = require('./enrollment'),
    images = require('./image'),
    files = require('./files');
    lessonQuestions = require('./lesson_question'),
    lessons = require('./lesson'),
    modules = require('./module'),
    questions = require('./question'),
    subjects = require('./subject'),
    subcategories = require('./subcategory'),
    statistics = require('./statistics'),
    users = require('./user'),
    workspaces = require('./workspace'),
    user_question_class = require('./user_question_class')


// Define la app express
const app = express();

// Define middlewares de las rutas
app
    .use(auth)
    .use('/activities', activities)
    .use('/activity_participation', activityParticipation)
    .use('/calendars', calendars)
    .use('/categories', categories)
    .use('/colors', colors)
    .use('/courses', courses)
    .use('/enrollments', enrollments)
    .use('/files', files)
    .use('/questions', questions)
    .use('/lessons', lessons)
    .use('/lesson_questions', lessonQuestions)
    .use('/modules', modules)
    .use('/statistics', statistics)
    .use('/subjects', subjects)
    .use('/subcategories', subcategories)
    .use('/users', users)
    .use('/user_question_class', user_question_class)
    .use('/uploads', images)
    .use('/workspaces', workspaces)
    .use('/', (req, res)=> {
        console.log("wayu");
        res.send('OK')
    });

// Server Status
app.get('/status', (req, res) => res.send('OK'));

// Documentation
//router.use('/docs', express.static('docs'));

module.exports = app;


//const file_upload = require('express-fileupload');
//app.use(file_upload());
// app.use(function(err,req,res,next) {
//     console.log(err.stack);
//     res.status(500).send({"Error" : err.stack});
//   });






