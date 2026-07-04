// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface VaultSimulatorAPI {
	struct VaultStrategySnapshot {
		uint256 debtRatio;
		uint256 totalDebt;
	}

	struct VaultTokenSnapshot {
		uint256 balance;
		uint256 tokenIdle;
		uint256 tokenDebt;
		uint256 depositDebt;
		uint256 depositDebtRatio;
		uint256 lastReport;
		uint256 lastReportedValue;
		uint256 watermark;
		VaultStrategySnapshot[] strategies;
	}

	struct VaultSnapshot {
		address vault;
		address manager;
		VaultTokenSnapshot[] tokens;
		uint256 totalFeeShares;
		uint256 totalFees;
		uint256 totalAssets;
		uint256 totalSupply;
		uint256 totalProfit;
		uint256 lockedProfit;
		uint256 lastLockedProfitRatio;
		uint256 lastLockedProfitDegradation;
		uint256 lockedProfitDegradationRate;
		uint256 extraLockedProfitDegradationRate;
		uint256 timestamp;
	}

	struct ReserveFees {
		uint256 managementFee;
		uint256 totalFees;
		uint256 profit;
	}

	struct StrategyFees {
		uint256 vaultManagementFee;
		uint256 vaultPerformanceFee;
		uint256 strategyManagementFee;
		uint256 strategistFee;
		uint256 totalFees;
	}

	function initialize(address vaultaddress, address manageraddress, uint8 depositTokenDecimals) external;
	function takeSnapshot() external view returns (VaultSimulatorAPI.VaultSnapshot memory snapshot);
	function simulatedDeposit(uint256 assets, VaultSimulatorAPI.VaultSnapshot memory snapshot) external view returns (uint256 shares);
	function simulatedWithdraw(uint256 assets) external view returns (uint256 shares);
	function simulatedMaxWithdraw(address owner, VaultSimulatorAPI.VaultSnapshot memory snapshot) external view returns (uint256 maxAssetsNotIncludingFees);
	function simulatedRedeem(uint256 sharesIncludingFees) external view returns (uint256 assetsNotIncludingFees);
	function simulateRedeemProportional(
		uint256 sharesIncludingFees,
		VaultSimulatorAPI.VaultSnapshot memory snapshot
	) external view returns (uint256[] memory toRedeem);
	function simulatedIssueSharesForFeeAmount(
		uint256 feeAmount,
		address feeToken,
		uint256 deltaTotalAssets,
		VaultSimulatorAPI.VaultSnapshot memory snapshot
	) external view returns (VaultSimulatorAPI.VaultSnapshot memory);

	function assetsPerShare() external view returns (uint256);
	function _convertToAssets(uint256 shares) external view returns (uint256 assets);
	function _convertToShares(uint256 assets) external view returns (uint256 shares);
}
