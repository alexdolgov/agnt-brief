// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./DynaLiquidityAssetManagerLib.sol";
import "../interfaces/DynaLiquidityProxyAssetManagerAPI.sol";
import "../interfaces/DynaLiquidityAPI.sol";
import "../interfaces/MinimalBalancerAPI.sol";

import "hardhat/console.sol";

/**
 *@title DynaLiquidityLib
 *@notice Libary functions for DynaLiqduity
 */
library DynaLiquidityLib {
	using SafeERC20 for IERC20;

	uint256 private constant ASSET_MIN_WEIGHT = 0.01e18;

	/// @dev The storage slot follows EIP1967 to avoid storage collision
	bytes32 private constant LIQUIDITY_STORAGE_POSITION = bytes32(uint256(keccak256("DynaLiquidity.LiquidityStorage")) - 1);

	struct LiquidityStorage {
		address managedPoolFactory;
		address vault;
		address pool;
		address feeRecipient;
		bytes32 poolId;
	}

	error AlreadyInitialized();
	error MissingManagedPoolFactory();
	error MissingAumFeeRecipient();
	error MissingLiquidityGovernance();
	error InvalidTokenList();
	error InvalidToken(address tokenAddress);
	error TokenWeightNotZero(address tokenAddress);
	error InvalidNrOfTokens();
	error InvalidNrOfWeights();
	error UserLacksPoolTokens(uint256 requestedAmount, uint256 actualAmount);
	error MissingAmount();
	error BelowMinimumWeight(uint256 requestedWeight, uint256 minimumWeight);

	event UpdatedDynaLiquidityAssetManager(address tokenAddress, address assetManager);

	/**
	 * @notice returns the liquidity storage
	 * @return ls storage pointer for accessing the state variables
	 */
	function liquidityStorage() public pure returns (LiquidityStorage storage ls) {
		bytes32 position = LIQUIDITY_STORAGE_POSITION;
		assembly {
			ls.slot := position
		}
	}

	/**
	 * @notice Initializes the library
	 * @notice ETH mainnet managed pool factory: 0xBF904F9F340745B4f0c4702c7B6Ab1e808eA6b93
	 * @param managedPoolFactoryAddress The address of the balancer pool factory
	 * @param aumFeeRecipient The address of the fee recipient
	 */
	function initialize(address managedPoolFactoryAddress, address aumFeeRecipient) external {
		LiquidityStorage storage _storage = liquidityStorage();
		if (_storage.vault != address(0)) revert AlreadyInitialized();
		if (managedPoolFactoryAddress == address(0)) revert MissingManagedPoolFactory();
		if (aumFeeRecipient == address(0)) revert MissingAumFeeRecipient();
		_storage.managedPoolFactory = managedPoolFactoryAddress;
		_storage.vault = IManagedPoolFactory(managedPoolFactoryAddress).getVault();
		_storage.feeRecipient = aumFeeRecipient;
	}

	/**
	 * @notice Creates a managed pool
	 * @param name The name of the pool
	 * @param symbol The symbol of the pool
	 * @param settingsParams The ManagedPoolSettingsParams
	 * @param salt A unique salt to have reproducible pool addresses
	 */
	function createManagedPool(string memory name, string memory symbol, ManagedPoolSettingsParams memory settingsParams, bytes32 salt) external {
		LiquidityStorage storage _storage = liquidityStorage();
		uint256 nrOfTokens = settingsParams.tokens.length;
		address[] memory assetManagers = new address[](nrOfTokens);
		for (uint256 i = 0; i < nrOfTokens; ++i) {
			assetManagers[i] = DynaLiquidityAssetManagerLib.getNewProxyAssetManager();
		}
		ManagedPoolParams memory params = ManagedPoolParams({name: name, symbol: symbol, assetManagers: assetManagers});
		address pool = IManagedPoolFactory(_storage.managedPoolFactory).create(params, settingsParams, address(this), salt);
		_storage.pool = pool;
		_storage.poolId = IManagedPool(pool).getPoolId();
		addToWhitelistForLPs(address(this));
		for (uint256 i = 0; i < nrOfTokens; ++i) {
			DynaLiquidityAssetManagerLib.initializeProxyAssetManager(
				assetManagers[i],
				_storage.vault,
				_storage.poolId,
				settingsParams.tokens[i],
				address(this),
				address(this)
			);
		}
	}

	/**
	 * @notice Returns the pool tokens
	 * @return tokensWithBpt The pool tokens includeing the bpt
	 */
	function tokens() public view returns (address[] memory tokensWithBpt) {
		LiquidityStorage storage _storage = liquidityStorage();
		(tokensWithBpt, , ) = IBVault(_storage.vault).getPoolTokens(_storage.poolId);
	}

	/**
	 * @notice Returns the pool tokens and balances
	 * @return tokensWithBpt The pool tokens includeing the bpt
	 * @return tokenBalances The pool tokens balances
	 */
	function tokensAndBalances() external view returns (address[] memory tokensWithBpt, uint256[] memory tokenBalances) {
		LiquidityStorage storage _storage = liquidityStorage();
		(tokensWithBpt, tokenBalances, ) = IBVault(_storage.vault).getPoolTokens(_storage.poolId);
	}

	/**
	 * @notice initializing liquidity
	 * @param tokenAddresses The addresses of the tokens
	 * @param amountsIn The amounts of tokens
	 */
	function addInitialLiquidity(address[] memory tokenAddresses, uint256[] memory amountsIn) external {
		LiquidityStorage storage _storage = liquidityStorage();
		(address[] memory tokensWithBpt, , ) = IBVault(_storage.vault).getPoolTokens(_storage.poolId);
		uint256 numberOfAmounts = amountsIn.length;
		uint256 numberOftokens = tokensWithBpt.length;
		if (numberOftokens != numberOfAmounts + 1) revert InvalidNrOfTokens();
		uint256[] memory maxAmountsIn = new uint256[](numberOfAmounts + 1);
		for (uint256 i = 0; i < numberOfAmounts; ++i) {
			if (tokenAddresses[i] != tokensWithBpt[i + 1]) revert InvalidTokenList();
			maxAmountsIn[i + 1] = amountsIn[i];
		}
		maxAmountsIn[0] = type(uint256).max;
		bytes memory userData = abi.encode(JoinKind.INIT, amountsIn);
		(, uint256[] memory iai) = abi.decode(userData, (JoinKind, uint256[]));
		address[] memory _assets = new address[](numberOftokens - 1);
		for (uint256 i = 0; i < iai.length; i++) {
			_assets[i] = tokensWithBpt[i + 1];
			IERC20(_assets[i]).safeTransferFrom(msg.sender, address(this), iai[i]);
			IERC20(_assets[i]).safeApprove(_storage.vault, type(uint256).max);
		}
		JoinPoolRequest memory request = JoinPoolRequest({
			assets: _asIAsset(tokensWithBpt),
			maxAmountsIn: maxAmountsIn,
			userData: userData,
			fromInternalBalance: false
		});
		IBVault(_storage.vault).joinPool(_storage.poolId, address(this), address(this), request);
		uint256 lpTokens = IERC20(_storage.pool).balanceOf(address(this));
		IERC20(_storage.pool).transfer(msg.sender, lpTokens);
	}

	/**
	 * @notice adding new asset, sets weight, creates an asset manager and mints liquidity tokens to caller
	 * @notice tokens can not be added during a gradual weight change
	 * @notice the newly added token needs a minimum weight of 1%
	 * @notice the liquidity would enter an invalid state when we don't add tokens using the asset manager
	 * @notice either amount should be calculated to reflect weight or weight should be calculated given on amount of tokens supplied
	 * @param newTokenAddress The address of the toke to add
	 * @param tokenAmount The amount of token
	 * @param tokenWeight The weight of the token
	 * @param liquidityTokensToMint The amount of pool token to mint
	 */
	function addToken(address newTokenAddress, uint256 tokenAmount, uint256 tokenWeight, uint256 liquidityTokensToMint) external {
		if (tokenAmount == 0) revert MissingAmount();
		if (tokenWeight < ASSET_MIN_WEIGHT) revert BelowMinimumWeight(tokenWeight, ASSET_MIN_WEIGHT);
		LiquidityStorage storage _storage = liquidityStorage();
		address proxyAssetManager = DynaLiquidityAssetManagerLib.getNewProxyAssetManager();
		DynaLiquidityAssetManagerLib.initializeProxyAssetManager(
			proxyAssetManager,
			_storage.vault,
			_storage.poolId,
			newTokenAddress,
			address(this),
			address(this)
		);
		address liquidityTokensRecipient = msg.sender; // mint bpt to caller
		IERC20(newTokenAddress).transferFrom(msg.sender, proxyAssetManager, tokenAmount);
		IManagedPool(_storage.pool).addToken(IERC20(newTokenAddress), proxyAssetManager, tokenWeight, liquidityTokensToMint, liquidityTokensRecipient);
		DynaLiquidityProxyAssetManagerAPI(proxyAssetManager).depositToPool(_storage.poolId, IERC20(newTokenAddress), tokenAmount);
	}

	/**
	 * @notice Sets the asset manager address for a token
	 * @param tokenAddress The address of the token
	 * @param assetManager The address of the asset manager
	 */
	function setAssetManager(address tokenAddress, address assetManager) public {
		LiquidityStorage storage _storage = liquidityStorage();
		(, , , address proxyAssetManager) = IBVault(_storage.vault).getPoolTokenInfo(_storage.poolId, IERC20(tokenAddress));
		DynaLiquidityProxyAssetManagerAPI(proxyAssetManager).setProxyImplementation(assetManager);
		emit UpdatedDynaLiquidityAssetManager(tokenAddress, assetManager);
	}

	/**
	 * @notice Sets the asset manager address for a token
	 * @param tokenAddress The address of the token
	 * @return managedAmount The amount of managed token
	 * @return proxyAssetManager The asset maanger Address
	 */
	function getAssetManager(address tokenAddress) public view returns (uint256 managedAmount, address proxyAssetManager) {
		LiquidityStorage storage _storage = liquidityStorage();
		(, managedAmount, , proxyAssetManager) = IBVault(_storage.vault).getPoolTokenInfo(_storage.poolId, IERC20(tokenAddress));
	}

	/**
	 * @notice Update asset weights gradually
	 * @param newWeights The nre weights to use
	 * @param reweightDuration The duration of the update
	 */
	function updateWeightsGradually(uint256[] memory newWeights, uint256 reweightDuration) external {
		LiquidityStorage storage _storage = liquidityStorage();
		(address[] memory tokensWithBpt, , ) = IBVault(_storage.vault).getPoolTokens(_storage.poolId);
		uint256 nrOfTokens = tokensWithBpt.length - 1;
		if (nrOfTokens != newWeights.length) revert InvalidNrOfWeights();
		address[] memory tokensList = new address[](nrOfTokens);
		for (uint256 i = 0; i < nrOfTokens; ++i) {
			tokensList[i] = tokensWithBpt[i + 1];
		}
		IManagedPool(_storage.pool).updateWeightsGradually(block.timestamp, block.timestamp + reweightDuration, _asIERC20(tokensList), newWeights);
	}

	/**
	 * @notice Returns the current token weights
	 * @return tokenWeights
	 */
	function getCurrentWeights() external view returns (uint256[] memory) {
		return IManagedPool(liquidityStorage().pool).getNormalizedWeights();
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
		return IManagedPool(liquidityStorage().pool).getGradualWeightUpdateParams();
	}

	/**
	 * @notice Removes token from pool
	 * @param tokenToBeRemoved The address of the token to be removed
	 */
	function removeToken(address tokenToBeRemoved) external {
		LiquidityStorage storage _storage = liquidityStorage();
		(, , , address proxyAssetManager) = IBVault(_storage.vault).getPoolTokenInfo(_storage.poolId, IERC20(tokenToBeRemoved));
		DynaLiquidityProxyAssetManagerAPI(proxyAssetManager).removeToken(msg.sender);
		IManagedPool(_storage.pool).removeToken(IERC20(tokenToBeRemoved), 0, msg.sender);
	}

	/**
	 * @notice Update swap fee
	 * @param startTime The time to start changing the fee
	 * @param endTime the time to end changing the fee
	 * @param startSwapFeePercentage the start fee
	 * @param endSwapFeePercentage the end fee
	 */
	function updateSwapFee(uint256 startTime, uint256 endTime, uint256 startSwapFeePercentage, uint256 endSwapFeePercentage) external {
		IManagedPool(liquidityStorage().pool).updateSwapFeeGradually(startTime, endTime, startSwapFeePercentage, endSwapFeePercentage);
	}

	/**
	 * @notice Get current swap fee
	 * @return feePercentage Swap fee percentage
	 */
	function getSwapFee() external view returns (uint256 feePercentage) {
		feePercentage = IManagedPool(liquidityStorage().pool).getSwapFeePercentage();
	}

	/**
	 * @notice Update management fee
	 * @param desiredAumFeePercentage The new fee amount
	 */
	function updateManagementFee(uint256 desiredAumFeePercentage) external {
		IManagedPool(liquidityStorage().pool).setManagementAumFeePercentage(desiredAumFeePercentage);
	}

	/**
	 * @notice Get current management fee
	 * @return aumFeePercentage Assets Under Management fee percentage
	 */
	function getManagementFee() external view returns (uint256 aumFeePercentage) {
		(aumFeePercentage, ) = IManagedPool(liquidityStorage().pool).getManagementAumFeeParams();
	}
	/**

	 * @notice Collect management fees
	 */
	function collectManagementFees() external {
		LiquidityStorage storage _storage = liquidityStorage();
		uint256 balanceBefore = IERC20(_storage.pool).balanceOf(address(this));
		IManagedPool(_storage.pool).collectAumManagementFees();
		uint256 balanceDelta = IERC20(_storage.pool).balanceOf(address(this)) - balanceBefore;
		IERC20(_storage.pool).transfer(_storage.feeRecipient, balanceDelta);
	}

	/**
	 * @notice Updates the fee recipient address
	 * @param newAumFeeRecipient The address of the new fee recipient
	 */
	function updateFeeRecipient(address newAumFeeRecipient) external {
		if (newAumFeeRecipient == address(0)) revert MissingAumFeeRecipient();
		liquidityStorage().feeRecipient = newAumFeeRecipient;
	}

	/**
	 * @notice add liquidity using a single token
	 * @param tokenIn The address of the pool tokenIn
	 * @param amountInMax The max amount of tokenIn to spend
	 * @param minPoolAmountOut The minimum amount of bpt expected
	 */
	function joinWithSingleAsset(address tokenIn, uint256 amountInMax, uint256 minPoolAmountOut) external returns (uint256 sharesMinted) {
		LiquidityStorage storage _storage = liquidityStorage();
		(address[] memory tokensWithBpt, , ) = IBVault(_storage.vault).getPoolTokens(_storage.poolId);
		uint256 nrOfTokens = tokensWithBpt.length;
		uint256[] memory maxAmountsIn = new uint256[](nrOfTokens);
		uint256[] memory amountsIn = new uint256[](nrOfTokens - 1);
		for (uint256 i = 0; i < nrOfTokens; ++i) {
			if (tokensWithBpt[i] == tokenIn) {
				maxAmountsIn[i] = amountInMax;
				amountsIn[i - 1] = amountInMax;
				IERC20(tokenIn).transferFrom(msg.sender, address(this), amountInMax);
				IERC20(tokenIn).approve(_storage.vault, type(uint256).max);
				break;
			}
		}
		bytes memory userData = abi.encode(JoinKind.EXACT_TOKENS_IN_FOR_BPT_OUT, amountsIn, minPoolAmountOut);
		JoinPoolRequest memory request = JoinPoolRequest({
			assets: _asIAsset(tokensWithBpt),
			maxAmountsIn: maxAmountsIn,
			userData: userData,
			fromInternalBalance: false
		});
		uint256 balanceBefore = IERC20(_storage.pool).balanceOf(msg.sender);
		IBVault(_storage.vault).joinPool(_storage.poolId, address(this), msg.sender, request);
		uint256 balanceAfter = IERC20(_storage.pool).balanceOf(msg.sender);
		sharesMinted = balanceAfter - balanceBefore;
	}

	/**
	 * @notice remove liquidity into a single token
	 * @param tokenOut The address of the pool tokenOut to receive, must be a pool token
	 * @param poolAmountIn The amount of bpt
	 * @param minAmountOut The minimum tokenOut amount expected
	 */
	function exitWithSingleAsset(address tokenOut, uint256 poolAmountIn, uint256 minAmountOut) external {
		LiquidityStorage storage _storage = liquidityStorage();
		uint256 balance = IERC20(_storage.pool).balanceOf(msg.sender);
		console.log("exitWithSingleAsset : _storage.pool: %s", _storage.pool);
		console.log("exitWithSingleAsset : msg.sender: %s", msg.sender);
		console.log("exitWithSingleAsset : poolAmountIn > balance: %s", poolAmountIn > balance, poolAmountIn, balance);
		if (poolAmountIn > balance) revert UserLacksPoolTokens(poolAmountIn, balance);
		console.log("before transfer");
		IERC20(_storage.pool).transferFrom(msg.sender, address(this), poolAmountIn);
		console.log("after bpt transfer in");
		(address[] memory tokensWithBpt, , ) = IBVault(_storage.vault).getPoolTokens(_storage.poolId);
		uint256 numberOfTokens = tokensWithBpt.length;
		console.log("exitWithSingleAsset : numberOfTokens: %s", numberOfTokens);
		uint256[] memory limits = new uint256[](numberOfTokens);
		uint256 tokenOutIndex = type(uint256).max;
		console.log("exitWithSingleAsset : tokenOutIndex: %s", tokenOutIndex);
		// we dont use bpt at index 0
		for (uint256 i = 1; i < numberOfTokens; ++i) {
			if (tokensWithBpt[i] == tokenOut) {
				console.log("exitWithSingleAsset : tokensWithBpt[i] == tokenOut: %s", tokensWithBpt[i] == tokenOut);
				limits[i] = minAmountOut;
				tokenOutIndex = i - 1;
				break;
			}
		}
		console.log("exitWithSingleAsset : tokenOutIndex: %s", tokenOutIndex);
		if (tokenOutIndex == type(uint256).max) revert InvalidToken(tokenOut);
		bytes memory userData = abi.encode(ExitKind.EXACT_BPT_IN_FOR_ONE_TOKEN_OUT, poolAmountIn, tokenOutIndex);
		ExitPoolRequest memory request = ExitPoolRequest({assets: _asIAsset(tokensWithBpt), limits: limits, userData: userData, fromInternalBalance: false});
		IBVault(_storage.vault).exitPool(_storage.poolId, address(this), msg.sender, request);
	}

	/**
	 *@notice  manage allowed addresses list for liquidity providers
	 * @param enableWhitelistForLPsFlag Boolean flag
	 */
	function setEnableWhitelistForLPsFlag(bool enableWhitelistForLPsFlag) external {
		IManagedPool(liquidityStorage().pool).setMustAllowlistLPs(enableWhitelistForLPsFlag);
	}

	/**
	 *@notice Adds address to LP whitelist
	 * @param member The address to add
	 */
	function addToWhitelistForLPs(address member) public {
		IManagedPool(liquidityStorage().pool).addAllowedAddress(member);
	}

	/**
	 *@notice Removes address from LP whitelist
	 * @param member The address to remove
	 */
	function removeFromWhitelistForLPs(address member) external {
		IManagedPool(liquidityStorage().pool).removeAllowedAddress(member);
	}

	/**
	 * @notice get swap enabled state
	 */
	function getSwapEnabled() external view returns (bool) {
		return IManagedPool(liquidityStorage().pool).getSwapEnabled();
	}

	/**
	 * @notice set swap enabled state
	 */
	function setSwapEnabled(bool swapEnabled) external {
		IManagedPool(liquidityStorage().pool).setSwapEnabled(swapEnabled);
	}

	/**
	 * @notice helper functions for cheap type casting
	 * @param tokenArray Array addresses
	 * @return assets The array as assets
	 */
	function _asIAsset(address[] memory tokenArray) private pure returns (IAsset[] memory assets) {
		// solhint-disable-next-line no-inline-assembly
		assembly {
			assets := tokenArray
		}
	}

	/**
	 * @notice helper functions for cheap type casting
	 * @param assets The array as assets asr ERC20
	 * @return tokenArray Array addresses
	 */
	function _asIERC20(address[] memory assets) private pure returns (IERC20[] memory tokenArray) {
		// solhint-disable-next-line no-inline-assembly
		assembly {
			tokenArray := assets
		}
	}
}
