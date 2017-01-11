import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}

public void draw()
{
}

public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for (int i=0; i<sWord.length(); i++)
	{
	    String th = sWord.substring(i,i+1);
	    if(th.equals("a")||th.equals("e")||th.equals("i")||th.equals("o")||th.equals("u"))
	      return i;
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0)
		return sWord + "way";
	else if(sWord.substring(0,2).equals("qu"))	
	{
		String thing = sWord.substring(2);
		return thing + "quay";
	}
	else if(findFirstVowel(sWord) > 0)
	{
		String thing = sWord.substring(findFirstVowel(sWord));
		String consonents = sWord.substring(0,findFirstVowel(sWord));
		return thing + consonents + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
