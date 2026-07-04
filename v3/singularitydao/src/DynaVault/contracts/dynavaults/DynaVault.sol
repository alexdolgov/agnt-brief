// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./interfaces/DynaVaultAPI.sol";
import "./interfaces/DynaRouterAPI.sol";
import "./interfaces/VaultSimulatorAPI.sol";
import "./VaultConfigLib.sol";
import "./DynaVaultLib.sol";
import "./VaultRouterLib.sol";
import "./DynaVaultErrors.sol";
import "./utils/ERC20.sol";
import "./utils/ReentrancyGuard.sol";
import "./utils/Clonable.sol";

/**
 * @dev "DynaVault" vault using Implementation of the ERC4626 "Tokenized Vault Standard" as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[EIP-4626].
 *
 * This extension allows the minting and burning of "shares" (represented using the ERC20 inheritance) in exchange for
 * underlying "assets" through standardized {deposit}, {mint}, {redeem} and {burn} workflows. This contract extends
 * the ERC20 standard. Any additional extensions included along it would affect the "shares" token represented by this
 * contract and not the "assets" token which is an independent contract.
 *
 * @notice We do not support fee-on-transfer tokens and they should not be used as deposit or reserve tokens!
 *
 * CAUTION: Deposits and withdrawals may incur unexpected slippage. Users should verify that the amount received of
 * shares or assets is as expected. For this reason we implement EIP-5143 to have check slippage.
 */
contract DynaVault is ERC20, DynaVaultAPI, Clonable, ReentrancyGuard {
	address public simulator;

	/**
	 * @notice initalizes the vault parameters
	 * @param nameOverride vault name
	 * @param symbolOverride vault symbol
	 * @param managerAddress address of the vault manager
	 * @param referenceAssetOracleAddress address of the reference asset oracle
	 * @param dynaRouterAddress address of the dyna router
	 * @param ownerAddress address of the owner
	 */
	function initialize(
		string memory nameOverride,
		string memory symbolOverride,
		address managerAddress,
		address referenceAssetOracleAddress,
		address dynaRouterAddress,
		address ownerAddress,
		address vaultSimulatorAddress
	) external {
		// grantRole is reverting when executed by user without admin role
		_grantRole(DEFAULT_ADMIN_ROLE, ownerAddress);
		initializeERC20(nameOverride, symbolOverride);
		VaultConfigLib.initialize(managerAddress, dynaRouterAddress, referenceAssetOracleAddress);
		DynaVaultLib.initialize();
		simulator = vaultSimulatorAddress;
		VaultSimulatorAPI(vaultSimulatorAddress).initialize(address(this), managerAddress, uint8(VaultConfigLib.depositDecimals()));
	}

	/**
	 * @notice takes a snapshot of the vault that can be used for simulating vault actions such as reporting.
	 * @return snapshot a snapshot that can be used for simulation
	 */
	function takeSnapshot() public view returns (VaultSimulatorAPI.VaultSnapshot memory) {
		return VaultSimulatorAPI(simulator).takeSnapshot();
	}

	/** @dev See {IERC4626-asset} */
	function asset() external view override returns (address) {
		return VaultConfigLib.asset();
	}

	/** @dev See {IERC4626-totalAssets} */
	function totalAssets() external view virtual override returns (uint256) {
		return DynaVaultLib.totalAssets();
	}

	/**
	 * @notice returns the value of one share in deposit token
	 * @return assetsPerShare value of one share in deposit token
	 */
	function assetsPerShare() external view virtual returns (uint256) {
		return VaultSimulatorAPI(simulator).assetsPerShare();
	}

	/** @dev See {IERC4626-convertToShares} */
	function convertToShares(uint256 assets) external view override returns (uint256 shares) {
		return VaultSimulatorAPI(simulator)._convertToShares(assets);
	}

	/** @dev See {IERC4626-convertToAssets} */
	function convertToAssets(uint256 shares) external view override returns (uint256 assets) {
		return VaultSimulatorAPI(simulator)._convertToAssets(shares);
	}

	/** @dev See {IERC4626-maxDeposit} */
	function maxDeposit(address) external view virtual override returns (uint256) {
		return DynaVaultLib.maxDepositLimit();
	}

	/** @dev See {IERC4626-maxMint} */
	function maxMint(address) external view virtual override returns (uint256) {
		return DynaVaultLib.maxMint();
	}

	/** @dev See {IERC4626-maxWithdraw} */
	function maxWithdraw(address owner) external view virtual override returns (uint256) {
		return VaultSimulatorAPI(simulator).simulatedMaxWithdraw(owner, takeSnapshot());
	}

	/**
	 * @notice simulates max withdraw
	 * @param owner address of owner
	 * @param snapshot used in simulation
	 * @return amount max amount of tokens that can be withdrawn
	 */
	function simulatedMaxWithdraw(address owner, VaultSimulatorAPI.VaultSnapshot memory snapshot) external view returns (uint256) {
		return VaultSimulatorAPI(simulator).simulatedMaxWithdraw(owner, snapshot);
	}

	/**
	 * @notice wraps balanceOf
	 * @param user address of user
	 * @return shares  amount of shares owned by user
	 */
	function sharesOf(address user) external view virtual returns (uint256) {
		return DynaVaultLib.sharesOf(user);
	}

	/** @dev See {IERC4626-maxRedeem} */
	function maxRedeem(address owner) external view virtual override returns (uint256) {
		return DynaVaultLib.maxRedeem(owner);
	}

	/** @dev See {IERC4626-previewDeposit} */
	function previewDeposit(uint256 assets) public view virtual override returns (uint256) {
		return DynaVaultLib.previewDeposit(assets);
	}

	/**
	 * @dev Simulates the calculation of how many shares should be minted for a deposit
	 * @param assets The amount of fees
	 * @param snapshot The current vault snapshot
	 * @return shares simulated amount of shares
	 */
	function simulatedDeposit(uint256 assets, VaultSimulatorAPI.VaultSnapshot memory snapshot) public view returns (uint256) {
		return VaultSimulatorAPI(simulator).simulatedDeposit(assets, snapshot);
	}

	/** @dev See {IERC4626-previewMint} */
	function previewMint(uint256 shares) public view virtual override returns (uint256) {
		return VaultSimulatorAPI(simulator).simulatedMint(shares, takeSnapshot());
	}

	/** @dev See {IERC4626-previewWithdraw} */
	function previewWithdraw(uint256 assets) public view virtual override returns (uint256) {
		return VaultSimulatorAPI(simulator).simulatedWithdraw(assets, takeSnapshot());
	}

	/** @dev See {IERC4626-previewRedeem} */
	function previewRedeem(uint256 shares) public view virtual override returns (uint256) {
		return VaultSimulatorAPI(simulator).simulatedRedeem(shares, takeSnapshot());
	}

	/** @dev See {IERC4626-deposit} */
	function deposit(uint256 assetsIncludingFees, address receiver) public virtual override returns (uint256 sharesNotIncludingFees) {
		before_nonReentrant();
		DynaVaultLib.reportAllReserves();
		DynaVaultLib.checkMaxDeposit(assetsIncludingFees);
		DynaVaultLib.checkMinDeposit(assetsIncludingFees);
		sharesNotIncludingFees = previewDeposit(assetsIncludingFees);
		_deposit(msg.sender, receiver, assetsIncludingFees, sharesNotIncludingFees);
		after_nonReentrant();
	}

	/** @dev See {IERC4626-mint} */
	function mint(uint256 sharesNotIncludingFees, address receiver) public virtual override returns (uint256 assetsIncludingFees) {
		before_nonReentrant();
		DynaVaultLib.reportAllReserves();
		DynaVaultLib.checkMaxMint(sharesNotIncludingFees);
		assetsIncludingFees = previewMint(sharesNotIncludingFees);
		DynaVaultLib.checkMinDeposit(assetsIncludingFees);
		_deposit(msg.sender, receiver, assetsIncludingFees, sharesNotIncludingFees);
		after_nonReentrant();
	}

	/** @dev See {IERC4626-withdraw} */
	function withdraw(uint256 assetsNotIncludingFees, address receiver, address owner) public virtual override returns (uint256 sharesIncludingFees) {
		before_nonReentrant();
		(sharesIncludingFees, assetsNotIncludingFees) = DynaVaultLib.reportAndCalculateWithdraw(assetsNotIncludingFees, owner);
		_withdraw(msg.sender, receiver, owner, assetsNotIncludingFees, sharesIncludingFees);
		after_nonReentrant();
	}

	/** @dev See {IERC4626-redeem} */
	function redeem(uint256 sharesIncludingFees, address receiver, address owner) public virtual override returns (uint256 assetsNotIncludingFees) {
		before_nonReentrant();
		DynaVaultLib.reportAllReserves();
		DynaVaultLib.checkRedeem(sharesIncludingFees, owner);
		assetsNotIncludingFees = previewRedeem(sharesIncludingFees);
		_withdraw(msg.sender, receiver, owner, assetsNotIncludingFees, sharesIncludingFees);
		after_nonReentrant();
	}

	/** @dev See {IERC5143-deposit} */
	function depositCheckSlippage(uint256 assets, address receiver, uint256 minShares) public virtual override returns (uint256) {
		uint256 shares = deposit(assets, receiver);
		DynaVaultErrors.checkSlippageAbove(shares, minShares);
		return shares;
	}

	/** @dev See {IERC5143-mint} */
	function mintCheckSlippage(uint256 shares, address receiver, uint256 maxAssets) public virtual override returns (uint256) {
		uint256 assets = mint(shares, receiver);
		DynaVaultErrors.checkSlippageBelow(assets, maxAssets);
		return assets;
	}

	/** @dev See {IERC5143-withdraw} */
	function withdrawCheckSlippage(uint256 assets, address receiver, address owner, uint256 maxShares) public virtual override returns (uint256) {
		uint256 shares = withdraw(assets, receiver, owner);
		DynaVaultErrors.checkSlippageBelow(shares, maxShares);
		return shares;
	}

	/** @dev See {IERC5143-redeem} */
	function redeemCheckSlippage(uint256 shares, address receiver, address owner, uint256 minAssets) public virtual override returns (uint256) {
		uint256 assets = redeem(shares, receiver, owner);
		DynaVaultErrors.checkSlippageAbove(assets, minAssets);
		return assets;
	}

	/**
	 * @notice redeems an amount of shares paid out in proportional amounts of reserve tokens
	 * @param shares amount of shares to redeem
	 * @param receiver address of the receiver
	 * @param owner address of the owner
	 * @return assets array with proportional amounts of reserve tokens to be paid out
	 */
	function redeemProportional(uint256 shares, address receiver, address owner) public virtual override returns (uint256[] memory) {
		before_nonReentrant();
		if (msg.sender != owner) {
			_spendAllowance(owner, msg.sender, shares);
		}
		DynaVaultLib.reportAllReserves();
		if (shares > DynaVaultLib.maxRedeem(owner)) {
			revert DynaVaultErrors.ERC4626_RedeemMoreThanMax();
		}
		uint256[] memory toRedeem = DynaVaultLib.calcRedeemProportional(shares);
		_burn(owner, shares);
		DynaVaultLib.transferProportional(receiver, toRedeem);
		after_nonReentrant();
		return toRedeem;
	}

	/**
	 * @notice preview of redeem proportional
	 * @param shares amount of shares to redeem
	 * @param _snapshot used in simulation
	 * @return assets array with proportional amounts of reserve tokens
	 */
	function previewRedeemProportional(
		uint256 shares,
		VaultSimulatorAPI.VaultSnapshot memory _snapshot
	) external view virtual override returns (uint256[] memory) {
		return VaultSimulatorAPI(simulator).simulateRedeemProportional(shares, _snapshot);
	}

	/**
	 * @notice redeems an amount of shares paid out in proportional amounts of reserve tokens with slippage checking
	 * @param shares amount of shares to redeem
	 * @param receiver address of the receiver
	 * @param owner address of the owner
	 * @param minAssets array with min amounts of assets
	 * @return assets array with proportional amounts of reserve tokens to be paid out
	 */
	function redeemProportionalCheckSlippage(
		uint256 shares,
		address receiver,
		address owner,
		uint256[] memory minAssets
	) public virtual override returns (uint256[] memory) {
		uint256[] memory assets = redeemProportional(shares, receiver, owner);
		DynaVaultErrors.checkSlippageAbove(assets, minAssets);
		return assets;
	}

	/* ==========  Vault functions   ========== */
	/**
	 * @notice returns the address of the vault manager
	 * @return manager address of the vault manager
	 */
	function manager() public view returns (address) {
		return VaultConfigLib.manager();
	}

	/**
	 * @notice returns the address of the dyna router
	 * @return dynaRouter address of the dyna router
	 */
	function dynaRouter() public view override returns (DynaRouterAPI) {
		return DynaRouterAPI(VaultConfigLib.dynaRouter());
	}

	/**
	 * @notice issues shares for fees
	 * @notice deltaTotalAssets is in reference asset, used when there is profit in strategies to compensate balances in calculations
	 * @param to address of fee receiver
	 * @param feeAmount amount of fee in feeToken
	 * @param feeToken address of fee token
	 * @param deltaTotalAssets delta of total assets
	 * @return shares amount of shares minted
	 */
	function issueSharesForFeeAmount(address to, uint256 feeAmount, address feeToken, uint256 deltaTotalAssets) external override returns (uint256) {
		if (address(msg.sender) != manager()) revert DynaVaultErrors.NotCalledByManager();
		uint256 shares = DynaVaultLib.calcSharesForFeeAmount(feeAmount, feeToken, deltaTotalAssets);
		_mint(to, shares);
		return shares;
	}

	/**
	 * @dev Deposit/mint common workflow.
	 * @notice private function called during deposit
	 * @param caller address of caller
	 * @param receiver address of receiver
	 * @param assetsIncludingFees assets that receiver will get
	 * @param _sharesWithoutFees shares that are burned
	 */
	function _deposit(address caller, address receiver, uint256 assetsIncludingFees, uint256 _sharesWithoutFees) private {
		uint256 fee = DynaVaultLib.beforeMint(caller, assetsIncludingFees);
		_mint(receiver, _sharesWithoutFees);
		DynaVaultLib.afterMint(caller, receiver, assetsIncludingFees, _sharesWithoutFees, fee);
	}

	/**
	 * @dev Withdraw/redeem common workflow.
	 * @notice private function called during withdraw
	 * @param caller address of caller
	 * @param receiver address of receiver
	 * @param owner address of owner
	 * @param assetsNotIncludingFees assets that receiver will get
	 * @param sharesIncludingFees amount of shares to burn
	 */
	function _withdraw(address caller, address receiver, address owner, uint256 assetsNotIncludingFees, uint256 sharesIncludingFees) private {
		if (caller != owner) {
			_spendAllowance(owner, caller, sharesIncludingFees);
		}
		uint256 assetsToWithdraw = DynaVaultLib.beforeBurn(assetsNotIncludingFees, sharesIncludingFees);
		_burn(owner, sharesIncludingFees);
		DynaVaultLib.afterBurn(caller, receiver, owner, assetsToWithdraw, sharesIncludingFees);
	}

	/**
	 * @notice returns the value of on eshare in deposit token
	 * @return pricePerShare value of one share in deposit token
	 */
	function pricePerShare() external view returns (uint256) {
		return VaultSimulatorAPI(simulator).assetsPerShare();
	}

	/**
	 * @notice returns the minimum amount of tokens that can be deposited
	 * @return minDepositLimit the minimum amount possible to deposit */
	function minDepositLimit() external view returns (uint256) {
		return DynaVaultLib.minDepositLimit();
	}

	/**
	 * @notice returns the max value of the tokens in the vault
	 * @return maxTotalAssets max amount of assets in vault
	 */
	function maxTotalAssets() external view returns (uint256) {
		return DynaVaultLib.maxTotalAssets();
	}

	/**
	 * @notice returns the max amount possible to deposit
	 * @return maxDepositLimit the max amount of tokens that can be deposited
	 */
	function maxDepositLimit() external view returns (uint256) {
		return DynaVaultLib.maxDepositLimit();
	}

	/**
	 * @notice set deposit limits
	 * @param newMinDepositAssets new minimum deposit amount limit
	 * @param newMaxTotalAssets new max total assets limit
	 */
	function setDepositLimits(uint256 newMinDepositAssets, uint256 newMaxTotalAssets) external {
		DynaVaultLib.setDepositLimits(newMinDepositAssets, newMaxTotalAssets);
	}

	/**
	 * @notice transfers fees to a receiver
	 * @param to address of the fee receiver
	 * @param amount amount of shares to send
	 */
	function feeTransfer(address to, uint256 amount) external override {
		VaultConfigLib.onlyManager();
		_transfer(address(this), to, amount);
	}

	/**
	 * @notice set the dynarouter address
	 * @param _dynaRouter address of the new dyna router
	 */
	function setRouter(DynaRouterAPI _dynaRouter) external {
		VaultConfigLib.setRouter(address(_dynaRouter));
	}

	/**
	 * @notice used to fetch swap data used when calling swap
	 * @param tokenIn the input token
	 * @param amountIn amount to swap
	 * @param tokenOut output token
	 * @return amountOut expected amountOut
	 * @return selectedRouter address of router to use
	 * @return swapData data used in swap
	 */
	function previewSwap(
		address tokenIn,
		uint256 amountIn,
		address tokenOut
	) external view returns (uint256 amountOut, address selectedRouter, bytes32[] memory swapData) {
		return VaultRouterLib.previewSwap(tokenIn, amountIn, tokenOut);
	}

	/**
	 * @notice this a swap function to be called by vault management to swap and change target weights
	 * @param tokenIn input token
	 * @param amountIn amount to swap
	 * @param tokenOut output token
	 * @param minAmountOut min expected amount from swap
	 * @param selectedRouter address of router to use
	 * @param swapData data used for the swap
	 */
	function swap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut, address selectedRouter, bytes32[] memory swapData) external {
		before_nonReentrant();
		VaultRouterLib.swap(tokenIn, amountIn, tokenOut, minAmountOut, selectedRouter, swapData);
		after_nonReentrant();
	}

	/**
	 * @notice swap with reporting of the tokens swapped
	 * @param tokenIn the input token
	 * @param amountIn of input token to swap
	 * @param tokenOut the output token
	 * @param minAmountOut of output from swap
	 * @param selectedRouter address of router to use
	 * @param swapData from previewSwap
	 */
	function swapAndReport(
		address tokenIn,
		uint256 amountIn,
		address tokenOut,
		uint256 minAmountOut,
		address selectedRouter,
		bytes32[] memory swapData
	) external {
		before_nonReentrant();
		VaultRouterLib.swapAndReport(tokenIn, amountIn, tokenOut, minAmountOut, selectedRouter, swapData);
		after_nonReentrant();
	}

	/**
	 * @notice sets the reference asset oracle address
	 * @param _referenceAssetOracle address of the new reference asset oracle
	 */
	function setReferenceAssetOracle(address _referenceAssetOracle) external {
		VaultConfigLib.setReferenceAssetOracle(_referenceAssetOracle);
	}

	/**
	 * @notice returns the address of the reference oracle
	 * @return referenceAssetOracle address of the reference oracle
	 */
	function referenceAssetOracle() external view returns (address) {
		return VaultConfigLib.referenceAssetOracle();
	}

	/**
	 * @notice returns the reference asset address
	 * @return referenceAsset address of the reference assets
	 */
	function referenceAsset() external view returns (address) {
		return VaultConfigLib.referenceAsset();
	}

	/**
	 * @notice returns the current max loss limit
	 * @return maxLoss the current max loss limit
	 */

	function maxLoss() external view returns (uint256) {
		return VaultConfigLib.maxLoss();
	}

	/**
	 * @notice set max loss
	 * @param _maxLoss the new max loss limit
	 */
	function setMaxLoss(uint256 _maxLoss) external {
		VaultConfigLib.setMaxLoss(_maxLoss);
	}

	/**
	 * @notice approve manager for swapping token
	 * @param tokenAddress address of the token to approve
	 */
	function approveAddedToken(address tokenAddress) external {
		VaultConfigLib.approveAddedToken(tokenAddress);
	}

	/**
	 * @notice this a swap function to be called by the vault manager contract to rebalance, which does not change target depositDebtRatio weights
	 * @param tokenIn token address of input token
	 * @param amountIn token in amount to swap
	 * @param tokenOut token address of output token
	 * @param minAmountOut token out min expected amount from swap
	 * @return amountOut the amount of tokenOut from swap
	 */
	function doSwap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut) external returns (uint256 amountOut) {
		return VaultRouterLib.doSwap(tokenIn, amountIn, tokenOut, minAmountOut);
	}

	/**
	 * @notice calculates shares for fees with given values for total supply and total assets
	 * @param feeAmount amount for fees
	 * @param feeToken address of fee token
	 * @param deltaTotalAssets updates total assets in fee shares calculation
	 * @param givenTotalSupply amount of total supply to use in calculation
	 * @param givenTotalAssets amount of total assets to use in calculation
	 * @return feeShares amount of shares to mint for fees
	 */
	function calcSharesForFeeAmountUsingGivenTotalSupplyAndTotalAssets(
		uint256 feeAmount,
		address feeToken,
		uint256 deltaTotalAssets,
		uint256 givenTotalSupply,
		uint256 givenTotalAssets
	) external view returns (uint256 feeShares) {
		return
			DynaVaultLib.calcSharesForFeeAmountUsingGivenTotalSupplyAndTotalAssets(feeAmount, feeToken, deltaTotalAssets, givenTotalSupply, givenTotalAssets);
	}

	/**
	 * @notice returns value of token in quote asset
	 * @param base address of base token
	 * @param amount amount of token
	 * @param quote address of quote token
	 * @return value value of amount in quote token
	 */
	function tokenValueInQuoteAsset(address base, uint256 amount, address quote) external view returns (uint256 value) {
		return DynaVaultLib.tokenValueInQuoteAsset(base, amount, quote);
	}

	/**
	 * @dev Simulates the calculation of how many shares should be minted for fees
	 * @param feeAmount The amount of fees
	 * @param feeToken The token used to calculate fees
	 * @param deltaTotalAssets The vault profit
	 * @param snapshot The current vault snapshot
	 * @return Updated snapshot with new total supply
	 */
	function simulatedIssueSharesForFeeAmount(
		uint256 feeAmount,
		address feeToken,
		uint256 deltaTotalAssets,
		VaultSimulatorAPI.VaultSnapshot memory snapshot
	) external view returns (VaultSimulatorAPI.VaultSnapshot memory) {
		return VaultSimulatorAPI(simulator).simulatedIssueSharesForFeeAmount(feeAmount, feeToken, deltaTotalAssets, snapshot);
	}

	/**
	 * @notice withdraw token debt from strategies
	 * @param tokenAddress address of token to withdraw
	 * @param valueToWithdraw amount of tokens to withdraw
	 */
	function withdrawTokenDebtFromStrategies(address tokenAddress, uint256 valueToWithdraw) external returns (uint256 totalLoss, uint256 totalWithdrawn) {
		return DynaVaultLib.withdrawTokenDebtFromStrategies(tokenAddress, valueToWithdraw);
	}
}
