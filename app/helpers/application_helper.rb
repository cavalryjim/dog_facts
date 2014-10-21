module ApplicationHelper
  def dog_facts_logo
    ("<span class='logo_dog'>DOG </span><span class='logo_facts'>FACTS</span>").html_safe
  end
  
  def s3_url(file_name)
    'https://s3.amazonaws.com/hce_app/app_images/' << file_name
  end
  
  def button_small(text, button_id = 'button1', button_class = '' )
    ("<button class='small "+button_class+"' id="+"'"+button_id+"'"+">"+text+"</button>").html_safe
  end
  
end
