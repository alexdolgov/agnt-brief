// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IUToken {
    function checkIsOverdue(address account) external view returns (bool);
    function mint(uint256 amountIn) external;
    function getBorrowed(address account) external view returns (uint256);
    function getLastRepay(address) external view returns (uint256);
    function overdueTime() external view returns (uint256);
    function repayBorrow(address borrower, uint256 amount) external;
}
