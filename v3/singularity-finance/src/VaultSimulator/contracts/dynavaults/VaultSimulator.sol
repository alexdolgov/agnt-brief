// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import "./VaultTokensLib.sol";
import "./interfaces/IDynaVaultAPI.sol";
import "./interfaces/IVaultManagerAPI.sol";
import "./interfaces/IVaultSimulatorAPI.sol";
import "./utils/Clonable.sol";
import "./utils/Checks.sol";

/**
 * @title Vault Simulator
 * @notice Used to simulate withdraw and reporting for giving a realistic preview to users without needing to report first.
 */
contract VaultSimulator is IVaultSimulatorAPI, Clonable {
	using Checks for address;
	using FixedPointMathLib for uint256;

	uint256 private constant MAX_BPS = 100e2; // 100.00% (fees)
	uint256 private constant PRECISION = 10 ** 18;

	address vault;
	address manager;
	uint256 depositTokenPrecision;

	/**
	 * @notice Set vault and manager addresses internally
	 * @param vaultAddress The address of the vault
	 * @param managerAddress The address of the manager
	 * @param depositTokenDecimals The amount of decimals in the deposit token
	 */
	function initialize(address vaultAddress, address managerAddress, uint8 depositTokenDecimals) external override {
		vault.isNotAlreadyInitialized();
		vaultAddress.requireNonZeroAddress();
		managerAddress.requireNonZeroAddress();
		vault = vaultAddress;
		manager = managerAddress;
		depositTokenPrecision = 10 ** depositTokenDecimals;
	}

	/**
	 * @notice Takes a snapshot of the vault's current state
	 * @return snapshot A VaultSnapshot struct with vault information for simulating reporting and withdraws
	 */
	function takeSnapshot() public view override returns (IVaultSimulatorAPI.VaultSnapshot memory snapshot) {
		IDynaVaultAPI vaultAPI = IDynaVaultAPI(vault);
		snapshot.timestamp = block.timestamp;
		snapshot.vault = vault;
		snapshot.manager = manager;
		snapshot.totalAssets = vaultAPI.totalAssets();
		snapshot.totalSupply = vaultAPI.totalSupply();
		IVaultManagerAPI vaultManagerAPI = IVaultManagerAPI(snapshot.manager);
		snapshot.lockedProfit = vaultManagerAPI.lockedProfit();
		snapshot.lastLockedProfitRatio = vaultManagerAPI.lastLockedProfitRatio();
		snapshot.lastLockedProfitDegradation = vaultManagerAPI.lastLockedProfitDegradation();
		(snapshot.lockedProfitDegradationRate, snapshot.extraLockedProfitDegradationRate) = vaultManagerAPI.lockedProfitDegradationRates();
		uint256 nrOfTokens = vaultManagerAPI.nrOfTokens();
		IVaultSimulatorAPI.VaultTokenSnapshot[] memory tokens = new IVaultSimulatorAPI.VaultTokenSnapshot[](nrOfTokens);
		for (uint256 i = 0; i < nrOfTokens; ++i) {
			address tokenAddress = vaultManagerAPI.tokens(i);
			tokens[i].tokenAddress = tokenAddress;
			tokens[i].balance = IERC20(tokenAddress).balanceOf(snapshot.vault);
			TokenStats memory stats = vaultManagerAPI.tokenStats(tokenAddress);
			tokens[i].tokenIdle = stats.tokenIdle;
			tokens[i].tokenDebt = stats.tokenDebt;
			tokens[i].depositDebt = stats.depositDebt;
			tokens[i].depositDebtRatio = stats.depositDebtRatio;
			tokens[i].lastReportedValue = stats.lastReportedValue;
			tokens[i].watermark = stats.watermark;
			tokens[i].lastReport = stats.lastReport;
			tokens[i].strategies = vaultManagerAPI.takeStrategiesSnapshot(tokenAddress);
			if (i != 0) snapshot.reserveDebt += stats.depositDebt;
		}
		snapshot.tokens = tokens;
		snapshot.totalDepositDebt = snapshot.tokens[0].depositDebt + snapshot.reserveDebt;
	}

	/**
	 * @notice Calculates the value of a single vault share in assets
	 * @return assetsPerShare The value of a single vault share in assets
	 */
	function assetsPerShare() external view override returns (uint256) {
		return _convertToAssets(PRECISION);
	}

	/**
	 * @notice Simulates a deposit with fees
	 * @param assets Amount of assets to deposit with fees
	 * @param snapshot Snapshot used for calculations
	 * @return shares Simulated amount of shares to be received
	 */
	function simulatedDeposit(uint256 assets, IVaultSimulatorAPI.VaultSnapshot memory snapshot) external view override returns (uint256 shares) {
		IVaultManagerAPI managerAddress = IVaultManagerAPI(snapshot.manager);
		snapshot = managerAddress.simulatedReportAllReserves(snapshot);
		uint256 depositFee = managerAddress.getFees().depositFee;
		uint256 fee = _simulatedFeeOnTotal(assets, depositFee);
		uint256 freeFunds = managerAddress.simulatedFreeFunds(snapshot);
		shares = _convertToSharesWithGivenFreeFundsAndTotalSupply(assets - fee, freeFunds, snapshot.totalSupply, Math.Rounding.Down);
	}

	/**
	 * @notice Simulates minting shares
	 * @param sharesNotIncludingFees Amount of shares to wanted
	 * @return assetsIncludingFees Simulated amount of assets to pay for the shares
	 */
	function simulatedMint(
		uint256 sharesNotIncludingFees,
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) external view override returns (uint256 assetsIncludingFees) {
		IVaultManagerAPI vaultManager = IVaultManagerAPI(snapshot.manager);
		snapshot = vaultManager.simulatedReportAllReserves(snapshot);
		uint256 depositFee = vaultManager.getFees().depositFee;
		uint256 freeFunds = vaultManager.simulatedFreeFunds(snapshot);
		uint256 assets = _convertToAssetsWithGivenFreeFundsAndTotalSupply(sharesNotIncludingFees, freeFunds, snapshot.totalSupply, Math.Rounding.Up);
		uint256 fee = _simulatedFeeOnRaw(assets, depositFee);
		assetsIncludingFees = assets + fee;
	}

	/**
	 * @notice Simulates a withdrawal with fees
	 * @param assets Amount of assets to withdraw with fees
	 * @return shares Simulated amount of shares to be received
	 */
	function simulatedWithdraw(uint256 assets, IVaultSimulatorAPI.VaultSnapshot memory snapshot) external view override returns (uint256 shares) {
		IVaultManagerAPI managerAddress = IVaultManagerAPI(snapshot.manager);
		snapshot = managerAddress.simulatedReportAllReserves(snapshot);
		uint256 redemptionFee = managerAddress.getFees().redemptionFee;
		uint256 fee = _simulatedFeeOnRaw(assets, redemptionFee);
		uint256 freeFunds = managerAddress.simulatedFreeFunds(snapshot);
		shares = _convertToSharesWithGivenFreeFundsAndTotalSupply(assets + fee, freeFunds, snapshot.totalSupply, Math.Rounding.Up);
	}

	/**
	 * @notice Simulates the maximum amount of assets that can be withdrawn by an owner
	 * @param owner Address of the owner
	 * @return maxAssetsNotIncludingFees Simulated max amount of assets without fees that can be withdrawn by owner
	 */
	function simulatedMaxWithdraw(
		address owner,
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) external view override returns (uint256 maxAssetsNotIncludingFees) {
		IVaultManagerAPI managerAddress = IVaultManagerAPI(snapshot.manager);
		snapshot = managerAddress.simulatedReportAllReserves(snapshot);
		uint256 shares = IERC20Metadata(snapshot.vault).balanceOf(owner);
		uint256 freeFunds = managerAddress.simulatedFreeFunds(snapshot);
		maxAssetsNotIncludingFees = _convertToAssetsWithGivenFreeFundsAndTotalSupply(shares, freeFunds, snapshot.totalSupply, Math.Rounding.Down);
	}

	/**
	 * @notice Simulates a redemption of shares
	 * @param sharesIncludingFees Amount of shares to redeem
	 * @return assetsNotIncludingFees Simulated amount of assets that is received from redeem
	 */
	function simulatedRedeem(
		uint256 sharesIncludingFees,
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) public view override returns (uint256 assetsNotIncludingFees) {
		IVaultManagerAPI managerAPI = IVaultManagerAPI(snapshot.manager);
		snapshot = managerAPI.simulatedReportAllReserves(snapshot);
		uint256 redemptionFee = managerAPI.getFees().redemptionFee;
		uint256 freeFunds = managerAPI.simulatedFreeFunds(snapshot);
		uint256 assets = _convertToAssetsWithGivenFreeFundsAndTotalSupply(sharesIncludingFees, freeFunds, snapshot.totalSupply, Math.Rounding.Down);
		uint256 fee = _simulatedFeeOnTotal(assets, redemptionFee);
		assetsNotIncludingFees = assets - fee;
	}

	/**
	 * @notice Simulates the conversion of shares to a ratio
	 * @param shares Amount of shares
	 * @param unlockedFundsRatio Ratio of unlocked funds
	 * @param snapshot Vault snapshot
	 * @return ratio The resulting ratio in PRECISION decimals
	 */
	function simulateConvertToRatio(
		uint256 shares,
		uint256 unlockedFundsRatio,
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) private pure returns (uint256 ratio) {
		ratio = FixedPointMathLib.fullMulDiv(shares, unlockedFundsRatio, snapshot.totalSupply);
	}

	/**
	 * @notice Calculates amount of tokens to redeem for simulated proportional redemption
	 * @param sharesIncludingFees Amount of shares to redeem, including fees
	 * @param snapshot Vault snapshot
	 * @return toRedeem An array of amounts to redeem for each token
	 */
	function simulatedCalcRedeemProportional(
		uint256 sharesIncludingFees,
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) private view returns (uint256[] memory) {
		IVaultManagerAPI managerAddress = IVaultManagerAPI(snapshot.manager);
		uint256 redemptionFee = managerAddress.getFees().redemptionFee;
		uint256 unlockedFundsRatio = managerAddress.simulateUnlockedFundsRatio(snapshot);
		uint256 ratio = simulateConvertToRatio(sharesIncludingFees, unlockedFundsRatio, snapshot);
		uint256 nrOfTokens = managerAddress.nrOfTokens();
		uint256[] memory toRedeem = new uint256[](nrOfTokens);
		for (uint256 i = 0; i < nrOfTokens; ++i) {
			// address tokenAddress = managerAddress.tokens(i);
			IVaultSimulatorAPI.VaultTokenSnapshot memory stats = snapshot.tokens[i];
			uint256 tokenTotal = stats.tokenIdle + stats.tokenDebt;
			toRedeem[i] = FixedPointMathLib.fullMulDiv(tokenTotal, ratio, PRECISION);
			if (toRedeem[i] != 0 && redemptionFee != 0) {
				// TODO simulated fetch from strategies
				toRedeem[i] = toRedeem[i] - _simulatedFeeOnTotal(toRedeem[i], redemptionFee);
			}
		}
		return toRedeem;
	}

	/**
	 * @notice Simulates a proportional redemption
	 * @param sharesIncludingFees Amount of shares to redeem, including fees
	 * @param snapshot Vault snapshot
	 * @return toRedeem An array of amounts to redeem for each token
	 */
	function simulatedRedeemProportional(
		uint256 sharesIncludingFees,
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) external view override returns (uint256[] memory toRedeem) {
		IVaultManagerAPI managerAddress = IVaultManagerAPI(manager);
		snapshot = managerAddress.simulatedReportAllReserves(snapshot);
		toRedeem = simulatedCalcRedeemProportional(sharesIncludingFees, snapshot);
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
		IVaultSimulatorAPI.VaultSnapshot memory snapshot
	) external view override returns (IVaultSimulatorAPI.VaultSnapshot memory) {
		uint256 assets = IVaultManagerAPI(snapshot.manager).simulatedFreeFunds(snapshot);
		uint256 feeSharesToMint = IDynaVaultAPI(snapshot.vault).calcSharesForFeeAmountUsingGivenTotalSupplyAndTotalAssets(
			feeAmount,
			feeToken,
			deltaTotalAssets,
			snapshot.totalSupply,
			assets
		);
		snapshot.totalSupply += feeSharesToMint;
		snapshot.totalFeeShares += feeSharesToMint;
		return snapshot;
	}

	/**
	 * @notice Converts shares to assets
	 * @param shares Amount of shares to convert
	 * @param givenFreeFunds Amount of free funds
	 * @param givenTotalSupply Total supply of shares
	 * @return assets Amount of assets from shares
	 */
	function _convertToAssetsWithGivenFreeFundsAndTotalSupply(
		uint256 shares,
		uint256 givenFreeFunds,
		uint256 givenTotalSupply,
		Math.Rounding rounding
	) private view returns (uint256 assets) {
		if (shares == 0) return 0;
		if (givenTotalSupply == 0) return _fullMulDiv(shares, depositTokenPrecision, PRECISION, rounding);
		else return _fullMulDiv(shares, givenFreeFunds, givenTotalSupply, rounding);
	}

	/**
	 * @dev Do high precision multiplication and division with a specified rounding direction
	 * @notice always round down towards the user and up towards the protocol to avoid exploitation
	 */
	function _fullMulDiv(uint256 x, uint256 y, uint256 z, Math.Rounding rounding) private pure returns (uint256) {
		if (rounding == Math.Rounding.Up) {
			return x.fullMulDivUp(y, z);
		} else {
			return x.fullMulDiv(y, z);
		}
	}

	/**
	 * @notice Converts assets to shares
	 * @param assets Amount of assets to convert
	 * @param givenFreeFunds Amount of free funds
	 * @param givenTotalSupply Total supply of shares
	 * @return shares Amount of shares from assets
	 */
	function _convertToSharesWithGivenFreeFundsAndTotalSupply(
		uint256 assets,
		uint256 givenFreeFunds,
		uint256 givenTotalSupply,
		Math.Rounding rounding
	) private view returns (uint256 shares) {
		if (assets == 0) return 0;
		if (givenFreeFunds == 0) {
			return _fullMulDiv(assets, PRECISION, depositTokenPrecision, rounding);
		} else {
			return _fullMulDiv(assets, givenTotalSupply, givenFreeFunds, rounding);
		}
	}

	/**
	 * @notice Converts shares to assets using simulation
	 * @param shares Amount of shares to convert
	 * @return assets Amount of assets from shares
	 */
	function _convertToAssets(uint256 shares) public view override returns (uint256 assets) {
		IVaultSimulatorAPI.VaultSnapshot memory snapshot = takeSnapshot();
		snapshot = IVaultManagerAPI(manager).simulatedReportAllReserves(snapshot);
		uint256 freeFunds = IVaultManagerAPI(snapshot.manager).simulatedFreeFunds(snapshot);
		assets = _convertToAssetsWithGivenFreeFundsAndTotalSupply(shares, freeFunds, snapshot.totalSupply, Math.Rounding.Down);
	}

	/**
	 * @notice Converts assets to shares using simulation
	 * @param assets Amount of assets to convert
	 * @return shares Amount of shares from assets
	 */
	function _convertToShares(uint256 assets) external view override returns (uint256 shares) {
		IVaultSimulatorAPI.VaultSnapshot memory snapshot = takeSnapshot();
		snapshot = IVaultManagerAPI(manager).simulatedReportAllReserves(snapshot);
		uint256 freeFunds = IVaultManagerAPI(snapshot.manager).simulatedFreeFunds(snapshot);
		return _convertToSharesWithGivenFreeFundsAndTotalSupply(assets, freeFunds, snapshot.totalSupply, Math.Rounding.Up);
	}

	/**
	 * @notice Calculates the fee on raw amount
	 * @param assets Amount of assets
	 * @param feeBasePoint Fee base point
	 * @return fee The fee amount
	 */
	function _simulatedFeeOnRaw(uint256 assets, uint256 feeBasePoint) private pure returns (uint256) {
		return feeBasePoint > 0 ? FixedPointMathLib.fullMulDivUp(assets, feeBasePoint, MAX_BPS) : 0;
	}

	/**
	 * @notice Calculates the fee on total amount
	 * @param assets Amount of assets
	 * @param feeBasePoint Fee base point
	 * @return fee The fee amount
	 */
	function _simulatedFeeOnTotal(uint256 assets, uint256 feeBasePoint) private pure returns (uint256 fee) {
		fee = feeBasePoint > 0 ? FixedPointMathLib.fullMulDivUp(assets, feeBasePoint, feeBasePoint + MAX_BPS) : 0;
	}
}
