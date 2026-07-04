// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./DynaLiquidityLib.sol";
import "./DynaLiquidityAssetManagerLib.sol";
import "../utils/Clonable.sol";
import "../interfaces/DynaLiquidityAPI.sol";

import "hardhat/console.sol";

contract DynaLiquidity is DynaLiquidityAPI, Clonable {
	bytes32 public constant LIQUIDITY_GOVERNANCE = keccak256("LIQUIDITY_GOVERNANCE"); // add/remove assets
	bytes32 public constant LIQUIDITY_MANAGEMENT = keccak256("LIQUIDITY_MANAGEMENT"); // change asset weights
	bytes32 public constant SWAP_GOVERNANCE = keccak256("SWAP_GOVERNANCE"); // allowed to enable/disable swap
	bytes32 public constant FEE_MANAGER = keccak256("FEE_MANAGER"); // collect and manage AUM fees

	error MissingLiquidityGovernance();
	error MissingLiquidityManagement();
	error MissingFeeManager();

	/**
	 * @notice Returns the managedPoolFactory address
	 * @return managedPoolFactory Address of the managedPoolFactory
	 */
	function managedPoolFactory() public view returns (address) {
		return DynaLiquidityLib.liquidityStorage().managedPoolFactory;
	}

	/**
	 * @notice Returns the balancer vault address
	 * @return vault Address of the balancer vault
	 */
	function vault() public view returns (address) {
		return DynaLiquidityLib.liquidityStorage().vault;
	}

	/**
	 * @notice Returns the managed pool
	 * @return pool Address of the managed pool
	 */
	function pool() public view returns (address) {
		return DynaLiquidityLib.liquidityStorage().pool;
	}

	/**
	 * @notice Returns the fee recipient address
	 * @return feeRecipient Address of the fee recipient
	 */
	function feeRecipient() public view returns (address) {
		return DynaLiquidityLib.liquidityStorage().feeRecipient;
	}

	/**
	 * @notice Returns the pool id
	 * @return poolId The pool id of the managed pool
	 */
	function poolId() public view returns (bytes32) {
		return DynaLiquidityLib.liquidityStorage().poolId;
	}

	/**
	 * @notice Returns the address of proxy asset manager implementation
	 * @return proxyAssetManagerImplementation Address of the asset manager implementation
	 */
	function proxyAssetManagerImplementation() external view returns (address) {
		return DynaLiquidityAssetManagerLib.proxyAssetManagerImplementation();
	}

	/**
	 * @notice ETH mainnet managed pool factory: 0xBF904F9F340745B4f0c4702c7B6Ab1e808eA6b93
	 * @notice Sets up the managed pool liquidity
	 * @param managedPoolFactoryAddress The address of the managed pool factory
	 * @param proxyAssetManagerImplementationAddress The address of the asset manager implementation
	 * @param liquidityGovernance The address of the liquidity governance
	 * @param liquidityManagement The address of the liquidity management
	 * @param feeManager The address of the fee manager
	 * @param aumFeeRecipient The address of the aum fee recipient
	 */
	function setupLiquidity(
		address managedPoolFactoryAddress,
		address proxyAssetManagerImplementationAddress,
		address liquidityGovernance,
		address liquidityManagement,
		address feeManager,
		address aumFeeRecipient
	) external onlyRole(DEFAULT_ADMIN_ROLE) {
		if (liquidityGovernance == address(0)) revert MissingLiquidityGovernance();
		if (liquidityManagement == address(0)) revert MissingLiquidityManagement();
		if (feeManager == address(0)) revert MissingFeeManager();
		DynaLiquidityLib.initialize(managedPoolFactoryAddress, aumFeeRecipient);
		DynaLiquidityAssetManagerLib.initialize(proxyAssetManagerImplementationAddress);
		_grantRole(LIQUIDITY_GOVERNANCE, liquidityGovernance);
		_grantRole(LIQUIDITY_MANAGEMENT, liquidityManagement);
		_grantRole(FEE_MANAGER, feeManager);
		_setRoleAdmin(LIQUIDITY_MANAGEMENT, LIQUIDITY_GOVERNANCE);
		_setRoleAdmin(SWAP_GOVERNANCE, LIQUIDITY_GOVERNANCE);
	}

	/**
	 * @notice Creates a managed pool
	 * @param name The name of the pool
	 * @param symbol The symbol of the pool
	 * @param settingsParams The ManagedPoolSettingsParams
	 * @param salt A unique salt to have reproducible pool addresses
	 */
	function createManagedPool(
		string memory name,
		string memory symbol,
		ManagedPoolSettingsParams memory settingsParams,
		bytes32 salt
	) external onlyRole(LIQUIDITY_GOVERNANCE) {
		DynaLiquidityLib.createManagedPool(name, symbol, settingsParams, salt);
	}

	/**
	 * @notice Returns the pool tokens
	 * @return tokensWithBpt The pool tokens includeing the bpt
	 */
	function tokens() external view returns (address[] memory tokensWithBpt) {
		return DynaLiquidityLib.tokens();
	}

	/**
	 * @notice Returns the pool tokens and balances
	 * @return tokensWithBpt The pool tokens includeing the bpt
	 * @return tokenBalances The pool tokens balances
	 */
	function tokensAndBalances() external view returns (address[] memory tokensWithBpt, uint256[] memory tokenBalances) {
		return DynaLiquidityLib.tokensAndBalances();
	}

	/**
	 * @notice initializing liquidity
	 * @param tokenAddresses The addresses of the tokens
	 * @param amountsIn The amounts of tokens
	 */
	function addInitialLiquidity(address[] memory tokenAddresses, uint256[] memory amountsIn) external onlyRole(LIQUIDITY_GOVERNANCE) {
		DynaLiquidityLib.addInitialLiquidity(tokenAddresses, amountsIn);
	}

	/**
	 * @notice adding new asset, sets weight, creates an asset manager and mints liquidity tokens to caller
	 * @param newTokenAddress The address of the toke to add
	 * @param tokenAmount The amount of token
	 * @param tokenWeight The weight of the token
	 * @param liquidityTokensToMint The amount of pool token to mint
	 */
	function addToken(
		address newTokenAddress,
		uint256 tokenAmount,
		uint256 tokenWeight,
		uint256 liquidityTokensToMint
	) external onlyRole(LIQUIDITY_GOVERNANCE) {
		DynaLiquidityLib.addToken(newTokenAddress, tokenAmount, tokenWeight, liquidityTokensToMint);
	}

	/**
	 * @notice Sets the asset manager address for a token
	 * @param tokenAddress The address of the token
	 * @param assetManager The address of the asset manager
	 */
	function setAssetManager(address tokenAddress, address assetManager) external onlyRole(LIQUIDITY_GOVERNANCE) {
		DynaLiquidityLib.setAssetManager(tokenAddress, assetManager);
	}

	/**
	 * @notice Sets the asset manager address for a token
	 * @param tokenAddress The address of the token
	 * @return managedAmount The amount of managed token
	 * @return proxyAssetManager The asset maanger Address
	 */
	function getAssetManager(address tokenAddress) public view returns (uint256 managedAmount, address proxyAssetManager) {
		return DynaLiquidityLib.getAssetManager(tokenAddress);
	}

	function invest(address tokenAddress, uint256 amount) external onlyRole(LIQUIDITY_MANAGEMENT) {
		(, address assetManager) = DynaLiquidityLib.getAssetManager(tokenAddress);
		DynaLiquidityAssetManagerLib.invest(assetManager, amount);
	}

	function liquidate(address tokenAddress, uint256 amount) external onlyRole(LIQUIDITY_MANAGEMENT) {
		(, address assetManager) = DynaLiquidityLib.getAssetManager(tokenAddress);
		DynaLiquidityAssetManagerLib.liquidate(assetManager, amount);
	}

	/**
	 * @notice Register extra liquidity managers (which are allowed to join/exit liquidity like a zapper or manage weights like a manager)
	 * @param manager The address of the manager
	 */
	function registerLiquidityManager(address manager) external onlyRole(LIQUIDITY_GOVERNANCE) {
		_grantRole(LIQUIDITY_MANAGEMENT, manager);
	}

	/**
	 * @notice Update asset weights gradually
	 * @param newWeights The new weights to use
	 * @param reweightDuration The duration of the update
	 */
	function updateWeightsGradually(uint256[] memory newWeights, uint256 reweightDuration) external onlyRole(LIQUIDITY_MANAGEMENT) {
		DynaLiquidityLib.updateWeightsGradually(newWeights, reweightDuration);
	}

	/**
	 * @notice Returns the current token weights
	 * @return tokenWeights
	 */
	function getCurrentWeights() external view returns (uint256[] memory) {
		return DynaLiquidityLib.getCurrentWeights();
	}

	/**
	 * @notice Returns the weight parameters
	 * @return startTime The start time of the gradual weight update
	 * @return endTime The end time of the gradual weight update
	 * @return startWeights The start weights
	 * @return endWeights The end weights
	 */
	function getGradualWeightUpdateParams()
		external
		view
		returns (uint256 startTime, uint256 endTime, uint256[] memory startWeights, uint256[] memory endWeights)
	{
		return DynaLiquidityLib.getGradualWeightUpdateParams();
	}

	/**
	 * @notice Removes a token
	 * @param tokenToBeRemoved The address of the token
	 */
	function removeToken(address tokenToBeRemoved) external onlyRole(LIQUIDITY_GOVERNANCE) {
		DynaLiquidityLib.removeToken(tokenToBeRemoved);
	}

	/**
	 * @notice manage list of allowed liquidity providers
	 * @param enableWhitelistForLPsFlag The white list enabled state
	 */
	function setEnableWhitelistForLPsFlag(bool enableWhitelistForLPsFlag) external onlyRole(LIQUIDITY_GOVERNANCE) {
		DynaLiquidityLib.setEnableWhitelistForLPsFlag(enableWhitelistForLPsFlag);
	}

	/**
	 * @notice Adds an address to the LP whitelist
	 * @param member The address to add
	 */
	function addToWhitelistForLPs(address member) external onlyRole(LIQUIDITY_GOVERNANCE) {
		DynaLiquidityLib.addToWhitelistForLPs(member);
	}

	/**
	 * @notice Removes an address form the LP whitelist
	 * @param member The address to remove
	 */
	function removeFromWhitelistForLPs(address member) external onlyRole(LIQUIDITY_GOVERNANCE) {
		DynaLiquidityLib.removeFromWhitelistForLPs(member);
	}

	/**
	 * @notice Set the management fee
	 * @param desiredAumFeePercentage The new management fee percentage
	 */
	function updateManagementFee(uint256 desiredAumFeePercentage) external onlyRole(FEE_MANAGER) {
		DynaLiquidityLib.updateManagementFee(desiredAumFeePercentage);
	}

	/**
	 * @notice Get current management fee
	 * @return aumFeePercentage Assets Under Management fee percentage
	 */
	function getManagementFee() external view returns (uint256 aumFeePercentage) {
		return DynaLiquidityLib.getManagementFee();
	}

	/**
	 * @notice Collect management fees
	 */
	function collectManagementFees() external onlyRole(FEE_MANAGER) {
		DynaLiquidityLib.collectManagementFees();
	}

	/**
	 * @notice Sets the fee recipient
	 * @param newAumFeeRecipient The address of the new fee recipient
	 */
	function updateFeeRecipient(address newAumFeeRecipient) external onlyRole(FEE_MANAGER) {
		DynaLiquidityLib.updateFeeRecipient(newAumFeeRecipient);
	}

	/**
	 * @notice Get current swap fee
	 * @return feePercentage Swap fee percentage
	 */
	function getSwapFee() external view returns (uint256 feePercentage) {
		feePercentage = DynaLiquidityLib.getSwapFee();
	}

	/**
	 * @notice Update swap fee
	 * @param startTime The time to start changing the fee
	 * @param endTime the time to end changing the fee
	 * @param startSwapFeePercentage the start fee
	 * @param endSwapFeePercentage the end fee
	 */
	function updateSwapFee(uint256 startTime, uint256 endTime, uint256 startSwapFeePercentage, uint256 endSwapFeePercentage) external onlyRole(FEE_MANAGER) {
		DynaLiquidityLib.updateSwapFee(startTime, endTime, startSwapFeePercentage, endSwapFeePercentage);
	}

	/**
	 * @notice get swap enabled state
	 */
	function getSwapEnabled() external view returns (bool) {
		return DynaLiquidityLib.getSwapEnabled();
	}

	/**
	 * @notice set swap enabled state
	 */
	function setSwapEnabled(bool swapEnabled) external onlyRole(SWAP_GOVERNANCE) {
		DynaLiquidityLib.setSwapEnabled(swapEnabled);
	}

	/**
	 * @notice Add liquidity using a single token
	 * @param tokenIn The address of the token to join with
	 * @param amountInMax The max amount of tokenIn to spend
	 * @param minPoolAmountOut The minimum amount of bpt expected
	 * @return bptOut The amount of bpt tokens receieved
	 */
	function joinWithSingleAsset(address tokenIn, uint256 amountInMax, uint256 minPoolAmountOut) external onlyRole(LIQUIDITY_MANAGEMENT) returns (uint256) {
		return DynaLiquidityLib.joinWithSingleAsset(tokenIn, amountInMax, minPoolAmountOut);
	}

	/**
	 * @notice remove liquidity into a single token
	 * @param tokenOut The address of the token out
	 * @param poolAmountIn The amount of pool token to spend
	 * @param minAmountOut The minimum amount of tokenOut expected
	 */
	function exitWithSingleAsset(address tokenOut, uint256 poolAmountIn, uint256 minAmountOut) external onlyRole(LIQUIDITY_MANAGEMENT) {
		DynaLiquidityLib.exitWithSingleAsset(tokenOut, poolAmountIn, minAmountOut);
	}
}
