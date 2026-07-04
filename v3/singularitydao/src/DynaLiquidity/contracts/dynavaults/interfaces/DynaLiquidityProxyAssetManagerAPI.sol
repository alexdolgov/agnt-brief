// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface DynaLiquidityProxyAssetManagerAPI {
	function LIQUIDITY_GOVERNANCE() external view returns (bytes32);

	function ASSET_MANAGEMENT() external view returns (bytes32);

	function initialize(address vaultAddress, bytes32 poolId, address assetAddress, address liquidityGovernance, address assetManagement) external;

	function setProxyImplementation(address newProxyImplementation) external;

	function hasProxyImplementation() external view returns (bool);

	function invest(uint256 amount) external;

	function liquidate(uint256 amount) external;

	function withdrawFromPool(bytes32 poolId, IERC20 token, uint256 amount) external;

	function depositToPool(bytes32 poolId, IERC20 token, uint256 amount) external;

	function removeToken(address tokenRecipient) external;
}
