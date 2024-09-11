<?php

namespace App\Admin\Actions\Dev;


use Encore\Admin\Actions\Action;
use Illuminate\Http\Request;
use Encore\Admin\Actions\BatchAction;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class DownloadJson extends BatchAction
{
    public $name = 'Download Json';
    protected $selector = '.download-json-file';

    /**
     * 处理下载json文件
     * @param Collection $collection
     * @return \Encore\Admin\Actions\Response
     */
    public function handle(Collection $collection)
    {
        try {
            ini_set('max_execution_time', 600);
            set_time_limit(0);
            $jsonData = $collection->toJson();
            $fileName = date('ymdHis') . '.json';
            Storage::disk('public')->put($fileName, $jsonData);
            return $this->response()->success('Success')->download('/storage/' . $fileName);
        } catch (\Exception $e) {
            $return = $this->response()->error($e->getMessage() . ' ' . PHP_EOL . $e->getFile() . PHP_EOL . ' ' . $e->getLine());
        }

        return $return;
    }

    public function html()
    {
        $buttonTitle = __($this->name);
        return '<a class="btn btn-sm btn-default download-json-file">' . $buttonTitle . '</a>';
    }
}
