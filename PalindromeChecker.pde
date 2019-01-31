public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (clean(word).equals(reverse(clean(word))))
  {
    return true;
  }
  return false;

}
  

public String reverse(String str)
{
  String sNew = "";
  int last = str.length()-1;
  for (int i = last; i >= 0; i--)
  {
    sNew = sNew + str.substring(i, i+1);
  }
  return sNew;
}


public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String s = "";
  for (int i = 0; i< sWord.length(); i++)
  {
    if(!sWord.substring(i, i + 1).equals(" "))
    {
      s += sWord.substring(i, i + 1);
    }
  }
  return s;
}

public String onlyLetters(String sString){
  String wop = new String();
  for (int i = 0; i < sString.length(); i++)
  {
    if (Character.isLetter(sString.charAt(i)))
    {
      wop = wop + sString.substring(i,i+1);
    }
  }
  return wop;
}

public String clean (String goop)
{
  goop = noCapitals(goop);
  goop = noSpaces(goop);
  goop = onlyLetters(goop);
  return goop;
  
}
