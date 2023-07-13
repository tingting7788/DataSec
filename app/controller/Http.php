<?php

namespace app\controller;

use app\BaseController;
use think\facade\Db;
use think\facade\View;

class Http extends BaseController
{
    public function index()
    {
        $list = Db::table('http')->select();
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
