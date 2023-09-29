const { prisma } = require("../prisma/prisma-client");

/**
 * @route GET api/bookings/all
 * @desc Получение всех городов
 * @access Private
 */
const all = async (req, res) => {
  try {
    const bookings = await prisma.booking.findMany();

    res.status(200).json(bookings);
  } catch {
    res.status(400).json({ message: "Не удалось получить букинги" });
  }
};

/**
 * 
 * @route POST api/bookings/add
 * @desc Добавление города
 * @access Private
 */
const add = async (req, res) => {
  const data = req.body;
  
  if ( 
    !data.email ||
    !data.phone ||
    !data.name ||
    !data.city ||
    !data.hotel ||
    !data.transport_depart ||
    !data.transport_arrive ||
    !data.selectedCity ||
    !data.checkin ||
    !data.checkout ||
    !data.rooms ||
    !data.adults ||
    !data.children ||
    !data.childageArr ||
    !data.isValid  
    ) {
    return res.status(400).json({ data: "Все поля обязятельные" });
  }

  const booking = await prisma.booking.create({
    data: {
      ...data,
      userId: req.user.id
    },
  });

  res.status(201).json(booking);
};

/**
 * 
 * @route POST api/bookings/remove
 * @desc Удаление сотрудника
 * @access Private
 */
const remove = async (req, res) => {
  // const { id } = req.body;
  const id = req.params.id;

  try {
    await prisma.booking.delete({
      where: {
        id,
      },
    });

    res.status(200).json("OK");
  } catch (err) {
    return res.status(500).json({ message: "Неудалось удалить город" });
  }
};

/**
 * 
 * @route PUT api/bookings/edit
 * @desc Редактирование сотрудника
 * @access Private
 */
const edit = async (req, res) => {
  const data = req.body;
  const id = req.params.id;

  try {
    await prisma.booking.update({
      where: {
        id,
      },
      data,
    });

    res.status(200).json("OK");
  } catch {
    res.status(500).json({ message: "Неудалось редактировать город" });
  }
};

/**
 * 
 * @route GET api/bookings/:id
 * @desc Полчуние сотрудника
 * @access Private
 */
const booking = async (req, res) => {
  const { id } = req.params;

  try {
    const city = await prisma.booking.findUnique({
      where: {
        id,
      },
    });

    res.status(200).json(booking);
  } catch {
    res.status(400).json({ message: "Неудалось получить тур" });
  }
};

module.exports = {
  add,
  remove,
  edit,
  all,
  booking,
};