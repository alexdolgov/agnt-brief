// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import "./ICCTPBridge.sol";
import "./IStargateBridge.sol";

interface ISymmioBridgeHelper is IStargateBridge, ICCTPBridge {
	event CCTPBridgeConfigured(CCTPConfig config);
	event StargateBridgeConfigured(StargateConfig config);
	event CCTPBridgeInitiated(uint256 amount, uint64 nonce);
	event StargateBridgeInitiated(uint256 amount, uint256 minAmountOut, uint256 fee);
}

interface IBridgeHelper is ISymmioBridgeHelper {
	function cctpConfig() external view returns (CCTPConfig memory);

	function stargateConfig() external view returns (StargateConfig memory);
}
