// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.20;

interface IBinanceOracle {
    function acceptOwnership() external;
    function accessControlManager() external view returns (address);
    function getFeedRegistryAddress() external view returns (address);
    function getUnderlyingPrice(address vToken) external view returns (uint256);
    function initialize(address _sidRegistryAddress, address _accessControlManager) external;
    function maxStalePeriod(string memory) external view returns (uint256);
    function owner() external view returns (address);
    function pendingOwner() external view returns (address);
    function renounceOwnership() external;
    function setAccessControlManager(address accessControlManager_) external;
    function setMaxStalePeriod(string memory symbol, uint256 _maxStalePeriod) external;
    function sidRegistryAddress() external view returns (address);
    function transferOwnership(address newOwner) external;
    function vBnb() external view returns (address);
    function vai() external view returns (address);
}
