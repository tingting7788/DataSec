<?php

namespace app\controller;

use app\BaseController;
use mysqli;
use think\Request;
use think\facade\Db as Base;
use think\facade\View;
use think\response\Redirect;

class Dbconf extends BaseController
{
    public function index()
    {
        $list = Base::table('db_conf')->select();
        return View::fetch('index',
            ['list' => $list]);
    }

    public function creation(Request $request)
    {
        $data = Base::table('db_conf')->insert($request->param());
        var_dump($data);
        return redirect('index');
    }

    public function edit(Request $request, $id)
    {
        $info = Base::table('db_conf')->where(['id' => $id])->find();
        return View::fetch('edit',
            ['info' => $info]);
    }

    public function update(Request $request)
    {
        var_dump($request->param());
//        die();
        $data = Base::table('db_conf')->update($request->param());
        return redirect('index');
    }

    function queryDatabase(Request $request)
    {
        $param = $request->param();
        var_dump($request->param());
//        $conn = new mysqli('192.168.0.109', 'root', 'root', 'data');
        $conn = new mysqli($param['db_address'], $param['db_user'], $param['db_pass'], $param['db_name']);

        // 检查连接是否成功
        if ($conn->connect_error) {
            die("连接数据库失败: " . $conn->connect_error);
        } else {
            echo "数据库连接成功";
        }

        return redirect('/dbconf/index');
    }




}
