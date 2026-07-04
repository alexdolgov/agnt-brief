// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "../../interfaces/ISwapAggregator.sol";
import "../../interfaces/IVault.sol";
import "../../extensions/RockOnyxAccessControl.sol";
import "../../lib/ShareMath.sol";
import "../../extensions/TransferHelper.sol";
import "./structs/goldLinkStruct.sol";
import "../../extensions/Utils.sol";
import "hardhat/console.sol";

abstract contract BaseGoldLinkVault is
    IVault,
    Initializable,
    RockOnyxAccessControl,
    ReentrancyGuardUpgradeable
{
    address private operator;
    ISwapAggregator internal swapAggregator;
    VaultParams internal vaultParams;
    VaultState internal vaultState;
    uint256 internal initialPPS;
    uint256 internal networkCost;
    mapping(address => bool) claimableWallets;
    mapping(address => DepositReceipt) internal depositReceipts;
    mapping(address => Withdrawal) internal withdrawals;
    uint256[50] internal ______gap;

    /************************************************
     *  EVENTS
     ***********************************************/
    event Deposit(
        address indexed user,
        address indexed asset,
        uint256 amount,
        uint256 shares
    );

    event RequestFunds(
        address indexed account,
        uint256 withdrawalAmount,
        uint256 shares
    );

    event Withdrawn(address indexed account, uint256 amount, uint256 shares);

    function base_initialize(
        address _admin,
        address _usdc,
        uint256 _minimumSupply,
        uint256 _cap,
        uint256 _networkCost,
        address _swapAggregatorAddress
    ) internal {
        operator = _admin;
        vaultParams = VaultParams(_usdc, 6, _minimumSupply, _cap, 10, 10);
        vaultState = VaultState(1e6, 0, 0, 0, 0, 0, 0);
        initialPPS = 1e6;
        paused = false;
        networkCost = _networkCost;
        swapAggregator = ISwapAggregator(_swapAggregatorAddress);

        _grantRole(ROCK_ONYX_ADMIN_ROLE, _admin);
        _grantRole(ROCK_ONYX_OPTIONS_TRADER_ROLE, _admin);
    }

    /**
     * @notice Receives Ether sent to the contract.
     * @dev Logs the received Ether amount and forwards it to the operator. Requires Ether to be sent, and ensures the transfer succeeds.
     */
    receive() external payable {
        console.log("receive ", msg.value);
        require(msg.value > 0, "No Ether received");

        (bool success, ) = operator.call{value: msg.value}("");
        require(success, "Ether transfer failed");
    }

    /**
     * @notice Sets the operator address.
     * @dev Restricted to the ROCK_ONYX_ADMIN_ROLE.
     * @param _operator The address to be set as the operator.
     */
    function setOperator(address _operator) external {
        _auth(ROCK_ONYX_ADMIN_ROLE);

        operator = _operator;
    }

    /**
     * @notice Deposits funds into the vault and subscribes to Solv.
     * @dev Non-reentrant and requires the vault to be unpaused. Ensures deposit meets minimum supply and cap requirements.
     * @param _asset The asset to deposit.
     * @param _amount The amount of the asset to deposit.
     * @param _swapCallData Additional data for asset swap, if necessary.
     */
    function deposit(
        address _asset,
        uint256 _amount,
        bytes calldata _swapCallData
    ) external nonReentrant {
        require(paused == false, "VAULT_PAUSED");
        require(_amount >= vaultParams.minimumSupply, "MIN_AMOUNT");
        require(
            this.totalValueLocked() + _amount <= vaultParams.cap,
            "EXCEED_CAP"
        );

        TransferHelper.safeTransferFrom(
            _asset,
            msg.sender,
            address(this),
            _amount
        );

        if (_asset != vaultParams.asset) {
            TransferHelper.safeApprove(
                _asset,
                address(swapAggregator),
                _amount
            );
            _amount = swapAggregator.swapTo(
                address(this),
                address(_asset),
                _amount,
                address(vaultParams.asset),
                _swapCallData
            );
        }

        uint256 issueShares = _issueShares(_amount);
        depositReceipts[msg.sender].depositAmount += _amount;
        depositReceipts[msg.sender].shares += issueShares;
        vaultState.totalShares += issueShares;
        _addCollateral(_amount);

        emit Deposit(msg.sender, vaultParams.asset, _amount, issueShares);
    }

    /**
     * @notice Initiates a withdrawal for the specified shares to be processed at the end of the round.
     * @dev Non-reentrant and requires a valid number of shares.
     * @param shares The number of shares to withdraw.
     */
    function initiateWithdrawal(uint256 shares) external nonReentrant {
        DepositReceipt storage depositReceipt = depositReceipts[msg.sender];
        require(depositReceipt.shares >= shares, "INVALID_SHARES");
        require(withdrawals[msg.sender].shares == 0, "INVALID_WD_STATE");

        uint256 pps = _getPricePerShare();
        uint256 totalShareAmount = (depositReceipt.shares * pps) / 1e6;
        uint256 totalProfit = totalShareAmount <= depositReceipt.depositAmount
            ? 0
            : (totalShareAmount - depositReceipt.depositAmount) * 1e6;
        uint256 withdrawProfit = (totalProfit * shares) / depositReceipt.shares;
        uint256 performanceFee = withdrawProfit > 0
            ? (withdrawProfit * vaultParams.performanceFeeRate) / 1e14
            : 0;

        depositReceipt.depositAmount -=
            (depositReceipt.depositAmount * shares) /
            depositReceipt.shares;
        depositReceipt.shares -= shares;

        withdrawals[msg.sender].shares = shares;
        withdrawals[msg.sender].pps = pps;
        withdrawals[msg.sender].profit = withdrawProfit;
        withdrawals[msg.sender].performanceFee = performanceFee;
        withdrawals[msg.sender].withdrawAmount = ShareMath.sharesToAsset(
            shares,
            pps,
            vaultParams.decimals
        );

        emit RequestFunds(msg.sender, shares * _getPricePerShare(), shares);
    }

    /**
     * @notice Completes a withdrawal for the user, transferring the calculated amount.
     * @dev Non-reentrant and requires a valid amount of shares, with claimable status.
     * @param shares The number of shares to complete the withdrawal for.
     */
    function completeWithdrawal(uint256 shares) external nonReentrant {
        require(paused == false, "VAULT_PAUSED");
        require(shares > 0, "INVALID_AMOUNT_WITHDRAW");
        require(withdrawals[msg.sender].shares >= shares, "INVALID_SHARES");
        require(claimableWallets[msg.sender], "WALLET_NOT_CLAIMABLE");

        uint256 withdrawAmount = (shares *
            withdrawals[msg.sender].withdrawAmount) /
            withdrawals[msg.sender].shares;
        uint256 performanceFee = (shares *
            withdrawals[msg.sender].performanceFee) /
            withdrawals[msg.sender].shares;
        uint256 feeAmount = performanceFee + networkCost;
        uint256 withdrawAmountAfterFee = withdrawAmount - feeAmount;

        require(
            vaultState.withdrawPoolAmount > withdrawAmountAfterFee,
            "EXCEED_WD_POOL_CAP"
        );

        vaultState.withdrawPoolAmount -= withdrawAmountAfterFee;
        feeAmount = vaultState.withdrawPoolAmount < feeAmount
            ? vaultState.withdrawPoolAmount
            : feeAmount;
        vaultState.totalFeePoolAmount += feeAmount;
        vaultState.withdrawPoolAmount -= feeAmount;
        withdrawals[msg.sender].withdrawAmount -= (withdrawAmountAfterFee +
            feeAmount);

        withdrawals[msg.sender].shares -= shares;
        vaultState.totalShares -= shares;
        claimableWallets[msg.sender] = withdrawals[msg.sender].shares != 0;

        TransferHelper.safeTransfer(
            vaultParams.asset,
            msg.sender,
            withdrawAmountAfterFee
        );

        emit Withdrawn(msg.sender, withdrawAmount, shares);
    }

    /**
     * @notice Acquires assets from the vendor to prepare for user withdrawals.
     * @dev Restricted to the ROCK_ONYX_ADMIN_ROLE and non-reentrant.
     * @param usdAmount The amount in USD to acquire.
     * @param wallets Array of user wallets eligible to claim the funds.
     */
    function acquireWithdrawalFunds(
        uint256 usdAmount,
        address[] memory wallets
    ) external nonReentrant {
        _auth(ROCK_ONYX_ADMIN_ROLE);
        require(usdAmount <= _totalValueLocked(), "INVALID_ACQUIRE_AMOUNT");

        vaultState.withdrawPoolAmount += _acquireFunds(usdAmount);
        for (uint256 i = 0; i < wallets.length; i++) {
            claimableWallets[wallets[i]] = true;
        }
    }

    /**
     * @notice Acquires the management fee based on the specified timestamp.
     * @dev Restricted to the ROCK_ONYX_ADMIN_ROLE and non-reentrant.
     * @param timestamp The timestamp to calculate the fee from.
     */
    function acquireManagementFee(uint256 timestamp) external nonReentrant {
        _auth(ROCK_ONYX_ADMIN_ROLE);

        uint256 feeAmount = _getManagementFee(timestamp);
        require(feeAmount <= _totalValueLocked(), "INVALID_ACQUIRE_AMOUNT");

        vaultState.totalFeePoolAmount += _acquireFunds(feeAmount);
        vaultState.lastUpdateManagementFeeDate = block.timestamp;
    }

    /**
     * @notice acquire asset, prepare funds
     */
    function _acquireFunds(uint256 amount) internal virtual returns (uint256) {}

    /**
     * @notice Returns the calculated management fee and the current timestamp.
     * @dev Calls the internal `_getManagementFee` function with the current timestamp to compute the management fee based on time elapsed since the last fee update.
     * @return uint256 The calculated management fee based on the current timestamp.
     * @return uint256 The current timestamp used in the fee calculation.
     */
    function getManagementFee() public view returns (uint256, uint256) {
        return (_getManagementFee(block.timestamp), block.timestamp);
    }

    /**
     * @notice Calculates the management fee accrued since the last update, based on the specified timestamp.
     * @dev Computes the fee by applying a per-second rate to the vault's total value locked, adjusted for time elapsed since the last fee update.
     * @param timestamp The current timestamp to base the fee calculation on.
     * @return uint256 The calculated management fee in asset units.
     */
    function _getManagementFee(
        uint256 timestamp
    ) internal view returns (uint256) {
        uint256 perSecondRate = (vaultParams.managementFeeRate * 1e12) /
            (365 * 86400) +
            1; // +1 mean round up second rate
        uint256 period = timestamp - vaultState.lastUpdateManagementFeeDate;
        return
            ((_totalValueLocked() - vaultState.withdrawPoolAmount) *
                perSecondRate *
                period) / 1e14;
    }

    /**
     * @notice Returns the total number of shares in the vault.
     * @return uint256 The total shares in the vault.
     */
    function totalShares() external view returns (uint256) {
        return vaultState.totalShares;
    }

    /**
     * @notice Returns the balance (shares) of the specified owner.
     * @param owner The address of the owner to check balance for.
     * @return uint256 The number of shares owned by the specified address.
     */
    function balanceOf(address owner) external view returns (uint256) {
        return depositReceipts[owner].shares;
    }

    /**
     * @notice Returns the total value locked in the vault.
     * @return uint256 The total value locked in the vault.
     */
    function totalValueLocked() external view returns (uint256) {
        return _totalValueLocked();
    }

    /**
     * @notice Gets the price per share in the vault.
     * @return uint256 The current price per share.
     */
    function _getPricePerShare() internal view returns (uint256) {
        if (vaultState.totalShares == 0)
            return initialPPS > 0 ? initialPPS : 1e6;

        return
            (_totalValueLocked() * 10 ** vaultParams.decimals) /
            vaultState.totalShares;
    }

    /**
     * @notice Retrieves the current vault state.
     * @return VaultState The current state of the vault.
     */
    function getVaultState() external view returns (VaultState memory) {
        return vaultState;
    }

    /**
     * @notice Returns the price per share of the vault.
     * @return uint256 The price per share.
     */
    function pricePerShare() external view returns (uint256) {
        return _getPricePerShare();
    }

    /**
     * @notice Returns the shares marked for withdrawal by the user.
     * @return uint256 The number of shares the user has marked for withdrawal.
     */
    function getUserWithdrawlShares() external view returns (uint256) {
        return withdrawals[msg.sender].shares;
    }

    /**
     * @notice Gets the deposit receipt for the caller.
     * @return DepositReceipt The deposit receipt containing deposit details.
     */
    function getDepositReceipt() external view returns (DepositReceipt memory) {
        return (depositReceipts[msg.sender]);
    }

    /**
     * @notice Issues vault shares based on the specified amount.
     * @param amount The amount to convert into shares.
     * @return uint256 The issued shares.
     */
    function _issueShares(uint256 amount) private view returns (uint256) {
        console.log("_getPricePerShare ", _getPricePerShare());
        return
            ShareMath.assetToShares(
                amount,
                _getPricePerShare(),
                vaultParams.decimals
            );
    }

    /**
     * @notice Calculates and returns the total value locked in the vault.
     * @return uint256 The total value locked.
     */
    function _totalValueLocked() internal view virtual returns (uint256) {}

    /**
     * @notice Adds collateral to the strategy.
     * @param amount The amount of collateral to add.
     */
    function _addCollateral(uint256 amount) internal virtual {}

    /**
     * @notice Borrows funds based on the specified collateral.
     * @param collateral The collateral used to borrow funds.
     */
    function _borrowFunds(uint256 collateral) internal virtual {}
}
