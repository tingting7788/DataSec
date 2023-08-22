<?php
// 应用公共文件

use think\facade\Db;

function isPortOpen($host, $port, $timeout = 2)
{
    $socket = @fsockopen($host, $port, $errno, $errstr, $timeout);

    if ($socket) {
        // 连接成功，端口是开启的
        fclose($socket);
        return true;
    } else {
        // 连接失败，端口是关闭的或不可访问的
        return false;
    }
}


function hasIdCardNumber($str)
{
    $list = Db::table('guize')->select()->toArray();
//    var_dump($list);die();
    foreach ($list as $value) {
        $pattern = $value['guize']; // 使用正则表达式匹配身份证号码的模式
        var_dump($pattern);
        var_dump($str);
//        die();
        if (preg_match($pattern, $str)) {
            return true; // 字符串中包含身份证号码
        }

    }


    return false; // 字符串中不包含身份证号码

}
