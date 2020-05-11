<?php
require_once('view/view.php');
require_once('controller/controller.php');

define('URLBASE', '//'. $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$controller = new controller();

if (empty($_GET['action']))  {
    header('Location: library/login');
    die;
}

$actions = explode('/', $_GET['action']);

switch ($actions[1]) {

    case 'login':
        $controller->getLogin();
        break;

    case 'catalogue':
        if (!isset($actions[2])) {
            $controller->getAbout();
            break;
        } elseif (!isset($actions[3])) {
            $controller->getBooksByGenre($actions[2]);
            break;
        } else
            $controller->getBookDetails($actions[2],$actions[3]); 
            break;

    case 'checking':
        //TODO;
        break;

    default:
        $controller->showError('parametro no contemplado en el route');
}
