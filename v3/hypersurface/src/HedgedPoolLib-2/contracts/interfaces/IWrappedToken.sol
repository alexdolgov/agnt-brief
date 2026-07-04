pragma solidity ^0.8.0;

interface IWrappedToken {
    function transfer(address to, uint value) external returns (bool);
    function withdraw(uint) external;
    function deposit() external payable;
}
