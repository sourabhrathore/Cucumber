def bobble(arr)
    for i in 0...10
      res = []
      oval = ['a','e','i','o','u','A','E','I','O','U']
      res << arr.find{|x| x if x.include? oval[i]}
    end
    res.empty?
  end
  
  def same_string(str1, str2)
    str1 = str1.split('')
    str2 = str2.split('')
    if str1.size == str2.size
      res = []
      for 1 in 0...str1.size
        res << str1[i] == str2[i]
      end
      res.include?(false)
    else
      false
    end
  end