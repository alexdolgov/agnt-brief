// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

struct ManagedPoolParams {
	string name;
	string symbol;
	address[] assetManagers;
}

struct ManagedPoolSettingsParams {
	address[] tokens;
	uint256[] normalizedWeights;
	uint256 swapFeePercentage;
	bool swapEnabledOnStart;
	bool mustAllowlistLPs;
	uint256 managementAumFeePercentage;
	uint256 aumFeeId;
}

interface IManagedPoolFactory {
	function getVault() external view returns (address);

	function create(
		ManagedPoolParams memory params,
		ManagedPoolSettingsParams memory settingsParams,
		address owner,
		bytes32 salt
	) external returns (address pool);
}
