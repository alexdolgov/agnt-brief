// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { IERC20 } from "./interfaces/IERC20.sol";
import { IAutopoolSlim } from "./interfaces/IAutopoolSlim.sol";
import { SafeERC20 } from "./libraries/SafeERC20.sol";
import { ISpendManager } from "./interfaces/ISpendManager.sol";

/// @title Depositor of `asset` into `autopool` from and to msg.sender
contract Depositor {
    using SafeERC20 for IERC20;

    ISpendManager public immutable spendManager;

    IAutopoolSlim public immutable autopool;

    IERC20 public immutable asset;

    address public immutable operator;

    event Deposit(
        address indexed sender,
        address indexed owner,
        uint256 amount,
        uint256 minAmount,
        uint256 shares,
        string referralCode
    );

    error NotEnoughShares();
    error InvalidOperator();
    error ZeroAddress();
    error Expired();
    error ZeroAmount();
    error StaleData();
    error MinAmountTooLow();
    error AmountTooLarge();

    constructor(address _spendManager, address _operator, address _autopool) {
        if (_operator == address(0) || _autopool == address(0) || _spendManager == address(0)) {
            revert ZeroAddress();
        }

        spendManager = ISpendManager(_spendManager);
        autopool = IAutopoolSlim(_autopool);
        asset = IERC20(IAutopoolSlim(autopool).asset());
        operator = _operator;
    }

    /// @notice Sender to deposit into Autopool and receiver shares
    /// @param spendPermission Spend permission to the Coinbase smart wallet
    /// @param amount The amount of `asset` to deposit. Must be approved
    /// @param minAmount The minimum shares expected
    /// @param referralCode Optional referral code for tracking
    /// @return shares The actual amount of shares received
    function deposit(ISpendManager.SpendPermission memory spendPermission, uint256 amount, uint256 minAmount, uint256 deadline, string calldata referralCode)
        external
        returns (uint256 shares)
    {
        if (msg.sender != operator) {
            revert InvalidOperator();
        }
        if (deadline < block.timestamp) {
            revert Expired();
        }
        if (amount == 0 || minAmount == 0) {
            revert ZeroAmount();
        }
        if (autopool.oldestDebtReporting() + 24 hours < block.timestamp) {
            revert StaleData();
        }
        if (amount > type(uint160).max) {
            revert AmountTooLarge();
        }

        // The Autopool will send back this exact amount so this isn't a safety check on the operation but just
        // a sanity check on the minAmount as large variation would indicate problems elsewhere
        uint256 expectedDeposit = autopool.convertToShares(amount, autopool.totalAssets(1), autopool.totalSupply(), 0);
        if (minAmount < (expectedDeposit * 9500 / 10000)) {
            revert MinAmountTooLow();
        }

        spendManager.spend(spendPermission, uint160(amount));

        // Approve autopool to transfer tokens from this contract
        asset.forceApprove(address(autopool), amount);

        shares = autopool.deposit(amount, spendPermission.account);

        if (shares < minAmount) {
            revert NotEnoughShares();
        }

        // slither-disable-next-line reentrancy-events
        emit Deposit(msg.sender, spendPermission.account, amount, minAmount, shares, referralCode);
    }
}
