// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { IERC20 } from "./interfaces/IERC20.sol";
import { IAutopoolSlim } from "./interfaces/IAutopoolSlim.sol";
import { SafeERC20 } from "./libraries/SafeERC20.sol";

/// @title Depositor of `asset` into `autopool` from and to msg.sender
contract Depositor {
    using SafeERC20 for IERC20;

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

    constructor(address _operator, address _autopool) {
        if (_operator == address(0) || _autopool == address(0)) {
            revert ZeroAddress();
        }

        autopool = IAutopoolSlim(_autopool);
        asset = IERC20(IAutopoolSlim(autopool).asset());
        operator = _operator;
    }

    /// @notice Sender to deposit into Autopool and receiver shares
    /// @param owner The holder of `asset` and the receiver of `shares`
    /// @param amount The amount of `asset` to deposit. Must be approved
    /// @param minAmount The minimum shares expected
    /// @param referralCode Optional referral code for tracking
    /// @return shares The actual amount of shares received
    function deposit(address owner, uint256 amount, uint256 minAmount, uint256 deadline, string calldata referralCode)
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

        // The Autopool will send back this exact amount so this isn't a safety check on the operation but just
        // a sanity check on the minAmount as large variation would indicate problems elsewhere
        uint256 expectedDeposit = autopool.convertToShares(amount, autopool.totalAssets(1), autopool.totalSupply(), 0);
        if (minAmount < (expectedDeposit * 500 / 10000)) {
            revert MinAmountTooLow();
        }

        // Operator is the only one allowed to call. Pulls and sends to the same address
        // slither-disable-next-line arbitrary-send-erc20
        asset.safeTransferFrom(owner, address(this), amount);
        asset.forceApprove(address(autopool), amount);
        shares = autopool.deposit(amount, owner);

        if (shares < minAmount) {
            revert NotEnoughShares();
        }

        // slither-disable-next-line reentrancy-events
        emit Deposit(msg.sender, owner, amount, minAmount, shares, referralCode);
    }
}
