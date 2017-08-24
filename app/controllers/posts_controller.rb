class PostsController < ApplicationController
  # 列出来
  def index
    @posts = Post.all
  end

  def new
  end

  # 存到数据库里
  def create
    # ruby 特性:
    # 省略分号
    # 不用写括号
    # 函数默认返回最后一条语句的返回值
    my_params = post_params
    @post = Post.new my_params
    @post.save

    redirect_to @post
  end

  # 展示某一条
  def show
    # post 局部变量
    # @post 全局变量
    @post = Post.find params[:id]
  end

  private

  def post_params
    # params 存放了http request里面的所有变量
    # 为了网络安全考虑,过滤其他乱七八糟的参数
    params.require(:post).permit(:title, :body)
  end
end

# Class 银行卡
# public
  # 卡号
  # 有效期
  # 持卡人
#
# private
  # 密码
  # 余额
