// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

import "../../core/BaseOwnable.sol";
import "./TimelockedERC4626.sol";

/**
 * @title Represents an ownable liquidity pool. The pool is compliant with the ERC-4626 standard.
 */
abstract contract OwnableLiquidityPool is TimelockedERC4626, BaseOwnable {
    /**
     * @notice This event is triggered when the owner runs an emergency withdrawal.
     * @param withdrawalAmount The withdrawal amount.
     * @param tokenAddr The token address.
     * @param destinationAddr The destination address.
     */
    event OnEmergencyWithdraw (uint256 withdrawalAmount, address tokenAddr, address destinationAddr);

    /**
     * @notice Allows the owner of the pool to withdraw the full balance of the token specified.
     * @dev Throws if the caller is not the current owner of the pool. If the asset to withdraw is the underlying asset of the pool then this function pauses deposits and withdrawals automatically.
     * @param token The token to transfer.
     * @param destinationAddr The destination address of the ERC20 transfer.
     */
    function emergencyWithdraw(
        IERC20 token,
        address destinationAddr
    ) external virtual nonReentrant ifConfigured onlyOwner {
        if (isBlacklisted[destinationAddr]) revert AddressBlacklisted();

        uint256 currentBalance = token.balanceOf(address(this));

        if (address(token) == address(_underlyingAsset)) {
            // Automatically pause deposits and withdrawals in order to prevent fluctuations on the price of the LP token
            _setPause(true, true);
        }

        SafeERC20.safeTransfer(token, destinationAddr, currentBalance);

        emit OnEmergencyWithdraw(currentBalance, address(token), destinationAddr);
    }

    /**
     * @notice Gets the owner of the pool.
     * @return address The address who owns the pool.
     */
    function owner() external view returns (address) {
        return _owner;
    }
}
