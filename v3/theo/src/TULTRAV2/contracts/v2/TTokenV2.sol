// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {TToken} from "../TToken.sol";

/**
 * @notice TTokenV2 implementation to include reducing pending assets as a "withdrawal" from whitelisted roles
 */

contract TTokenV2 is TToken {
    /// @notice Withdraw Pending
    event WithdrawPending(address indexed caller, uint256 amount);

    /**
     * @notice Acts as a "withdrawal" without receiving underlying assets
     * @dev TToken shares must still be burned in this process
     * @dev This should only be called by THEO in order to reduce pending assets.
     */
    function withdrawPending(uint256 _assets) external {
        if (_assets > totalAssetsPending) {
            _assets = totalAssetsPending;
        }
        uint256 shares = previewWithdraw(_assets);
        uint256 maxShares = balanceOf(msg.sender);
        if (shares > maxShares) {
            revert ERC4626ExceededMaxRedeem(msg.sender, shares, maxShares);
        }
        // update total pending assets
        totalAssetsPending -= _assets;
        // burn shares from caller (no assets are withdrawn from this function)
        _burn(msg.sender, shares);
        // emit event
        emit WithdrawPending(msg.sender, _assets);
    }
}
