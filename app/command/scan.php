<?php
declare (strict_types = 1);

namespace app\command;

use app\model\DbScan;
use think\console\Command;
use think\console\Input;
use think\console\input\Argument;
use think\console\input\Option;
use think\console\Output;

class scan extends Command
{
    protected function configure()
    {
        // 指令配置
        $this->setName('scan')
            ->addArgument('name', Argument::OPTIONAL, "name")
            ->setDescription('the scan command');
    }

    protected function execute(Input $input, Output $output)
    {

        $name = trim($input->getArgument('name'));

        if ($name == 'db'){
            DbScan::start();
        }


    }
}
