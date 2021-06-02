const db = require('./db');
const helper = require('../helper');

async function userMark(markData) {
    const result = await db.query(
        `INSERT INTO users_mark 
      (fromUserId, markVal, toUserId) 
      VALUES 
      (?, ?, ?)`,
        [
            markData.fromUserId,
            markData.markVal,
            markData.toUserId
        ]
    );

    let message = 'Error in creating mark value';

    if (result.affectedRows) {
        message = 'Value created successfully';
    }

    return { message };
}

async function markedList(body, page = 1) {
    const result = await db.query(
        `SELECT A.markVal, A.toUserId, B.firstName, B.lastName, B.dateOfBirth, B.picture, B.email 
        FROM  (SELECT markVal, toUserId from users_mark WHERE fromUserId = ?) A LEFT JOIN users B ON A.toUserId = B.id`,
        [body.currentUserId]
    );

    const data = helper.emptyOrRows(result);
    const meta = { page };

    return {
        data,
        meta
    }
}

module.exports = {
    userMark,
    markedList
}