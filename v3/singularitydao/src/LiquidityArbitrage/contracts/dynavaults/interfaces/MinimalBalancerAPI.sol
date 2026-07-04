// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./thirdparty/balancer/IAsset.sol";

struct PoolBalanceChange {
	IAsset[] assets;
	uint256[] limits;
	bytes userData;
	bool useInternalBalance;
}

struct JoinPoolRequest {
	IAsset[] assets;
	uint256[] maxAmountsIn;
	bytes userData;
	bool fromInternalBalance;
}

struct ExitPoolRequest {
	IAsset[] assets;
	uint256[] limits;
	bytes userData;
	bool fromInternalBalance;
}

enum JoinKind {
	INIT,
	EXACT_TOKENS_IN_FOR_BPT_OUT,
	TOKEN_IN_FOR_EXACT_BPT_OUT,
	ALL_TOKENS_IN_FOR_EXACT_BPT_OUT
}
enum ExitKind {
	EXACT_BPT_IN_FOR_ONE_TOKEN_OUT,
	EXACT_BPT_IN_FOR_TOKENS_OUT,
	BPT_IN_FOR_EXACT_TOKENS_OUT
}
enum PoolSpecialization {
	GENERAL,
	MINIMAL_SWAP_INFO,
	TWO_TOKEN
}

interface IBVault {
	function getPool(bytes32 poolId) external view returns (address, uint8);

	function getPoolTokenInfo(
		bytes32 poolId,
		IERC20 token
	) external view returns (uint256 cash, uint256 managed, uint256 lastChangeBlock, address assetManager);

	function joinPool(bytes32 poolId, address sender, address recipient, JoinPoolRequest memory userData) external;

	function exitPool(bytes32 poolId, address sender, address recipient, ExitPoolRequest memory userData) external;

	function getPoolTokens(bytes32 poolId) external view returns (address[] memory tokens, uint256[] memory balances, uint256 lastChangeBlock);

	function setRelayerApproval(address sender, address relayer, bool approved) external;
}

interface IManagedPool {
	function getPoolId() external view returns (bytes32);

	function addToken(IERC20 tokenToAdd, address assetManager, uint256 tokenToAddNormalizedWeight, uint256 mintAmount, address recipient) external;

	function removeToken(IERC20 tokenToRemove, uint256 burnAmount, address sender) external;

	function updateWeightsGradually(uint256 startTime, uint256 endTime, IERC20[] memory tokens, uint256[] memory endWeights) external;

	function getNormalizedWeights() external view returns (uint256[] memory);

	function collectAumManagementFees() external returns (uint256);

	function setManagementAumFeePercentage(uint256 managementAumFeePercentage) external returns (uint256);

	function getSwapFeePercentage() external view returns (uint256);

	function updateSwapFeeGradually(uint256 startTime, uint256 endTime, uint256 startSwapFeePercentage, uint256 endSwapFeePercentage) external;

	function queryJoin(
		bytes32 poolId,
		address sender,
		address recipient,
		uint256[] memory balances,
		uint256 lastChangeBlock,
		uint256 protocolSwapFeePercentage,
		bytes memory userData
	) external returns (uint256 bptOut, uint256[] memory amountsIn);

	function queryExit(
		bytes32 poolId,
		address sender,
		address recipient,
		uint256[] memory balances,
		uint256 lastChangeBlock,
		uint256 protocolSwapFeePercentage,
		bytes memory userData
	) external returns (uint256 bptIn, uint256[] memory amountsOut);

	function setMustAllowlistLPs(bool enabledFlag) external;

	function addAllowedAddress(address member) external;

	function removeAllowedAddress(address member) external;

	function getGradualWeightUpdateParams()
		external
		view
		returns (uint256 startTime, uint256 endTime, uint256[] memory startWeights, uint256[] memory endWeights);

	function getManagementAumFeeParams() external view returns (uint256 aumFeePercentage, uint256 lastCollectionTimestamp);

	function getSwapEnabled() external view returns (bool);

	function setSwapEnabled(bool swapEnabled) external;
}

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
