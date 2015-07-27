require_relative 'shain'	
require_relative 'bumon'	
shain = Shain.new("佐藤　太郎","埼玉県○△△")	
shain2 = Shain.new("斎藤　次郎","神奈川県△××")	
bumon = Bumon.new("営業1部","東京都×××１階")
bumon2 = Bumon.new("営業2部","東京都×××２階")	
bumon.add(shain)
bumon.add(shain2)
bumon.add(bumon2)

bumon.work()
#bumon.get_child().work()	

#units = bumon.get_children
#units.each {|unit| unit.work}

#bumon.work_all()