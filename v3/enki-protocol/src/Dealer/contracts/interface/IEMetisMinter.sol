//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


interface IEMetisMinter {
    function mint(address account, uint256 amount, bool deposit, address invitedBy) external;
    function mintFromL1(uint256 amount) external;
    function depositToL1Dealer(uint256 amount) external payable;
    function depositToRedemptionQueue(uint256 amount) external payable;
    function redeemToTreasury(uint256 amount) external;
}
