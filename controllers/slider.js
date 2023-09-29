const { prisma } = require("../prisma/prisma-client");

/**
 * @route GET api/employees/all
 * @desc Получение всех сотрудников
 * @access Private
 */
const all = async (req, res) => {

  const lang = req.query.lang || null;
 
  
  try {
    const slider = await prisma.slider.findMany(lang && {
      where: {
        lang,
      },
    });

    res.status(200).json(slider);
  } catch {
    res.status(400).json({ message: "Не удалось получить туры" });
  }
};

/**
 * 
 * @route POST api/employees/add
 * @desc Добавление сотрудника
 * @access Private
 */
const add = async (req, res) => {
  const data = req.body;
 
  if (!data.lang || !data.title || !data.image || !data.btn_text) {
    return res.status(400).json({ data: "Все поля обязятельные" });
  }

  const slider = await prisma.slider.create({
    data: {
      ...data,
      userId: req.user.id
    },
  });

  res.status(201).json(slider);
};

/**
 * 
 * @route POST api/employees/remove
 * @desc Удаление сотрудника
 * @access Private
 */
const remove = async (req, res) => {
  // const { id } = req.body;
  const id = req.params.id;

  try {
    await prisma.slider.delete({
      where: {
        id,
      },
    });

    res.status(200).json("OK");
  } catch (err) {
    return res.status(500).json({ message: "Неудалось удалить тур" });
  }
};

/**
 * 
 * @route PUT api/employees/edit
 * @desc Редактирование сотрудника
 * @access Private
 */
const edit = async (req, res) => {
  const data = req.body;
  // const id = data.id;
  const id = req.params.id;

  try {
    await prisma.slider.update({
      where: {
        id,
      },
      data,
    });

    res.status(200).json("OK");
  } catch {
    res.status(500).json({ message: "Неудалось редактировать тур" });
  }
};

/**
 * 
 * @route GET api/employees/:id
 * @desc Полчуние сотрудника
 * @access Private
 */
const slide = async (req, res) => {
  const { id } = req.params;

  try {
    const slider = await prisma.slider.findUnique({
      where: {
        id,
      },
    });

    res.status(200).json(slider);
  } catch {
    res.status(400).json({ message: "Неудалось получить тур" });
  }
};

module.exports = {
  add,
  remove,
  edit,
  all,
  slide,
};