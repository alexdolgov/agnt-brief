pragma solidity 0.8.21;
import {IValuationModule} from "../interfaces/modules/IValuationModule.sol";

/// @title High-water-mark valuation and performance fee accrual module
/// @notice Tracks portfolio value and accrues performance fees above a high-water mark for a single Hook.
/// @dev
/// - All state changes are restricted to the configured Hook via onlyHook.
/// - Units are denominated in the underlying asset units used by the Vault behind the Hook.
/// - feePercent is expressed in basis points (BPS), where 10_000 = 100%.
contract ValuationModule is IValuationModule {
    /// @notice Authorized caller (the Hook) that drives valuation updates and fee accrual.
    /// @dev Immutable after construction.
    address public immutable hook;

    /// @notice Performance fee percentage in basis points (BPS).
    /// @dev 10_000 = 100%. Applied only to gains above the current high-water mark.
    uint256 public feePercent = 0;

    /// @notice Current high-water mark of the portfolio value.
    /// @dev Used to compute performance fees when portfolio value increases.
    uint256 public highWaterMark = 0;

    /// @notice Accrued, unclaimed fee amount in asset units.
    uint256 public feeAccrued = 0;

    /// @notice Basis points denominator.
    /// @dev 10_000 equals 100%.
    uint256 constant ONE_HUNDRED_PERCENT = 10000;

    /// @notice Last reported portfolio value in asset units.
    /// @dev Updated on deposits, withdrawals, or explicit revaluation.
    uint256 public portfolioValue = 0;

    /// @notice Create a valuation module tied to a specific Hook.
    /// @param _hook The Hook contract authorized to call this module.
    constructor(address _hook) {
        hook = _hook;
    }

    /// @notice Restricts function access to the configured Hook only.
    modifier onlyHook() {
        require(msg.sender == hook, "Not hook");
        _;
    }

    /// @notice Notify the module of an asset deposit increasing portfolio value.
    /// @param assets Amount of assets deposited (asset units).
    /// @dev Increases both portfolioValue and highWaterMark by assets.
    function onDeposit(uint256 assets) external onlyHook {
        portfolioValue += assets;
        highWaterMark += assets;
    }

    /// @notice Notify the module of an asset withdrawal decreasing portfolio value.
    /// @param assets Amount of assets withdrawn (asset units).
    /// @dev Decreases both portfolioValue and highWaterMark by assets.
    function onWithdraw(uint256 assets) external onlyHook {
        portfolioValue -= assets;
        highWaterMark -= assets;
    }

    /// @notice Update the portfolio value and accrue performance fees vs. the high-water mark.
    /// @param newValue New portfolio value in asset units.
    /// @dev
    /// - If newValue > highWaterMark, accrue fee on the delta and raise highWaterMark to newValue.
    /// - Always sets portfolioValue = newValue.
    function updatePortfolioValue(uint256 newValue) external onlyHook {
        if (newValue > highWaterMark) {
            feeAccrued +=
                ((newValue - highWaterMark) * feePercent) /
                ONE_HUNDRED_PERCENT;
            highWaterMark = newValue;
        }
        portfolioValue = newValue;
    }

    /// @notice Claim all accrued fees and reset the accumulator.
    /// @return fee Amount of fees to be transferred by the caller (asset units).
    function claimFee() external onlyHook returns (uint256) {
        uint256 fee = feeAccrued;
        feeAccrued = 0;
        return fee;
    }

    /// @notice Set the performance fee percentage (BPS).
    /// @param newFee New fee in basis points, where 10_000 = 100%.
    /// @dev No bounds checking; callers should validate acceptable ranges at a higher layer.
    function setFee(uint256 newFee) external onlyHook {
        feePercent = newFee;
    }
}
