# tag::code[]
class MyClass
  def initialize(@name : String, @age : Int32)
  end

  def instance_variables_name
    # インスタンス変数の名前を配列で返す
    {{ @type.instance_vars.map(&.name.stringify) }}
  end

  def instance_variables_type
    # インスタンス変数の型を配列で返す
    {{ @type.instance_vars.map(&.type) }}
  end
end

my_class = MyClass.new("Taro", 30)
puts my_class.instance_variables_name # => ["name", "age"]
puts my_class.instance_variables_type # => [String, Int32]
# end::code[]