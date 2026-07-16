pragma solidity ^0.5.16;

import "./interfaces/VBep20DelegateInterface.sol";
import "./VBep20DelegateStorage.sol";

contract VToken is VBep20DelegateInterface, VBep20DelegateStorage {
    function setImplementations(address[] memory implementations_) public;
}
