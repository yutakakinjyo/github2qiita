# -*- coding: utf-8 -*-
class Article

  attr_reader :title, :body

  def initialize
    file_name = ARGV[0]
    set_title(file_name)
    set_body(file_name)
  end

  private

  def set_title(file_name)
    file = open(file_name)
    # 先頭行は見出しの前提でタイトルをマッチングする
    /#*\s*(.*)/ =~ file.first
    @title = $1
    file.close
  end

  def set_body(file_name)
    file = open(file_name)
    @body = file.read
    file.close
  end

end
