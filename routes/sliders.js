const express = require('express');
const router = express.Router();
const { add, edit, remove, all, slide } = require("../controllers/slider");
const { auth } = require('../middleware/auth');

router.get("/", all);
router.get("/:id", slide);
router.post("/add", auth, add);
router.post("/remove/:id", auth, remove);
router.put("/edit/:id", auth, edit);

module.exports = router;