class Post < ActiveRecord::Base
  # 这个地方是呀给你发博客的时候加一些检查(validation)
  # 第一个是说 title必须有东西(presence: true), 长度不能小于5
  # 第二个是说body必须有同东西
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true

  # 如果你发博客的时候违反了这两个检查,那rails就会把错误存在
  # 一个叫@post.errors的变量里面,详情见我在 _form.html.erb 里面加的代码
  # 还有很多其他的地方也会用到validation,比如说检查密码有没有数字啊, 有没有字母啊
  # 检查你发的微博有没有超过200字啊什么的
end
