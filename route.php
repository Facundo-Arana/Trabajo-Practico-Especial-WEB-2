<?php
require_once('view/view.php');
require_once('controller/controller.php');

define("URLBASE", '"http://' . $_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]) . '/"');

$controller = new controller();


if (empty($_GET['action'])) {
    header('Location: library/index.php');
    die;
}

$actions = explode('/', $_GET['action']);

switch ($actions[1]) {

    case 'index.php':
        $controller->getIndex();
        break;

    case 'catalogue':
        if (!isset($actions[2])) {
            $controller->getAbout();
            break;
        } elseif (!isset($actions[3])) {
            $controller->getGenreDetails($actions[2]);//TODO
            break;
        } else
            //$controller->getBookDetails($actions[2],$actions[3]); /////TODO
            break;
    default:
        $controller->error();
}
