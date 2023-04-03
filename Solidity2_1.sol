pragma solidity ^0.8.0;

contract ExampleContract {
    uint256 public myNumber;
    uint256 public value;
    
    function setNumber(uint256 _number) public {
        // Require statement: verifies that the input parameter is greater than 0
        // Advantage: ensures that the input value meets a certain condition before executing the function
        // Disadvantage: if the require statement fails, all state changes made so far in the function are reverted
           require(_number > 0, "Number must be greater than 0");
           myNumber = _number;
    }
    
    function doubleNumber() public {
        // Assert statement: verifies that the multiplication doesn't overflow
        // Advantage: provides an additional safety check to ensure the code works as expected
        // Disadvantage: if the assert statement fails, it indicates a bug in the code that needs to be fixed
            assert(myNumber * 2 > myNumber);
            myNumber = myNumber * 2;
    }
    
      function setValue(uint256 _value) public {
        // If the input number is less than or equal to zero, revert the transaction with an error message
        if (_value <= 0) {
            revert("Number must be greater than 0");
        }
          value = _number;
    }
    
 
}
