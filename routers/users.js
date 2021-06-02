const express = require('express');
const router = express.Router();
const users = require('../services/users');
const usersMark = require('../services/users-mark');

router.get('/', async function (req, res, next) {
  try {
    res.json(await users.getUsers(req.query.page));
  } catch (err) {
    console.error(`Error while getting users `, err.message);
    next(err);
  }
});

router.post('/mark', async function (req, res, next) {
  try {
    res.json(await usersMark.userMark(req.body));
  } catch (err) {
    console.error(`Error while creating  value `, err.message);
    next(err);
  }
});

router.post('/marked-list', async function (req, res, next) {
  try {
    res.json(await usersMark.markedList(req.body, req.query.page));
  } catch (err) {
    console.error(`Error while getting maked list `, err.message);
    next(err);
  }
});

module.exports = router;