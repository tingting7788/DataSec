<?php
declare (strict_types=1);

namespace app\model;

use mysqli;
use PDO;
use think\facade\Db;
use think\Model;
use think\Request;

/**
 * @mixin \think\Model
 */
class DbScan extends Model
{

    public static function start()
    {
        $data = Db::table('db_conf')->select()->toArray();

        foreach ($data as $item) {
            if (isPortOpen($item['db_address'], $item['db_post']) == false) {
                echo "端口未开启:{$item['db_address']}" . PHP_EOL;
                continue;
            }
            echo "开始检测:{$item['db_address']}" . PHP_EOL;
            try {
                $conn = @new mysqli($item['db_address'], $item['db_user'], $item['db_pass'], $item['db_name']);

                $query = "show tables;";
                $result = $conn->query($query);


                // 检查查询结果
                if ($result === false) {
                    echo "查询失败: " . $conn->error;
                } else {
                    // 处理查询结果
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            // 在这里处理每一行的数据
                            // 例如，打印行的每个字段
                            foreach ($row as $field => $value) {
//                                echo "$field: $value ";
//                                echo "$value";
                                $table = "SELECT * FROM {$value} ORDER BY RAND() LIMIT 200;";

                                $biao = $conn->query($table);

                                if ($biao) {
                                    // 将结果以数组形式展示
                                    $data = array();

                                    while ($row = $biao->fetch_assoc()) {
                                        unset($row['id']);

                                        if (hasIdCardNumber(json_encode($row))) {

                                            $data[] = json_encode($row);
                                            var_dump("数据库表" . $value . ": 敏感数据" . json_encode($row));

                                            $row['biaoqian'] = "身份证";
                                            $row['raw'] = json_encode($row);

                                            Db::table('db')->strict(false)->insert($row);
                                        }
                                    }

                                    // 释放结果集
                                    $biao->free();
                                } else {
                                    echo "执行查询失败: " . $conn->error;
                                }

                            }
                            echo PHP_EOL;
                        }
                    } else {
                        echo "没有结果";
                    }
                }

                // 关闭数据库连接
                $conn->close();

            } catch (mysqli_sql_exception $e) {
                // 捕获连接超时异常并进行处理
                // 这里可以根据需要记录日志、输出错误信息等
                echo "连接超时：" . $e->getMessage();
            }


        }
    }
}