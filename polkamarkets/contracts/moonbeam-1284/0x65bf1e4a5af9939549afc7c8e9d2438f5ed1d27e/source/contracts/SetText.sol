pragma solidity ^0.8.0;

contract SetText{
    string public text;
    
    function setTextData(string calldata _text) public {
        text = _text;
    }
}