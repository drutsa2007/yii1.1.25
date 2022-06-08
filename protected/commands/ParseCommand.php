<?php
class ParseCommand extends CConsoleCommand
{
    protected function parseDate($date) {
        $date = str_replace("[", '', $date);
        $content = explode(" ", $date);
        # 1,2,4
        $month = [
            'Jan'=>'01',
            'Feb'=>'02',
            'Mar'=>'03',
            'Apr'=>'04',
            'May'=>'05',
            'Jun'=>'06',
            'Jul'=>'07',
            'Aug'=>'08',
            'Sep'=>'09',
            'Okt'=>'10',
            'Nov'=>'11',
            'Dec'=>'12',
        ];
        return $content[4].'-'.$month[$content[1]].'-'.$content[2];
    }

    protected function parseIP($ip) {
        $ip = str_replace("[client ", '', $ip);
        $ip = explode(":", $ip);
        return $ip[0];
    }

    protected function parseText($string) {
        $s = '';
        for($i=4; $i<count($string); $i++) {
            $s .= $string[$i];
        }
        return $s;
    }

    public function actionRun2($args) {
        // Здесь нужно изменить путь если требуется
        $f = dirname(__FILE__).'/../../logs/apache.log';
        $text = file_get_contents($f);
        $lines = explode("\n", $text);
        foreach($lines as $line) {
            $string = explode("]", $line);

            $rec = new Logs;
            $rec->date_log = $this->parseDate($string[0]);
            $type_log = str_replace("[", '', $string[1]);
            $rec->type_log = trim($type_log);
            $type_log = str_replace("[", '', $string[2]);
            $rec->sub_type_log = trim($type_log);
            $rec->ip = trim($this->parseIP($string[3]));
            $rec->text = $this->parseText($string);
            $rec->save();
        }
        echo "parse is over." . PHP_EOL;
    }

    public function actionRun1($args) {
        echo '34' . PHP_EOL;
    }

}
?>