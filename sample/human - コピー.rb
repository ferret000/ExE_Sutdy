class Human
  # 名前をセットする「name=」というメソッド
  def name=(name)
    @name = name
  end
 
  # 名前を返す「name」という引数なしメソッド
  def name
    return @name
  end
 
  # 年齢をセットする「age=」というメソッド
  def age=(age)
    @age = age # インスタンス変数「@age」の宣言
  end
 
  # 年齢を返す「age」という引数なしメソッド
  def age
    return @age
  end
 
  # 名前と年齢を表示するメソッド
  def print_name_age
    "名前は#{@name}です。年は#{@age}歳です。"
  end
end
