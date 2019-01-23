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
  String simple = allLetterAllLower(word);
  
  if (simple.equals(reverse(simple)))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length() - 1; i > -1; i--){
      sNew = sNew + str.substring(i, i + 1);
    }
    return sNew;
}

public String allLetterAllLower(String str) {
  String re = "";
  for (int i = 0; i < str.length(); i++){
    if (Character.isLetter(str.charAt(i)))
      re = re + str.substring(i, i + 1);
  }
  return re.toLowerCase();
}
