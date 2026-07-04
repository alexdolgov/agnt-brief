// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

interface IIdPool {
    event MintForId(address indexed account, uint amount, uint id);
    event BurnForId(address indexed account, uint amount, uint id);
    event WithdrawForId(address indexed account, uint reward, uint id);

    function idBalanceOf(address, uint) external view returns (uint);
    function accountTotalSupply(address) external view returns (uint);

    function mintForId(address _account, uint _idAmount, uint _totalAmount, uint _id) external;
    function burnForId(address _account, uint _idAmount, uint _totalAmount, uint _id) external;
    function withdrawForId(uint _id) external returns (uint);
    function withdrawableRewardsForId(address _account, uint _id) external returns (uint);
}