// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {IRewardsProxy} from "../utils/interfaces/IRewardsProxy.sol";
import {IDistributor} from "./interfaces/IDistributor.sol";
import {IUniversalRewardsDistributorBase} from "./interfaces/IUniversalRewardsDistributorBase.sol";
import {ReentrancyGuard} from "lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {console} from "forge-std/console.sol";
import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {ISpectra4626Wrapper} from "../utils/interfaces/ISpectra4626Wrapper.sol";
import {ClaimParams} from "./ClaimParams.sol";

/// @title MetaMorphoRewardsProxyMultiToken
/// @notice A proxy contract that handles claiming rewards from multiple distributors and tokens.
/// The contract aims to be used with Morpho enhancers to claim the rewards entitled to the users
/// of the morpho wrapper.
/// @dev Implements IRewardsProxy interface and includes reentrancy protection
contract MetaMorphoRewardsProxyMultiToken is IRewardsProxy, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /// @notice Error thrown when attempting to transfer vault shares
    error CannotTransferVaultShares();

    /// @notice Claims rewards from multiple distributors and/or forwards tokens to a specified receiver
    /// @notice We introduce this claims and tokens parameters to be able to just transfer tokens,
    /// without claiming any rewards. This can be useful as any user can claim rewards on behalf of
    /// another user in morpho. The rewards would then be sent to the wrapper.
    /// We need to account these for transfers without the need for a claim if there is nothing to claim
    /// @dev This function is protected against reentrancy attacks
    /// @param _data ABI encoded parameters containing:
    ///        - receiver: Address to receive the claimed rewards
    ///        - claims: Array of ClaimParams structures for each claim. If claims is empty nothing is claimed.
    ///        - tokens: Array of token addresses to transfer after claiming. If tokens is empty nothing is transferred.
    function claimRewards(bytes memory _data) external override nonReentrant {
        (address receiver, ClaimParams[] memory claims, address[] memory tokens) = abi.decode(
            _data,
            (address, ClaimParams[], address[])
        );

        // claim rewards in Morpho rewards distributor
        for (uint256 i = 0; i < claims.length; i++) {
            ClaimParams memory claim = claims[i];
            IDistributor(claim.distributor).claim(
                claim.account,
                claim.rewardToken,
                claim.claimable,
                claim.proof
            );
        }

        // Transfer all tokens included in the claims to the receiver
        for (uint256 i = 0; i < tokens.length; i++) {
            address token = tokens[i];
            if (token == ISpectra4626Wrapper(address(this)).vaultShare())
                revert CannotTransferVaultShares();
            IERC20(token).safeTransfer(receiver, IERC20(token).balanceOf(address(this)));
        }
    }
}
