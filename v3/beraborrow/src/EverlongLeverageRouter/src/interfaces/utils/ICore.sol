// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

interface ICore {

    // --- Public variables ---
    function metaCore() external view returns (address);
    function startTime() external view returns (uint256);
    function CCR() external view returns (uint256);
    function dmBootstrapPeriod() external view returns (uint64);
    function isPeriphery(address peripheryContract) external view returns (bool);

    // --- External functions ---

    function setPeripheryEnabled(address _periphery, bool _enabled) external;
    function setPMBootstrapPeriod(address dm, uint64 _bootstrapPeriod) external;
    function setNewCCR(uint256 _CCR) external;

    function priceFeed() external view returns (address);
    function owner() external view returns (address);
    function pendingOwner() external view returns (address);
    function guardian() external view returns (address);
    function feeReceiver() external view returns (address);
    function paused() external view returns (bool);
    function lspBootstrapPeriod() external view returns (uint64);
    function getLspEntryFee(address rebalancer) external view returns (uint16);
    function getLspExitFee(address rebalancer) external view returns (uint16);
    function interestProtocolShare() external view returns (uint16);
    function defaultInterestReceiver() external view returns (address);

    // --- Events ---
    event CCRSet(uint256 initialCCR);
    event PMBootstrapPeriodSet(address dm, uint64 bootstrapPeriod);
    event PeripheryEnabled(address indexed periphery, bool enabled);
}
