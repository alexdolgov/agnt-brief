// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./IERC5143.sol";
import "./DynaRouterAPI.sol";
import "./VaultSimulatorAPI.sol";

interface DynaVaultAPI is IERC5143 {
	function initialize(
		string memory _nameOverride,
		string memory _symbolOverride,
		address _manager,
		address _referenceAssetOracle,
		address _dynaRouter,
		address _owner,
		address _simulator
	) external;

	function manager() external view returns (address);

	function dynaRouter() external view returns (DynaRouterAPI);

	function referenceAssetOracle() external view returns (address);

	function referenceAsset() external view returns (address);

	function previewRedeemProportional(uint256 shares, VaultSimulatorAPI.VaultSnapshot memory snapshot) external view returns (uint256[] memory);

	function redeemProportional(uint256 shares, address receiver, address owner) external returns (uint256[] memory);

	function issueSharesForFeeAmount(address to, uint256 feeAmount, address feeToken, uint256 deltaTotalAssets) external returns (uint256);

	function feeTransfer(address _to, uint256 _amount) external;

	function approveAddedToken(address tokenAddress) external;

	function doSwap(address _tokenIn, uint256 _amountIn, address _tokenOut, uint256 _minAmountOut) external returns (uint256 amountOut);

	function calcSharesForFeeAmountUsingGivenTotalSupplyAndTotalAssets(
		uint256 feeAmount,
		address feeToken,
		uint256 deltaTotalAssets,
		uint256 givenTotalSupply,
		uint256 givenTotalAssets
	) external view returns (uint256 feeShares);

	function tokenValueInQuoteAsset(address _base, uint256 _amount, address _quote) external view returns (uint256 value);

	function withdrawTokenDebtFromStrategies(address tokenAddress, uint256 valueToWithdraw) external returns (uint256 totalLoss, uint256 totalWithdrawn);

	function takeSnapshot() external view returns (VaultSimulatorAPI.VaultSnapshot memory);

	function simulatedIssueSharesForFeeAmount(
		uint256 feeAmount,
		address feeToken,
		uint256 deltaTotalAssets,
		VaultSimulatorAPI.VaultSnapshot memory snapshot
	) external view returns (VaultSimulatorAPI.VaultSnapshot memory);
}
