// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

interface IStargateBridge {
	struct StargateConfig {
		address router;
		address burnToken;
		address mintRecipient;
		uint16 destinationChainId;
		uint32 sourcePoolId;
		uint32 destinationPoolId;
	}

	function configStargateBridge(StargateConfig memory _config) external;

	function bridgeWithStargate(uint256 amount, uint256 minAmountOut) external;

	function estimateStargateFee() external view returns (uint256);
}
