#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

YoutubeVideoDownloader::Application.load_tasks
==begin
a = "cat dog ___"
i = 0
length = a.length
temp = []
max = 0
while i < length
  ele = a[i]
  j = i + 1
  count = 1
  while j < length
    if ele == a[j]
      count = count + 1
    else
      break 
    end
    j = j + 1
  end
  
  if count > 1
    
    flag = false
    
    temp.each_with_index do |x,index|
      
      if x[:element] == ele
        flag = true
        temp[index][:count] = count if  x[:count] < count
      end
      
    end
    
    if count > max
      max = count
    end
    
    unless flag
      temp.push({ :element => ele , :count => count})
    end    
        
  end
  
  i = i + 1
end
arr = []
temp.each do |e|
  if e[:count] == max
    arr.push << e[:element]
  end
end
arr.sort!
p arr
==end
