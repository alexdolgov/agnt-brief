// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

interface IPool {
    event SetToken(address token);
    event Mint(address indexed account, uint amount);
    event Burn(address indexed account, uint amount);
    event Withdraw(address indexed account, uint reward);

    function balanceOf(address _account) external view returns (uint);
    function registry() external view returns (address);
    function token() external view returns (address);
    function totalSupply() external view returns (uint);

    function setToken(address _token) external;
    function mint(address _account, uint _amount) external;
    function burn(address _account, uint _amount) external;
    function withdraw() external returns (uint);
    function withdrawableRewardsOf(address _account) external view returns (uint);
}
