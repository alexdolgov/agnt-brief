// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/access/IAccessControlUpgradeable.sol";

interface IUltra is IAccessControlUpgradeable {
    function setKYC(address _kyc) external;
    function clawback(address from, uint256 amount) external;
    
    // Transfer limit functions
    function setTransferLimit(uint256 newLimit) external;
    function setTransferLimitPeriod(uint256 newPeriod) external;
    
    // view functions
    function completeTransfer(address to, uint256 amount) external;
    function transferLimit() external view returns (uint256);
    function transferLimitPeriod() external view returns (uint256);

    // Events
    event TokensClawedBack(address indexed from, address indexed admin, uint256 amount);
    event MintCompleted(address indexed to, uint256 amount, string promiseId);
    event TransferLimitSet(uint256 oldLimit, uint256 newLimit);
    event TransferLimitPeriodSet(uint256 oldPeriod, uint256 newPeriod);
}
