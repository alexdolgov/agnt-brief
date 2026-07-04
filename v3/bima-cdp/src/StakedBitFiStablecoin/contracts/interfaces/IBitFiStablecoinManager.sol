// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

interface IBitFiStablecoinManager {
    function blacklisted(address account) external view returns (bool);
    function currentEpoch() external view returns (uint256);
    function feeReceiver() external view returns (address);
    function isFeeWhitelisted(address user) external view returns (bool);
}
