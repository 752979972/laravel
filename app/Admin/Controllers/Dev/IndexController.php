<?php

namespace App\Admin\Controllers\Dev;

use App\Models\Dev;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class IndexController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Dev Search';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Dev());
        $result = Dev::getSearchResult();
        if (isset($result['status']) && !$result['status'] && isset($result['message'])) {
            //正式环境 可以 view()模版输出 错误， 或者 直接返回错误 return response()->json(['message' => 'Failed to create user.', 'error' => 'sss'], 500);
            $grid->header(function () use ($result){
                return '<div id="error-message" style="color: red;">'.$result['message'].'</div>';
            });
        }else{

        }
        $grid->quickSearch('user', 'sql')->placeholder('select * from devs where user="1" ');
        $grid->setActionClass(\Encore\Admin\Grid\Displayers\Actions::class);

        $grid->column('id', __('Id'));
        $grid->column('user', __('User Name'));
        $grid->column('sql', __('Search Sql'));
        $grid->column('error', __('error'))->display(function ($desc) {
            return strlen($desc) > 60 ? mb_substr($desc, 0, 60, "UTF-8") . '...' : $desc;
        })->expand(function ($model) {
            return nl2br($model->description);
        });
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'))->hide();
        $grid->model()->orderBy('id', 'desc');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Dev::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user', __('User'));
        $show->field('sql', __('Sql'));
        $show->field('error', __('Error'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Dev());
        $form->text('user', __('User'));
        $form->text('sql', __('Search Sql'));
        $form->textarea('error', __('error'));
        return $form;
    }
}
