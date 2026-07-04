// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { IERC20 } from "./interfaces/IERC20.sol";
import { IERC4626 } from "./interfaces/IERC4626.sol";
import { SafeERC20 } from "./libraries/SafeERC20.sol";

/// @title Depositor of `asset` into `autopool` from and to msg.sender
contract Depositor {
    using SafeERC20 for IERC20;

    IERC4626 public immutable autopool;

    IERC20 public immutable asset;

    event Deposit(address indexed sender, uint256 amount, uint256 minAmount, uint256 shares, string referralCode);

    error NotEnoughShares();

    constructor(address _autopool) {
        autopool = IERC4626(_autopool);
        asset = IERC20(IERC4626(autopool).asset());
    }

    /// @notice Sender to deposit into Autopool and receiver shares
    /// @param amount The amount of `asset` to deposit. Must be approved
    /// @param minAmount The minimum shares expected
    /// @param referralCode Optional referral code for tracking
    /// @return shares The actual amount of shares received
    function deposit(uint256 amount, uint256 minAmount, string calldata referralCode) external returns (uint256 shares) {
        asset.safeTransferFrom(msg.sender, address(this), amount);
        asset.forceApprove(address(autopool), amount);
        shares = autopool.deposit(amount, msg.sender);
        if (shares < minAmount) {
            revert NotEnoughShares();
        }
        emit Deposit(msg.sender, amount, minAmount, shares, referralCode);
    }
}
