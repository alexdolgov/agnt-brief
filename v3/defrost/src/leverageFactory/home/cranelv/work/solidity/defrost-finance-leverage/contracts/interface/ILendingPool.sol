// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.7.0 <0.8.0;
interface ILendingPool {
    function asset() external view returns(address);
    function loan(bytes32 account) external view returns(uint256);
    function borrowLimit()external view returns (uint256);
    function borrow(bytes32 account,uint256 amount) external;
    function repay(bytes32 account,uint256 amount) payable external;
}

