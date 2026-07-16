/**
 *Submitted for verification at moonriver.moonscan.io on 2022-07-28
*/

pragma solidity ^0.8.0;

contract setText{
    string public text;
    
    function setTextData(string calldata _text) public {
        text = _text;
    }
}