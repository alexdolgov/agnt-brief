// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

import { IERC20, LendingPool } from "../LendingPool.sol";
import { IGainAdapter } from "./interfaces/IGainAdapter.sol";
import "./Errors.sol";

/**
 * @title Represents a lending pool that is fully compliant with the ERC-4626 standard.
 * @dev The lending pool is an address-preserving transparent proxy.
 */
contract GainLendingPool is LendingPool {
    uint256 constant private _SECONDS_PER_YEAR = 60 * 60 * 24 * 365;

    /// @notice The address of the vault adapter.
    IGainAdapter public gainAdapter;

    /// @notice The management fee. This is a percentage with 2 decimal places.
    uint256 public managementFeePercent;

    /// @notice The last time we charged management fees.
    uint256 public managementFeeLastKnownTimestamp;

    /**
     * @notice This event is triggered when the adapter reserves a deposit.
     * @param account The account that made the deposit.
     * @param shares The amount of shares sent to the receiving address.
     * @param assets The amount of assets reserved for the receiving address.
     */
    event ReserveDeposit(address account, uint256 shares, uint256 assets);

    /**
     * @notice Set the gain adapter.
     * @param _gainAdapter The address of the gain adapter.
     * @dev This function can only be called once.
     */
    function setGainAdapter(address _gainAdapter) external nonReentrant ifNotConfigured onlyOwner {
        if (address(_gainAdapter) == address(0)) {
            revert Errors.ZeroAddress();
        }
        gainAdapter = IGainAdapter(_gainAdapter);

        /// Initialize Last Known Management Fee Timestamp at time Gain Adapter is set
        managementFeeLastKnownTimestamp = block.timestamp;
    }

    /**
     * @notice Reserve a deposit via the Kelp Adapter.
     * @param account The account to reserve the deposit fors.
     * @param amountInETH The amount to reserve in ETH.
     */
    function reserveDeposit(address account, uint256 amountInETH) external nonReentrant ifConfigured ifDepositsNotPaused {

        if (msg.sender != address(gainAdapter)) {
            revert Errors.Unauthorized();
        }

        if (amountInETH == 0) {
            revert Errors.ZeroAmount();
        }
        
        uint256 assets = gainAdapter.getRsETHValueFromETHAmount(amountInETH);  

        uint256 shares = previewDeposit(assets);

        // Issue (mint) LP tokens to the receiver
        _mintErc20(account, shares);

        emit ReserveDeposit(account, shares, assets);
    }

    function processWithdrawal(address account, uint256 shares) external nonReentrant ifConfigured ifWithdrawalsNotPaused {
        if (msg.sender != address(gainAdapter) || msg.sender == account) {
            revert Errors.Unauthorized();
        }

        if (isBlacklisted[msg.sender] || isBlacklisted[account]) {
            revert Errors.Blacklisted();
        }

        (, uint256 year, uint256 month, uint256 day, uint256 assets) = _registerRedeemRequest(shares, account, account, msg.sender);

        // Emit the event
        emit WithdrawalRequested(msg.sender, account, shares, assets, 0, year, month, day);
    }

    /**
     * @notice Charges the management fee.
     */
    function chargeManagementFee() external nonReentrant ifConfigured onlyOwner {
        uint256 applicableManagementFee = calculateManagementFee(managementFeeLastKnownTimestamp, block.timestamp);
        if (applicableManagementFee == 0) revert Errors.ManagementFeeIsZero();

        managementFeeLastKnownTimestamp = block.timestamp;
        totalCollectableFees += applicableManagementFee;
    }

    /**
     * @notice Updates the management fee.
     * @param newManagementFeePercent The management fee. This is a percentage with 2 decimal places.
     */
    function updateManagementFee(uint256 newManagementFeePercent) external nonReentrant ifConfigured onlyOwner {
        managementFeePercent = newManagementFeePercent;
    }

    /**
     * @notice Calculates the management fee.
     * @param fromTimestamp The start date
     * @param toTimestamp The end date
     * @return uint256 The applicable management fee.
     */
    function calculateManagementFee(uint256 fromTimestamp, uint256 toTimestamp) public view returns (uint256) {
        return (_getTotalAssets() * managementFeePercent *  (toTimestamp - fromTimestamp)) / _SECONDS_PER_YEAR / 10000;
    }

    /**
     * @notice Gets the total assets amount managed by the pool.
     * @return uint256 The assets amount.
     */
    function totalAssets() external view override returns (uint256) {
        return _getTotalAssets();
    }


    // In GainLendingPool.sol
    function _getTotalAssets() internal view override returns (uint256) {
        uint256 baseAssets = super._getTotalAssets();  // This calls HookableLender's implementation
        uint256 ethReservedAmount = gainAdapter.getEthReservedAmount(address(this));
        uint256 rsETHReservedAmount = gainAdapter.getRsETHValueFromETHAmount(ethReservedAmount);
        
        return baseAssets + rsETHReservedAmount;
    }

}
