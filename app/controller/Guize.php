<?php

namespace app\controller;

use app\BaseController;
use app\Request;
use think\facade\Db as Base;
use think\facade\View;

class Guize extends BaseController
{
    public function index()
    {
        $list = Base::table('guize')->select();
//        var_dump($list);
//        die();
        return View::fetch('index',
            ['list' => $list]);
    }

    public function edit(Request $request, $id)
    {
        $list = Base::table('guize')->where(['id' => $id])->find();
        return View::fetch('edit',
            ['list' => $list]);
    }

    public function update(Request $request)
    {
        $params = $request->param();
        $id = ['id' => $params['id']];
        $guize = ['guize' => $params['guize'],'biaoqian' => $params['biaoqian']];;
        Base::table('guize')->where($id)->update($guize,);
        return redirect('index');
    }
}
