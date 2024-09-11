<?php

namespace App\Models;

use Encore\Admin\Facades\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Dev extends Model
{
    use HasFactory;

    /**
     * 格式化 时间格式
     * @param \DateTimeInterface $date
     * @return string
     */
    protected function serializeDate(\DateTimeInterface $date)
    {
        return $date->format('Y-m-d H:i:s');
    }

    /**
     * 搜索操作 , 记录和处理结果
     * @return mixed
     */
    public static function getSearchResult()
    {
        $searchSql = request()->input('__search__');
        $result = ['status' => true, 'message' => ''];
        if ($searchSql) try {
            //处理特殊字符 或者使用 系统自带的 Validator::mak 来验证都可以
            $sql = str_replace(["'", "\\"], ['"', ''], strip_tags($searchSql));
            //$result = DB::select($sql);

        } catch (\Exception $e) {
            $result['status'] = false;
            $result['message'] = $e->getMessage();
        }
        return $result;
    }

    public function addSearchLog()
    {
        $userName = Admin::user()->name;
        $searchSql = request()->input('__search__');
    }
}
