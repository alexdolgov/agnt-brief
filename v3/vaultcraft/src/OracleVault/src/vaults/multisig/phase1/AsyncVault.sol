// SPDX-License-Identifier: GPL-3.0
// Docgen-SOLC: 0.8.25

pragma solidity ^0.8.25;

import {BaseControlledAsyncRedeem, RequestBalance} from "./BaseControlledAsyncRedeem.sol";
import {BaseERC7540, ERC20} from "./BaseERC7540.sol";
import {SafeTransferLib} from "solmate/utils/SafeTransferLib.sol";
import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";
import {Owned} from "../../../utils/Owned.sol";

/// @notice Handles the initialize parameters of the vault
struct InitializeParams {
    /// @notice The address of the asset that the vault will manage
    address asset;
    /// @notice The name of the vault
    string name;
    /// @notice The symbol of the vault
    string symbol;
    /// @notice The trusted manager of the vault (handles all sensitive management logic)
    address owner;
    /// @notice The limits of the vault
    Limits limits;
    /// @notice The fees of the vault
    Fees fees;
}

/// @notice Stores the deposit limit and minAmounts of the vault
struct Limits {
    /// @notice Maximum amount of assets that can be deposited into the vault
    uint256 depositLimit;
    /// @notice Minimum amount of shares that can be minted / redeemed from the vault
    uint256 minAmount;
}

/// @notice Stores all fee related variables
struct Fees {
    /// @notice Performance fee rate in 1e18 (100% = 1e18)
    uint64 performanceFee;
    /// @notice Management fee rate in 1e18 (100% = 1e18)
    uint64 managementFee;
    /// @notice Withdrawal incentive fee rate in 1e18 (100% = 1e18)
    uint64 withdrawalIncentive;
    /// @notice Timestamp of the last time the fees were updated (used for management fee calculations)
    uint64 feesUpdatedAt;
    /// @notice High water mark of the vault (used for performance fee calculations)
    uint256 highWaterMark;
    /// @notice Address of the fee recipient
    address feeRecipient;
}

/**
 * @title   AsyncVault
 * @author  RedVeil
 * @notice  Abstract contract containing reusable logic that are the basis of ERC-7540 compliant async redeem vauls
 * @notice  Besides the basic logic for ERC-7540 this contract contains most other logic to manage a modern DeFi vault
 * @dev     Logic to account and manage assets must be implemented by inheriting contracts
 */
abstract contract AsyncVault is BaseControlledAsyncRedeem {
    using FixedPointMathLib for uint256;

    error ZeroAmount();
    error Misconfigured();

    /**
     * @notice Constructor for AsyncVault
     * @param params The initialization parameters
     */
    constructor(
        InitializeParams memory params
    ) BaseERC7540(params.owner, params.asset, params.name, params.symbol) {
        _setLimits(params.limits);
        _setFees(params.fees);
    }

    /*//////////////////////////////////////////////////////////////
                        DEPOSIT/WITHDRAWAL LOGIC
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Deposit assets into the vault
     * @param assets The amount of assets to deposit
     * @return shares The amount of shares required
     */
    function deposit(uint256 assets) external returns (uint256) {
        return deposit(assets, msg.sender);
    }

    /**
     * @notice Mint shares into the vault
     * @param shares The amount of shares to mint
     * @return assets The amount of assets received
     */
    function mint(uint256 shares) external returns (uint256) {
        return mint(shares, msg.sender);
    }

    /**
     * @notice Withdraw assets from the vault
     * @param assets The amount of assets to withdraw
     * @return shares The amount of shares required
     */
    function withdraw(uint256 assets) external returns (uint256) {
        return withdraw(assets, msg.sender, msg.sender);
    }

    /**
     * @notice Redeem shares from the vault
     * @param shares The amount of shares to redeem
     * @return assets The amount of assets received
     */
    function redeem(uint256 shares) external returns (uint256) {
        return redeem(shares, msg.sender, msg.sender);
    }

    /*//////////////////////////////////////////////////////////////
                            ACCOUNTING LOGIC
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Simulates a deposit into the vault and returns the amount of shares that would be received by the user
     * @param assets The amount of assets to deposit
     * @return shares The amount of shares that would be received by the user
     * @dev This function will return 0 if the vault is paused or if the deposit doesnt meet the limits
     */
    function previewDeposit(
        uint256 assets
    ) public view override returns (uint256) {
        Limits memory limits_ = limits;
        uint256 shares = convertToShares(assets);

        if (
            paused ||
            totalAssets() + assets > limits_.depositLimit ||
            shares < limits_.minAmount
        ) return 0;

        return super.previewDeposit(assets);
    }

    /**
     * @notice Simulates a mint into the vault and returns the amount of assets required to mint the given amount of shares
     * @param shares The amount of shares to mint
     * @return assets The amount of assets required to mint the given amount of shares
     * @dev This function will return 0 if the vault is paused or if the mint doesnt meet the limits
     */
    function previewMint(
        uint256 shares
    ) public view override returns (uint256) {
        Limits memory limits_ = limits;
        uint256 assets = convertToAssets(shares);

        if (
            paused ||
            totalAssets() + assets > limits_.depositLimit ||
            shares < limits_.minAmount
        ) return 0;

        return super.previewMint(shares);
    }

    /*//////////////////////////////////////////////////////////////
                     DEPOSIT/WITHDRAWAL LIMIT LOGIC
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the maximum amount of assets that can be deposited into the vault
     * @return assetsThe maxDeposit of the controller
     * @dev Will return 0 if the vault is paused or if the deposit limit is reached
     */
    function maxDeposit(address) public view override returns (uint256) {
        uint256 assets = totalAssets();
        uint256 depositLimit_ = limits.depositLimit;

        if (paused) return 0;
        if (depositLimit_ == type(uint256).max) return depositLimit_;

        return assets >= depositLimit_ ? 0 : depositLimit_ - assets;
    }
    /**
     * @notice Returns the maximum amount of shares that can be minted into the vault
     * @return shares The maxMint of the controller
     * @dev Will return 0 if the vault is paused or if the deposit limit is reached
     * @dev Overflows if depositLimit is close to maxUint (convertToShares multiplies depositLimit with totalSupply)
     */
    function maxMint(address) public view override returns (uint256) {
        uint256 assets = totalAssets();
        uint256 depositLimit_ = limits.depositLimit;

        if (paused) return 0;
        if (depositLimit_ == type(uint256).max) return depositLimit_;

        return
            assets >= depositLimit_
                ? 0
                : convertToShares(depositLimit_ - assets);
    }

    /*//////////////////////////////////////////////////////////////
                        REQUEST REDEEM LOGIC
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Requests a redeem for the caller
     * @param shares The amount of shares to redeem
     * @return requestId The requestId of the redeem request
     */
    function requestRedeem(uint256 shares) external returns (uint256) {
        return requestRedeem(shares, msg.sender, msg.sender);
    }

    /**
     * @notice Requests a redeem of shares from the vault
     * @param shares The amount of shares to redeem
     * @param controller The user that will be receiving pending shares
     * @param owner The owner of the shares to redeem
     * @return requestId The requestId of the redeem request
     * @dev This redeem request is added to any pending redeem request of the controller
     * @dev This function will revert if the shares are less than the minAmount
     */
    function requestRedeem(
        uint256 shares,
        address controller,
        address owner
    ) public override returns (uint256 requestId) {
        require(shares >= limits.minAmount, "ERC7540Vault/min-amount");

        // Take fees
        if (!paused) _takeFees();

        // Calculate the withdrawal incentive fee from the assets
        Fees memory fees_ = fees;
        uint256 feeShares = shares.mulDivDown(
            uint256(fees_.withdrawalIncentive),
            1e18
        );

        // Send the withdrawal incentive fee to the fee recipient
        handleWithdrawalIncentive(feeShares, owner, fees_.feeRecipient);

        // process request
        return _requestRedeem(shares - feeShares, controller, owner);
    }

    /*//////////////////////////////////////////////////////////////
                        FULFILL REDEEM LOGIC
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Fulfills multiple redeem requests of the controller to allow the controller to withdraw their assets
     * @param shares The amount of shares to redeem
     * @param controllers The controllers to redeem for
     * @return total The total amount of assets received
     * @dev This function will revert if the shares and controllers arrays are not the same length
     * @dev This function will also take the withdrawal incentive fee from the assets to incentivse the manager to fulfill the requests
     */
    function fulfillMultipleRedeems(
        uint256[] memory shares,
        address[] memory controllers
    ) external onlyOwner returns (uint256 total) {
        if (shares.length != controllers.length) revert Misconfigured();

        uint256 totalShares;
        for (uint256 i; i < shares.length; i++) {
            uint256 shares = shares[i];

            if (shares == 0) revert("ZERO_SHARES");

            RequestBalance memory currentBalance = requestBalances[
                controllers[i]
            ];

            // calculate amount of fulfilled assets
            uint256 assets = shares.mulDivDown(
                currentBalance.pendingAssets,
                currentBalance.pendingShares
            );

            // Fulfill the redeem request
            _fulfillRedeem(assets, shares, controllers[i]);

            // Add to the total fees
            total += assets;
            totalShares += shares;
        }

        // Burn controller's shares
        _burn(address(this), totalShares);

        return total;
    }

    /**
     * @notice Handles the withdrawal incentive fee by sending it to the fee recipient
     * @param feeShares The amount of shares to send as fees
     * @param owner The user that wants to withdraw
     * @param feeRecipient The address to send the fee to
     * @dev This function is expected to be overriden in inheriting contracts
     */
    function handleWithdrawalIncentive(
        uint256 feeShares,
        address owner,
        address feeRecipient
    ) internal virtual {
        if (feeShares > 0) {
            // Transfer feeShares from owner to feeRecipient
            SafeTransferLib.safeTransferFrom(
                this,
                owner,
                feeRecipient,
                feeShares
            );
        }
    }

    /*//////////////////////////////////////////////////////////////
                            ERC-4626 OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Takes fees before a withdraw (if the contract is not paused)
     * @dev This function is expected to be overriden in inheriting contracts
     */
    function beforeWithdraw(uint256 assets, uint256) internal virtual override {
        if (!paused) _takeFees();
    }

    /**
     * @notice Takes fees before a deposit
     * @dev This function is expected to be overriden in inheriting contracts
     */
    function beforeDeposit(uint256 assets, uint256) internal virtual override {
        // deposit and mint already have the `whenNotPaused` modifier so we don't need to check it here
        _takeFees();
    }

    /*//////////////////////////////////////////////////////////////
                            FEE LOGIC
    //////////////////////////////////////////////////////////////*/

    Fees public fees;

    event FeesUpdated(Fees prev, Fees next);

    error InvalidFee(uint256 fee);

    /// @notice Returns the fees parameters of the vault
    function getFees() public view returns (Fees memory) {
        return fees;
    }

    /// @notice Returns the accrued fees of the vault
    function accruedFees() public view returns (uint256) {
        Fees memory fees_ = fees;

        return _accruedFees(fees_);
    }

    /// @dev Internal function to calculate the accrued fees
    function _accruedFees(Fees memory fees_) internal view returns (uint256) {
        return _accruedPerformanceFee(fees_) + _accruedManagementFee(fees_);
    }

    /**
     * @notice Performance fee that has accrued since last fee harvest.
     * @return accruedPerformanceFee In underlying `asset` token.
     * @dev Performance fee is based on a high water mark value. If vault share value has increased above the
     *   HWM in a fee period, issue fee shares to the vault equal to the performance fee.
     */
    function _accruedPerformanceFee(
        Fees memory fees_
    ) internal view returns (uint256) {
        uint256 shareValue = convertToAssets(10 ** decimals);
        uint256 performanceFee = uint256(fees_.performanceFee);

        return
            performanceFee > 0 && shareValue > fees_.highWaterMark
                ? performanceFee.mulDivUp(
                    (shareValue - fees_.highWaterMark) * totalSupply,
                    (10 ** (18 + decimals))
                )
                : 0;
    }

    /**
     * @notice Management fee that has accrued since last fee harvest.
     * @return accruedManagementFee In underlying `asset` token.
     * @dev Management fee is annualized per minute, based on 525,600 minutes per year. Total assets are calculated using
     *  the average of their current value and the value at the previous fee harvest checkpoint. This method is similar to
     *  calculating a definite integral using the trapezoid rule.
     */
    function _accruedManagementFee(
        Fees memory fees_
    ) internal view returns (uint256) {
        uint256 managementFee = uint256(fees_.managementFee);

        return
            managementFee > 0
                ? managementFee.mulDivDown(
                    totalAssets() * (block.timestamp - fees_.feesUpdatedAt),
                    31536000 // seconds per year
                ) / 1e18
                : 0;
    }

    /**
     * @notice Sets the fees of the vault
     * @param fees_ The fees to set
     * @dev This function will revert if the fees are greater than 20% performanceFee, 5% managementFee, or 5% withdrawalIncentive
     * @dev This function will also take the fees before setting them to ensure the new fees rates arent applied to any pending fees
     */
    function setFees(Fees memory fees_) public onlyOwner whenNotPaused {
        _takeFees();

        _setFees(fees_);
    }

    /// @dev Internal function to set the fees
    function _setFees(Fees memory fees_) internal {
        // Dont take more than 20% performanceFee, 5% managementFee, 5% withdrawalIncentive
        if (
            fees_.performanceFee > 2e17 ||
            fees_.managementFee > 5e16 ||
            fees_.withdrawalIncentive > 5e16
        ) revert Misconfigured();
        if (fees_.feeRecipient == address(0)) revert Misconfigured();

        // Dont rely on user input here
        fees_.feesUpdatedAt = uint64(block.timestamp);

        // initialise or copy current HWM
        if (fees.highWaterMark == 0) {
            fees_.highWaterMark = convertToAssets(10 ** decimals); // from constructor
        } else {
            fees_.highWaterMark = fees.highWaterMark; // from setFees
        }

        emit FeesUpdated(fees, fees_);

        fees = fees_;
    }

    /**
     * @notice Mints fees as shares of the vault to the fee recipient
     * @dev It will also update the all other fee related variables
     */
    function takeFees() external whenNotPaused {
        _takeFees();
    }

    /// @dev Internal function to take the fees
    function _takeFees() internal {
        Fees memory fees_ = fees;
        uint256 perfFee = _accruedPerformanceFee(fees_);
        uint256 mgmtFee = _accruedManagementFee(fees_);
        uint256 shareValue = convertToAssets(10 ** decimals);

        // Mint fees to the fee recipient
        if (perfFee + mgmtFee > 0)
            _mint(fees_.feeRecipient, convertToShares(perfFee + mgmtFee));

        // Update the high water mark (used by performance fee)
        if (shareValue > fees_.highWaterMark) fees.highWaterMark = shareValue;

        // Update the fees updated at timestamp (used by management fee)
        if (mgmtFee > 0) fees.feesUpdatedAt = uint64(block.timestamp);
    }

    /*//////////////////////////////////////////////////////////////
                          LIMIT LOGIC
    //////////////////////////////////////////////////////////////*/

    Limits public limits;

    event LimitsUpdated(Limits prev, Limits next);

    /**
     * @notice Sets the deposit limit and minAmounts of the vault to limit user exposure to strategy risks
     * @param limits_ The limits to set
     */
    function setLimits(Limits memory limits_) external onlyOwner {
        _setLimits(limits_);
    }

    /// @dev Internal function to set the limits
    function _setLimits(Limits memory limits_) internal {
        // cache
        uint256 totalSupply_ = totalSupply;
        if (totalSupply_ > 0 && limits_.depositLimit < totalAssets())
            revert Misconfigured();
        if (limits_.minAmount > (10 ** decimals)) revert Misconfigured();

        emit LimitsUpdated(limits, limits_);

        limits = limits_;
    }
}
