// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IManager {
    function receipt() external view returns (address);

    function executeOrder(uint256 _receiptId, uint256 _amount, uint256 _fee, uint256 _gas) external;
}
