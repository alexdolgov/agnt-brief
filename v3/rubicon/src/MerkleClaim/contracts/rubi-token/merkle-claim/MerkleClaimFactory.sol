// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.20;

import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {MerkleClaim} from "./MerkleClaim.sol";

error InvalidBalance();
error InvalidRoot();
error ZeroRewards();

/// @dev This contract is owned by L2 bridge executor,
///      thus calls to 'spawn()' can be initialized only
///      via governance proposal.
contract MerkleClaimFactory is Ownable {
    using SafeERC20 for IERC20;

    address public immutable RUBI;

    /// @param rubi - address of the L2 version of `RUBI` token.
    constructor(address rubi, address bridgeExecutor) Ownable(bridgeExecutor) {
        RUBI = rubi;
    }

    event Spawned(address indexed merkleClaim, uint256 rewardsAmount);

    /// @dev RUBI's 'rewardsAmount' should be on this contract's balance
    ///      prior to executing this function.
    function spawn(bytes32 root, uint256 rewardsAmount) external onlyOwner {
        if (IERC20(RUBI).balanceOf(address(this)) < rewardsAmount)
            revert InvalidBalance();
        if (root == bytes32(0)) revert InvalidRoot();
        if (rewardsAmount == 0) revert ZeroRewards();

        address merkleClaim = address(new MerkleClaim(root, RUBI, owner()));
        IERC20(RUBI).safeTransfer(merkleClaim, rewardsAmount);

        emit Spawned(merkleClaim, rewardsAmount);
    }
}
