// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import "./VaultGovernanceLib.sol";
import "./interfaces/IDynaVaultAPI.sol";
import "./interfaces/IReferenceAssetOracle.sol";
import "./utils/Checks.sol";
import "./utils/QueueLib.sol";

/**
 * @title VaultTokens/Lib is inherited by VaultStrategies and is part of the VaultManager module.
 * @notice VaultTokensLib is the core contract for the VaultTokens sub-module.
 * It serves as an extended registry contract which keeps track of all necessary configurations
 * and storage variables for all allowed tokens within the vault.
 * The vault contains one main deposit asset which is used for normal deposit and withdrawal interactions.
 * The management can add and remove reserve tokens as well as set an upper limit for the amount of reserve
 * tokens which can be added overall. These reserve tokens can be used for investment purposes in external
 * strategy contracts, similar to the deposit asset. Reserve assets are generally received through swaps done
 * by the management where a complex logic tracks the overall target portfolio allocation. If such a swap from
 * the deposit asset to a reserve asset is executed, depositDebtRatio is changed to reflect the proper
 * allocation.
 *
 * As an example, if initially the amount of deposit assets is 10 000 USDC and no reserve assets exist, the
 * depositDebtRatio for USDC will be 10 000. If a swap is now executed with 5 000 USDC to WBTC, the
 * depositDebtRatio for USDC and WBTC will both be 5 000, indicating that the current target allocation for
 * the vault is 50% USDC and 50% WBTC.
 *
 * It is important to realize that this target allocation will be different from the real allocation as soon
 * as new deposits come in and the real allocation ratio will then shift towards the deposit asset. However,
 * there is a rebalance function in the VaultManagerLib submodule to do swaps to rebalance excess deposits
 * without changing the desired target depositDebt ratio set by vault management.
 *
 * Also if withdrawals for the deposit token exceed what is idle in the vault, withdrawals need to respect
 * and maintain this target depositDebt ratio. This module handles the internal accounting of how much tokens
 * are idle and how many tokens are currently lent out to strategy contracts, recording total profit and loss.
 *
 * This module also introduces a watermark which is recorded every time balances and profits are reported and
 * watermark duration period is exceeded. Watermark duration is configurable per token and allows to configure
 * longer periods to avoid taking too much performance fees for volatile vault assets which are different from
 * the performance fee reference asset. Watermark duration period defaults to 0, giving a performance fee
 * calculation on the profits calculated in reference asset value versus the watermark or previous value when
 * higher.
 */
library VaultTokensLib {
	using Checks for address;
	using QueueLib for QueueLib.AddressQueue;

	/// @notice The storage slot follows EIP1967 to avoid storage collision
	bytes32 private constant TOKEN_STORAGE_POSITION = bytes32(uint256(keccak256("VaultTokens.TokenStorage")) - 1);
	uint8 private constant DEFAULT_MAX_TOKENS = 10;
	uint8 private constant MAXIMUM_MAX_TOKENS = 25;
	uint8 private constant MAXIMUM_STRATEGIES = 12;
	uint256 private constant PRECISION = 10 ** 18;
	uint256 internal constant MAX_BPS = 1e18;
	uint256 private constant MAX_WATERMARK_DURATION = 365 days;

	/** @notice Struct to store token-specific statistics and parameters
	 * @param tokenIdle Amount of tokens that are in the vault (reserves)
	 * @param tokenDebt Amount of tokens that all strategies have borrowed
	 * @param depositDebt Amount of deposit tokens used
	 * @param depositDebtRatio Target ratio of deposit tokens
	 * @param totalProfit Total profit for this token
	 * @param totalLoss Total loss for this token
	 * @param lastReport Timestamp of the last report
	 * @param lastReportedValue Last reported value expressed in reference asset used to compute vault performance
	 * @param watermark Watermark value expressed in reference asset used to compute vault performance
	 * @param watermarkDuration Period after which to update performance watermark
	 * @param lastWatermark Differs from lastReport because reports can happen often and prevent watermark from being updated
	 */
	struct TokenStats {
		uint256 tokenIdle;
		uint256 tokenDebt;
		uint256 depositDebt;
		uint256 depositDebtRatio;
		uint256 totalProfit;
		uint256 totalLoss;
		uint256 lastReport;
		uint256 lastReportedValue;
		uint256 watermark;
		uint256 watermarkDuration;
		uint256 lastWatermark;
	}

	/** @notice Struct to store token-related storage variables
	 * @param maxTokens Maximum number of tokens allowed in the vault
	 * @param tokens Array of token addresses
	 * @param tokenIndex Mapping of token address to its index in the tokens array
	 * @param tokenStats Mapping of token address to its TokenStats
	 * @param tokenStrategies Mapping of token address to its token strategies list
	 * @param reserveDebt Amount of tokens that reserve tokens have borrowed
	 * @param priceCache Price cache to avoid refetching prices during reportAllReservesFromVault
	 * @param priceCacheEnabled Flag to make sure price cache is only used during reportAllReservesFromVault
	 */
	struct TokenStorage {
		uint256 maxTokens;
		address[] tokens;
		mapping(address => uint256) tokenIndex;
		mapping(address => TokenStats) tokenStats;
		mapping(address => QueueLib.AddressQueue) tokenStrategies;
		uint256 reserveDebt;
		uint256[] priceCache;
		bool priceCacheEnabled;
	}

	event UpdatedMaxTokens(uint maxTokens);
	event UpdatedWatermarkDuration(address token, uint256 duration);
	event AddedReserveToken(address token);
	event RemovedReserveToken(address token);
	event ReportedProfitLossBalance(
		address tokenAddress,
		uint256 tokenBalance,
		uint256 profitInReferenceAsset,
		uint256 lossInReferenceAsset,
		uint256 lossInDepositToken
	);

	/** @notice Returns a struct storage pointer for accessing the state variables
	 * @return ts TokenStorage struct storage pointer
	 */
	function tokenStorage() private pure returns (TokenStorage storage ts) {
		bytes32 position = TOKEN_STORAGE_POSITION;
		assembly {
			ts.slot := position
		}
	}

	/** @notice Initializes the token storage with the first token
	 * @param depositToken Address of the deposit token
	 */
	function initializeTokens(address depositToken) external {
		depositToken.requireNonZeroAddress();
		TokenStorage storage _storage = tokenStorage();
		if (_storage.tokens.length != 0) revert Checks.AlreadyInitialized();
		_storage.tokens.push(depositToken);
		_storage.tokenIndex[depositToken] = 0;
		_storage.tokenStats[depositToken] = TokenStats({
			tokenIdle: 0,
			tokenDebt: 0,
			depositDebt: 0,
			depositDebtRatio: MAX_BPS,
			totalProfit: 0,
			totalLoss: 0,
			lastReport: block.timestamp,
			lastReportedValue: 0,
			watermark: 0,
			watermarkDuration: 0,
			lastWatermark: 0
		});
		_storage.maxTokens = DEFAULT_MAX_TOKENS;
		_storage.tokenStrategies[depositToken].initSize(MAXIMUM_STRATEGIES);
	}

	/** @notice Returns the index of a token in the tokens array
	 * @param tokenAddress Address of the token
	 * @return index Index of the token
	 */
	function tokenIndex(address tokenAddress) external view returns (uint256 index) {
		TokenStorage storage _storage = tokenStorage();
		index = _storage.tokenIndex[tokenAddress];
		if (index == 0 && tokenAddress != _storage.tokens[0]) revert DynaVaultErrors.InvalidToken();
	}

	/** @notice Returns the token address at a given index
	 * @param index Index of the token in the tokens array
	 * @return address Token address
	 */
	function tokens(uint256 index) external view returns (address) {
		return tokenStorage().tokens[index];
	}

	/** @notice Returns the address of the main deposit token
	 * @return address Address of the main deposit token
	 */
	function token() external view returns (address) {
		return tokenStorage().tokens[0];
	}

	/** @notice Returns the number of tokens in the vault
	 * @return uint256 Number of tokens
	 */
	function nrOfTokens() external view returns (uint256) {
		return tokenStorage().tokens.length;
	}

	/** @notice Returns an array of all token addresses in the vault
	 * @return address[] Array of token addresses
	 */
	function allTokens() external view returns (address[] memory) {
		return tokenStorage().tokens;
	}

	/** @notice Returns the TokenStats struct for a given token
	 * @param tokenAddress Address of the token
	 * @return TokenStats struct containing token statistics
	 */
	function stats(address tokenAddress) external view returns (TokenStats memory) {
		return tokenStorage().tokenStats[tokenAddress];
	}

	/** @notice Returns the idle and debt amounts for a given token
	 * @param tokenAddress Address of the token
	 * @return tokenIdleAmount Amount of idle tokens
	 * @return tokenDebtAmount Amount of debt tokens
	 */
	function tokenIdleDebt(address tokenAddress) external view returns (uint256 tokenIdleAmount, uint256 tokenDebtAmount) {
		return (tokenStorage().tokenStats[tokenAddress].tokenIdle, tokenStorage().tokenStats[tokenAddress].tokenDebt);
	}

	/** @notice Returns the deposit debt for a given token
	 * @param tokenAddress Address of the token
	 * @return uint256 Amount of deposit debt
	 */
	function depositDebt(address tokenAddress) external view returns (uint256) {
		return tokenStorage().tokenStats[tokenAddress].depositDebt;
	}

	/** @notice Returns the target deposit debt ratio for a given token
	 * @param tokenAddress Address of the token
	 * @return uint256 Target deposit debt ratio
	 */
	function targetDepositDebtRatio(address tokenAddress) external view returns (uint256) {
		return tokenStorage().tokenStats[tokenAddress].depositDebtRatio;
	}

	/** @notice Sets the watermark duration for a specific token.
	 * @notice This function can only be called by governance.
	 * @param tokenAddress The address of the token.
	 * @param watermarkDuration The duration in seconds: a watermarkDuration of 0 is equal to having no watermark!
	 */
	function setWatermarkDuration(address tokenAddress, uint256 watermarkDuration) external {
		VaultGovernanceLib.onlyGovernance();
		if (watermarkDuration > MAX_WATERMARK_DURATION) revert DynaVaultErrors.MaxWatermarkDuration();
		if (!tokenExists(tokenAddress)) revert DynaVaultErrors.InvalidToken();

		tokenStorage().tokenStats[tokenAddress].watermarkDuration = watermarkDuration;
		emit UpdatedWatermarkDuration(tokenAddress, watermarkDuration);
	}

	/** @notice Returns the amount of idle tokens for a given token
	 * @param tokenAddress Address of the token
	 * @return uint256 Amount of idle tokens
	 */
	function tokenIdle(address tokenAddress) external view returns (uint256) {
		return tokenStorage().tokenStats[tokenAddress].tokenIdle;
	}

	/** @notice Increases the amount of idle tokens for a given token
	 * @param tokenAddress Address of the token
	 * @param amount Amount to increase by
	 */
	function increaseTokenIdle(address tokenAddress, uint256 amount) external {
		tokenStorage().tokenStats[tokenAddress].tokenIdle += amount;
	}

	/** @notice Decreases the amount of idle tokens for a given token
	 * @param tokenAddress Address of the token
	 * @param amount Amount to decrease by
	 */
	function decreaseTokenIdle(address tokenAddress, uint256 amount) external {
		// cached storage
		TokenStorage storage _storage = tokenStorage();
		// cached tokenIdle
		uint256 tokenIdleAmount = _storage.tokenStats[tokenAddress].tokenIdle;
		// cached calculated new amount
		uint256 newAmount;
		if (tokenIdleAmount > amount) {
			newAmount = tokenIdleAmount - amount;
		} else {
			newAmount = 0;
			// also reset last reported value and watermark because we can't use it anymore for performance calculation without tokens
			_storage.tokenStats[tokenAddress].lastReportedValue = 0;
			_storage.tokenStats[tokenAddress].watermark = 0;
		}
		// assign tokenIdle value
		_storage.tokenStats[tokenAddress].tokenIdle = newAmount;
	}

	/** @notice Returns the amount of token debt for a given token
	 * @param tokenAddress Address of the token
	 * @return uint256 Amount of token debt
	 */
	function tokenDebt(address tokenAddress) external view returns (uint256) {
		return tokenStorage().tokenStats[tokenAddress].tokenDebt;
	}

	/** @notice Increases the amount of token debt for a given token
	 * @param tokenAddress Address of the token
	 * @param amount Amount to increase by
	 */
	function increaseTokenDebt(address tokenAddress, uint256 amount) external {
		tokenStorage().tokenStats[tokenAddress].tokenDebt += amount;
	}

	/** @notice Decreases the amount of token debt for a given token
	 * @param tokenAddress Address of the token
	 * @param amount Amount to decrease by
	 */
	function decreaseTokenDebt(address tokenAddress, uint256 amount) external {
		// cached storage
		TokenStorage storage _storage = tokenStorage();
		// cached tokenDebt
		uint256 tokenDebtAmount = _storage.tokenStats[tokenAddress].tokenDebt;
		// new token debt amount
		uint256 newTokenDebtAmount;
		if (tokenDebtAmount > amount) {
			// unchecked to save gas
			unchecked {
				newTokenDebtAmount = tokenDebtAmount - amount;
			}
		}
		// assign tokenDebt value
		_storage.tokenStats[tokenAddress].tokenDebt = newTokenDebtAmount;
	}

	/** @notice Reports profit, loss, and balance for a given token
	 * assuming profit and loss is always accounted in reference asset denomination,
	 * but loss is also passed in deposit token denomination for depositDebt delta calculation
	 * @param tokenAddress Address of the token
	 * @param tokenBalance Current token balance
	 * @param profitInReferenceAsset Profit amount in reference asset
	 * @param lossInReferenceAsset Loss amount in reference asset
	 * @param lossInDepositToken Loss amount in deposit token
	 */
	function reportProfitLossBalance(
		address tokenAddress,
		uint256 tokenBalance,
		uint256 profitInReferenceAsset,
		uint256 lossInReferenceAsset,
		uint256 lossInDepositToken
	) external {
		TokenStorage storage _storage = tokenStorage();
		TokenStats storage _stats = _storage.tokenStats[tokenAddress];
		_stats.totalProfit += profitInReferenceAsset;
		_stats.totalLoss += lossInReferenceAsset;
		_stats.tokenIdle = tokenBalance;
		if (lossInReferenceAsset != 0) {
			uint256 deltaDebt = (lossInDepositToken <= _stats.depositDebt) ? lossInDepositToken : _stats.depositDebt;
			_stats.depositDebt -= deltaDebt;
			if (tokenAddress != _storage.tokens[0]) {
				_storage.reserveDebt -= (deltaDebt <= _storage.reserveDebt) ? deltaDebt : _storage.reserveDebt;
			}
		}
		emit ReportedProfitLossBalance(tokenAddress, tokenBalance, profitInReferenceAsset, lossInReferenceAsset, lossInDepositToken);
	}

	/** @notice Calculates the value for a given token amount in reference asset denomination
	 * @param tokenAddress Address of the token
	 * @param assets Amount of assets
	 * @return referenceValue Calculated reference value
	 */
	function tokenReferenceValue(address tokenAddress, uint256 assets) public view returns (uint256 referenceValue) {
		(referenceValue, ) = IReferenceAssetOracle(IDynaVaultAPI(VaultGovernanceLib.vault()).referenceAssetOracle()).tokenReferenceValue(tokenAddress, assets);
	}

	/** @notice Returns the address of the reference asset
	 * @return address Address of the reference asset
	 */
	function referenceAsset() public view returns (address) {
		return IReferenceAssetOracle(IDynaVaultAPI(VaultGovernanceLib.vault()).referenceAssetOracle()).referenceAsset();
	}

	/** @notice Updates the last report timestamp and potentially updates the watermark for a given token
	 * @param tokenAddress Address of the token
	 * @param referenceValue Reference value for the token
	 */
	function updateLastReport(address tokenAddress, uint256 referenceValue) internal {
		TokenStats storage _stats = tokenStorage().tokenStats[tokenAddress];
		_stats.lastReportedValue = referenceValue;
		if (block.timestamp - _stats.lastWatermark >= _stats.watermarkDuration) {
			_stats.watermark = referenceValue;
			_stats.lastWatermark = block.timestamp;
		}
		_stats.lastReport = block.timestamp;
	}

	/** @notice Internal function to update the last report for a given token
	 * @param tokenAddress Address of the token
	 */
	function _updateLastReport(address tokenAddress) private {
		TokenStats storage _stats = tokenStorage().tokenStats[tokenAddress];
		uint256 tokenPrecision = 10 ** IERC20Metadata(tokenAddress).decimals();
		uint256 referenceValue = (_stats.tokenIdle != 0) ? tokenReferenceValue(tokenAddress, tokenPrecision) : 0;
		updateLastReport(tokenAddress, referenceValue);
	}

	/** @notice Returns an array of TokenStats for all tokens in the vault
	 * @return TokenStats[] Array of TokenStats structs
	 */
	function allTokenStats() external view returns (TokenStats[] memory) {
		TokenStorage storage _storage = tokenStorage();
		TokenStats[] memory all = new TokenStats[](_storage.tokens.length);
		uint256 _nrOfTokens = _storage.tokens.length;
		for (uint256 i = 0; i < _nrOfTokens; ++i) {
			all[i] = _storage.tokenStats[_storage.tokens[i]];
		}
		return all;
	}

	/** @notice Sets the total idle amount for a given token
	 * @param tokenAddress Address of the token
	 * @param assets Amount of assets to set as idle
	 */
	function setTotalIdle(address tokenAddress, uint256 assets) external {
		VaultGovernanceLib.onlyVault();
		tokenStorage().tokenStats[tokenAddress].tokenIdle = assets;
	}

	/** @notice Reports the idle amount for a given token
	 * @param tokenAddress Address of the token
	 * @param assets Amount of assets to report as idle
	 */
	function reportTokenIdle(address tokenAddress, uint256 assets) external {
		tokenStorage().tokenStats[tokenAddress].tokenIdle = assets;
	}

	/** @notice Deposits idle tokens for a given token
	 * @param tokenAddress Address of the token
	 * @param assets Amount of assets to deposit
	 */
	function depositIdle(address tokenAddress, uint256 assets) external {
		VaultGovernanceLib.onlyVaultOrManagement();
		tokenStorage().tokenStats[tokenAddress].tokenIdle += assets;
	}

	/** @notice Handles depositDebt accounting when idle tokens are withdrawn
	 * @param tokenAddress Address of the token
	 * @param assets Amount of assets to withdraw
	 */
	function withdrawIdle(address tokenAddress, uint256 assets) external {
		VaultGovernanceLib.onlyVault();
		TokenStorage storage _storage = tokenStorage();
		TokenStats storage _stats = _storage.tokenStats[tokenAddress];
		uint256 tokenIdleAndTokenDebt = _stats.tokenIdle + _stats.tokenDebt;
		uint256 deltaDebt = (tokenIdleAndTokenDebt > 0) ? FixedPointMathLib.fullMulDiv(assets, _stats.depositDebt, tokenIdleAndTokenDebt) : 0;
		_stats.tokenIdle -= assets;
		if (deltaDebt > _stats.depositDebt) deltaDebt = _stats.depositDebt;
		_stats.depositDebt -= deltaDebt;
		if (tokenAddress != _storage.tokens[0]) {
			_storage.reserveDebt -= (deltaDebt <= _storage.reserveDebt) ? deltaDebt : _storage.reserveDebt;
		}
	}

	/**
	 * @notice Checks if the given token is valid (either it's the deposit token or a registered reserve token)
	 * @param tokenAddress Address of the token to validate
	 * @notice This function reverts if the token is not valid
	 */
	function requireValidToken(address tokenAddress) private view {
		TokenStorage storage _storage = tokenStorage();
		if (!(_storage.tokenIndex[tokenAddress] != 0 || _storage.tokens[0] == tokenAddress)) {
			revert DynaVaultErrors.InvalidToken();
		}
	}

	/**
	 * @notice Governance can set the maxTokens parameter which determines how many tokens can be added as reserve assets.
	 * This maxTokens value is to avoid vault management being able to add too many tokens,
	 * causing withdrawals to revert due to an out-of-gas error while looping over all assets.
	 * This value is configurable because gas limits might differ per blockchain.
	 */
	function setMaxTokens(uint256 maxTokens) external {
		VaultGovernanceLib.onlyGovernance();
		TokenStorage storage _storage = tokenStorage();
		if (!(maxTokens <= MAXIMUM_MAX_TOKENS && maxTokens > _storage.tokens.length)) {
			revert DynaVaultErrors.MaxTokens();
		}
		_storage.maxTokens = maxTokens;
		emit UpdatedMaxTokens(maxTokens);
	}

	/**
	 * @notice Checks if a token exists in the vault's token list
	 * @param tokenAddress Address of the token to check
	 * @return bool True if the token exists, false otherwise
	 */
	function tokenExists(address tokenAddress) public view returns (bool) {
		TokenStorage storage _storage = tokenStorage();
		return _storage.tokenIndex[tokenAddress] != 0 || _storage.tokens[0] == tokenAddress;
	}

	/**
	 * @notice Adds a new reserve token to the vault
	 * @param tokenAddress Address of the token to add
	 * @notice Only callable by management
	 */
	function addReserveToken(address tokenAddress) external {
		VaultGovernanceLib.onlyManagementOrGovernance();
		tokenAddress.requireNonZeroAddress();
		TokenStorage storage _storage = tokenStorage();
		if (tokenExists(tokenAddress)) {
			revert DynaVaultErrors.AlreadyRegistered();
		}
		if (_storage.tokens.length >= _storage.maxTokens) {
			revert DynaVaultErrors.MaxTokens();
		}
		_storage.tokenIndex[tokenAddress] = _storage.tokens.length;
		_storage.tokens.push(tokenAddress);
		_storage.tokenStats[tokenAddress] = TokenStats({
			tokenIdle: 0,
			tokenDebt: 0,
			depositDebt: 0,
			depositDebtRatio: 0,
			totalProfit: 0,
			totalLoss: 0,
			lastReport: block.timestamp,
			lastReportedValue: 0,
			watermark: 0,
			watermarkDuration: 0,
			lastWatermark: 0
		});
		_storage.tokenStrategies[tokenAddress].initSize(MAXIMUM_STRATEGIES);
		IDynaVaultAPI(VaultGovernanceLib.vault()).approveAddedToken(tokenAddress);
		emit AddedReserveToken(tokenAddress);
	}

	/**
	 * @notice Removes a reserve token from the vault
	 * @param tokenAddress Address of the token to remove
	 * @notice Only callable by management
	 */
	function removeReserveToken(address tokenAddress) external {
		VaultGovernanceLib.onlyManagementOrGovernance();
		TokenStorage storage _storage = tokenStorage();
		TokenStats storage _stats = _storage.tokenStats[tokenAddress];
		if (_storage.tokenIndex[tokenAddress] == 0) {
			revert DynaVaultErrors.InvalidToken();
		}
		if (_stats.tokenIdle != 0) {
			revert DynaVaultErrors.TokenIdle();
		}
		if (_stats.tokenDebt != 0) {
			revert DynaVaultErrors.TokenDebt();
		}
		uint256 index = _storage.tokenIndex[tokenAddress];
		uint256 last = _storage.tokens.length - 1;
		address lastToken = _storage.tokens[last];
		_storage.tokenIndex[lastToken] = index;
		_storage.tokens[index] = lastToken;
		_storage.tokens.pop();
		_storage.tokenStats[tokenAddress] = TokenStats({
			tokenIdle: 0,
			tokenDebt: 0,
			depositDebt: 0,
			depositDebtRatio: 0,
			totalProfit: 0,
			totalLoss: 0,
			lastReport: 0,
			lastReportedValue: 0,
			watermark: 0,
			watermarkDuration: 0,
			lastWatermark: 0
		});
		_storage.tokenIndex[tokenAddress] = 0;
		_storage.tokenStrategies[tokenAddress].initSize(0); // clear token strategies
		IDynaVaultAPI(VaultGovernanceLib.vault()).resetRemovedTokenAllowance(tokenAddress); // reset allowance
		emit RemovedReserveToken(tokenAddress);
	}

	/**
	 * @notice Returns the total assets for a given token
	 * @param tokenAddress Address of the token
	 * @return uint256 Total assets (idle + debt)
	 */
	function totalTokenAssets(address tokenAddress) external view returns (uint256) {
		TokenStats storage _stats = tokenStorage().tokenStats[tokenAddress];
		return _stats.tokenIdle + _stats.tokenDebt;
	}

	/**
	 * @notice Increases the deposit debt for the deposit token
	 * @param depositAmount Amount of deposit
	 * @param feeAmount Amount of fee
	 * @notice Deposit token does not increase reserveDebt
	 */
	function increaseDepositDebt(uint256 depositAmount, uint256 feeAmount) external {
		TokenStats storage depositToken_stats = tokenStorage().tokenStats[tokenStorage().tokens[0]];
		depositToken_stats.tokenIdle -= feeAmount;
		depositToken_stats.depositDebt += depositAmount - feeAmount;
	}

	/**
	 * @notice Decreases the deposit debt for the deposit token
	 * @param amount Amount to decrease
	 * @notice Deposit token does not decrease reserveDebt
	 */
	function decreaseDepositDebt(uint256 amount) external {
		TokenStats storage depositToken_stats = tokenStorage().tokenStats[tokenStorage().tokens[0]];
		depositToken_stats.depositDebt = (depositToken_stats.depositDebt > amount) ? depositToken_stats.depositDebt - amount : 0;
	}

	/**
	 * @notice Updates debt after a token swap
	 * @notice Only callable by the vault
	 * @param tokenIn The address of the input token
	 * @param amountIn The amount of input token
	 * @param tokenOut The address of the output token
	 * @param amountOut The amount of output token
	 * @param updateRatio Whether to update the deposit debt ratio
	 */
	function updateDebtAfterSwap(address tokenIn, uint256 amountIn, address tokenOut, uint256 amountOut, bool updateRatio) external {
		VaultGovernanceLib.onlyVault();
		requireValidToken(tokenIn);
		requireValidToken(tokenOut);
		TokenStorage storage _storage = tokenStorage();
		// cached depositToken
		address depositToken = _storage.tokens[0];
		TokenStats storage statsTokenIn = _storage.tokenStats[tokenIn];
		if (amountIn > statsTokenIn.tokenIdle) revert DynaVaultErrors.AmountInMoreThanTokenIdle(amountIn, tokenIn, statsTokenIn.tokenIdle);
		TokenStats storage statsTokenOut = _storage.tokenStats[tokenOut];
		if (tokenIn == depositToken) {
			// swap deposit token into reserve asset
			uint256 invested = amountIn;
			uint256 allAssets = statsTokenIn.tokenIdle + statsTokenIn.tokenDebt + _storage.reserveDebt;
			uint256 deltaDebtRatio = Math.min(FixedPointMathLib.fullMulDiv(invested, MAX_BPS, allAssets), statsTokenIn.depositDebtRatio);
			_storage.reserveDebt += invested;
			statsTokenIn.depositDebt -= Math.min(invested, statsTokenIn.depositDebt);
			statsTokenOut.depositDebt += invested;
			if (updateRatio) {
				statsTokenOut.depositDebtRatio += deltaDebtRatio;
				statsTokenIn.depositDebtRatio -= deltaDebtRatio;
			}
		} else if (tokenOut == depositToken) {
			// swap reserve asset into deposit token
			uint256 deltaDebt;
			uint256 deltaDebtRatio;
			{
				// avoid stack too deep
				uint256 sold = amountIn;
				uint256 curDepositDebt = statsTokenIn.depositDebt;
				uint256 tokenAssets = statsTokenIn.tokenIdle + statsTokenIn.tokenDebt;
				uint256 soldRatio = (tokenAssets != 0) ? FixedPointMathLib.fullMulDiv(sold, MAX_BPS, tokenAssets) : MAX_BPS;
				deltaDebt = FixedPointMathLib.fullMulDiv(curDepositDebt, soldRatio, MAX_BPS);
				uint256 allAssets = statsTokenOut.tokenIdle + statsTokenOut.tokenDebt + _storage.reserveDebt;
				deltaDebtRatio = Math.min(FixedPointMathLib.fullMulDiv(deltaDebt, MAX_BPS, allAssets), statsTokenIn.depositDebtRatio);
			}

			uint256 paidBack = amountOut;
			if (paidBack < deltaDebt) {
				uint256 loss = deltaDebt - paidBack;
				_storage.tokenStats[tokenIn].totalLoss += loss;
			}

			_storage.reserveDebt -= (deltaDebt <= _storage.reserveDebt) ? deltaDebt : _storage.reserveDebt;
			statsTokenIn.depositDebt -= deltaDebt;
			// if we have a loss, do not increase tokenOut depositDebt for tokens which have not been paid back
			statsTokenOut.depositDebt += deltaDebt > paidBack ? paidBack : deltaDebt;
			if (updateRatio) {
				statsTokenIn.depositDebtRatio -= deltaDebtRatio;
				statsTokenOut.depositDebtRatio += deltaDebtRatio;
			}
		} else {
			// swap reserve asset into another reserve asset
			uint256 sold = amountIn;
			uint256 curDepositDebt = statsTokenIn.depositDebt;
			uint256 tokenAssets = statsTokenIn.tokenIdle + statsTokenIn.tokenDebt;
			uint256 deltaDebt = (tokenAssets != 0) ? Math.min(FixedPointMathLib.fullMulDiv(curDepositDebt, sold, tokenAssets), statsTokenIn.depositDebt) : 0;
			uint256 deltaDebtRatio = (curDepositDebt != 0)
				? Math.min(FixedPointMathLib.fullMulDiv(statsTokenIn.depositDebtRatio, deltaDebt, curDepositDebt), statsTokenIn.depositDebtRatio)
				: 0;
			statsTokenIn.depositDebt -= deltaDebt;
			statsTokenOut.depositDebt += deltaDebt;
			if (updateRatio) {
				statsTokenIn.depositDebtRatio -= deltaDebtRatio;
				statsTokenOut.depositDebtRatio += deltaDebtRatio;
			}
		}

		// update available tokens in vault
		statsTokenIn.tokenIdle -= amountIn;
		statsTokenOut.tokenIdle += amountOut;
		_updateLastReport(tokenIn);
		_updateLastReport(tokenOut);
	}

	/**
	 * @notice Returns the token strategies list for a given token
	 * @param tokenAddress The address of the token
	 * @return queue Array of strategy addresses in the token strategies list
	 */
	function getTokenStrategies(address tokenAddress) public view returns (address[] memory queue) {
		return tokenStorage().tokenStrategies[tokenAddress].queue;
	}

	/**
	 * @notice Adds a strategy to the token strategies list for a given token
	 * @param tokenAddress The address of the token
	 * @param strategy The address of the strategy to add
	 */
	function addToTokenStrategies(address tokenAddress, address strategy) external {
		tokenStorage().tokenStrategies[tokenAddress].add(strategy);
	}

	/**
	 * @notice Replaces a strategy in the token strategies list for a given token
	 * @param tokenAddress The address of the token
	 * @param oldStrategy The address of the strategy to replace
	 * @param newStrategy The address of the new strategy
	 */
	function replaceInTokenStrategies(address tokenAddress, address oldStrategy, address newStrategy) external {
		tokenStorage().tokenStrategies[tokenAddress].replace(oldStrategy, newStrategy);
	}

	/**
	 * @notice Removes a strategy from the token strategies list for a given token
	 * @param tokenAddress The address of the token
	 * @param strategy The address of the strategy to remove
	 */
	function removeFromTokenStrategies(address tokenAddress, address strategy) external {
		tokenStorage().tokenStrategies[tokenAddress].remove(strategy);
	}

	/**
	 * @notice Returns the total deposit debt
	 * @return uint256 The total deposit debt (depositToken.depositDebt + reserve debt)
	 */
	function totalDepositDebt() external view returns (uint256) {
		TokenStorage storage _storage = tokenStorage();
		if (_storage.tokens.length == 0) return 0;
		address depositToken = _storage.tokens[0];
		return _storage.tokenStats[depositToken].depositDebt + _storage.reserveDebt;
	}

	/**
         * @notice Calculates totalAssets for vault without cache
         * @return total The total assets denominated in deposit tokens
         */
	function totalAssets() external view returns (uint256 total) {
	        address referenceAssetOracle = IDynaVaultAPI(VaultGovernanceLib.vault()).referenceAssetOracle();
		TokenStorage storage _storage = tokenStorage();
	        address depositToken = _storage.tokens[0];
		uint256 _nrOfTokens = _storage.tokens.length;
		for (uint256 i = 0; i < _nrOfTokens; ++i) {
			address tokenAddress = _storage.tokens[i];
			uint256 tokenAmount = _storage.tokenStats[tokenAddress].tokenIdle + _storage.tokenStats[tokenAddress].tokenDebt;
			if (i == 0) {
				total += tokenAmount;
			} else if (tokenAmount != 0) {
				(uint256 price, ) = IReferenceAssetOracle(referenceAssetOracle).getPrice(tokenAddress, depositToken);
		                total += FixedPointMathLib.fullMulDiv(price, tokenAmount, (10 ** IERC20Metadata(tokenAddress).decimals()));
			}
		}
	}
	
	/**
         * @notice Calculates totalAssets for vault using a local price cache to be used by reportAllReservesFromVault
         * @return total The total assets denominated in deposit tokens
         */
	function totalAssetsCached() external returns (uint256 total) {
	        address referenceAssetOracle = IDynaVaultAPI(VaultGovernanceLib.vault()).referenceAssetOracle();
		TokenStorage storage _storage = tokenStorage();
	        address depositToken = _storage.tokens[0];
		uint256 _nrOfTokens = _storage.tokens.length;
		for (uint256 i = 0; i < _nrOfTokens; ++i) {
			address tokenAddress = _storage.tokens[i];
			uint256 tokenAmount = _storage.tokenStats[tokenAddress].tokenIdle + _storage.tokenStats[tokenAddress].tokenDebt;
			if (i == 0) {
				total += tokenAmount;
			} else if (tokenAmount != 0) {
				uint256 price;
				if (_storage.priceCacheEnabled) price = _storage.priceCache[i];
				if (price == 0) {
				   (price, ) = IReferenceAssetOracle(referenceAssetOracle).getPrice(tokenAddress, depositToken);
				   if (_storage.priceCacheEnabled) _storage.priceCache[i] = price;
				}
		                total += FixedPointMathLib.fullMulDiv(price, tokenAmount, (10 ** IERC20Metadata(tokenAddress).decimals()));
			}
		}
	}

        /**
         * @notice enables price cache to avoid refetching prices during reporting of reserves when no actions are happening affecting price
         */
        function enablePriceCache() external {
		TokenStorage storage _storage = tokenStorage();
	        _storage.priceCache = new uint256[](_storage.tokens.length);
	        _storage.priceCacheEnabled = true;
        }
        
        /**
         * @notice disables price cache to avoid stale prices when actions which affect price might take place after this
         */
        function disablePriceCache() external {
	        tokenStorage().priceCacheEnabled = false;
        }

}
