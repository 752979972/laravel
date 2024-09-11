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
        $searchSql = request()->input('search');
        $result = ['status' => false, 'message' => ''];
        if ($searchSql) {
            try {
                //处理特殊字符 或者使用 系统自带的 Validator::mak 来验证都可以
                $sql = str_replace(["'", "\\"], ['"', ''], strip_tags($searchSql));
                //只允许查询结果，否则提示错误
                if (str_contains($sql, 'select') && !str_contains($sql, 'update') && !str_contains($sql, 'insert')) {
                    $selectDb = DB::select($sql);
                    $data = [];
                    foreach ($selectDb as $item) {
                        $data[] = $item->id;
                    }
                    $result['status'] = true;
                    //因为需求没有明确说查某一个表，所以demo目前只提供查devs此表
                    $result['ids'] = $data;
                } else {
                    $result['message'] = __('SQL Query Error, Only Select Is Allowed');
                }
            } catch (\Exception $e) {
                //异常信息输出提示
                $result['message'] = $e->getMessage();
            }

            self::addSearchLog(['sql' => $result, 'message' => $result['message']]);
        }
        return $result;
    }

    /**
     * 添加 记录查询
     * @param $search
     * @return void
     */
    private static function addSearchLog($search)
    {
        $userName = Admin::user()->name;
        $searchSql = request()->input('search');
        $data = [
            'user' => $userName,
            'sql' => $searchSql,//$search['sql'],
            'error' => $search['message'],
            'created_at' => date('Y-m-d H:i:s'),
        ];
        \App\Models\Dev::insert($data);
    }
}
