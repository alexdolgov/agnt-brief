// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface IBridgeProvider {
    event StrategyAdded(address indexed strategy);
    event StrategyRemoved(address indexed strategy);

    function initBridge(bytes memory data) external;

    function uninitBridge() external;

    function strategy(uint256 index) external view returns (address);

    function strategiesLength() external view returns (uint256);

    function strategies() external view returns (address[] memory);

    function addStrategy(address strategy) external;

    function removeStrategy(address strategy) external;
    
    function bridgeToAddress(address token, address to, uint256 amount, bytes memory extraPayload) external payable;

    function receiveBridged(address token, address from, uint256 amount, bytes memory extraPayload) external payable;
}