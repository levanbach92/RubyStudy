# 1.1〜100までの数値配列aを用意し、３の倍数のみ取得した配列c,5の倍数のみ取得した配列dを作成し値を出力せよ

a =[]
b =[]
c =[]

for i in 1..100
	a.push(i)
end
#puts a
for j in a
	if (j%3 ==0)
		b.push(j)
	end
		
	end
puts ("３の倍数")
puts b
for j in a
	if (j%5 ==0)
		c.push(j)
	end
		
	end
puts ("5の倍数")	
puts c

#門２

puts "-x-x-"
puts "x-x-x"
puts "-x-x-"
puts "x-x-x"
puts "-x-x-"

＃門３
def shift_char(c, base, offset)
   (((c.ord - base) + offset) % 26 + base).chr
end

def cipher(s, offset)
   s.chars.map do |c|
     case c
     when 'a'..'z'
       shift_char(c, 'a'.ord, offset)
     when 'A'..'Z'
       shift_char(c, 'A'.ord, offset)
     else
       c
     end
   end.join
 end
 
 cipher_text = cipher('OCVIF TJP AJM ZQZMTOCDIB', 5)
 p cipher_text       





