import java.util.*;
class Solution {
    boolean solution(String s) {
        
        char[] sArr = s.toCharArray();
        Stack<String> stack = new Stack<>();
        
        for(int i = 0; i < sArr.length; i++){
            if(sArr[i] == '('){
                stack.push(")");
            }else if(sArr[i] == ')' && !stack.isEmpty()){
                stack.pop();
            }else{
                return false;
            }
        }
        
        if(!stack.isEmpty()){
            return false;
        }
        
        return true;

    }
}