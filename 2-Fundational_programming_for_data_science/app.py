import random
import string

def PASSWORD(lenght,strenght):
    Ltr=string.ascii_letters
    Upper_ltr=string.ascii_uppercase
    Lower_ltr=string.ascii_lowercase
    punctuation=string.punctuation
    number=string.digits
    
    lis = ["Ihssane","password","letter",'sara']
    if strenght.lower() == 'weak':  
      return random.choice(lis)
      
    else:
      all_chars = Ltr + punctuation + number + Upper_ltr + Lower_ltr
      password = ""
      for i in range(lenght):  
          password += random.choice(all_chars)
      return password
  
if __name__== "main":
  pass   
print(PASSWORD(10,'strong')) 
print(PASSWORD(10,'weak')) 