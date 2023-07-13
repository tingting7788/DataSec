<?php

namespace app\controller;

use app\BaseController;
use think\facade\Db as Base;
use think\facade\View;

class Db extends BaseController
{
    public function index()
    {
        $list = Base::table('db')->select();
//        var_dump($list);
//        die();
        return View::fetch('index',
        ['list'=>$list]);
    }

    public function hello($name = 'ThinkPHP6')
    {
        return 'hello,' . $name;
    }
}
