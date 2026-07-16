// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {IRecoverable} from "../interfaces/IRecoverable.sol";
import {IRewardsDistributorStrategy, IRewardsDistributorBase, IRewardsBase} from "../interfaces/IRewards.sol";

import {NotEnoughClaimableAmount} from "../constants/Errors.sol";

import {RewardsBase} from "./Rewards.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @notice Rewards distributor with authorized strategy rewards allocation
/// @custom:security-contact security@accountable.capital
contract RewardsDistributorStrategy is RewardsBase, IRewardsDistributorStrategy {
    using SafeERC20 for IERC20;

    /// @notice The claimed rewards for an account and asset
    mapping(address account => mapping(address asset => uint256 amount)) public claimed;

    /// @notice Constructor
    /// @param owner_ The owner of the rewards distributor
    /// @param strategy_ The strategy address of the rewards module
    constructor(address owner_, address strategy_) RewardsBase(owner_, strategy_) {}

    /// @inheritdoc IRewardsDistributorBase
    /// @dev With a strategy rewards distributor, the claim function is an authorized call on behalf of the user
    /// @dev This is done in order to prevent double claims due to no per account claimable amount stored
    /// @dev This approach works better for strategies that don't neccearily require epoch based claims
    /// @dev --- Rewards allocation ---
    /// @dev There's no fail-safe in case the strategy allocates more rewards towards a user
    /// @dev To avoid such cases a dynamic allocation of rewards ensures not deadlocks
    function claim(address account, address asset, uint256 claimable, bytes32[] calldata)
        external
        onlyStrategy
        returns (uint256 amount)
    {
        if (!(claimable > claimed[account][asset])) revert NotEnoughClaimableAmount();

        amount = claimable - claimed[account][asset];
        claimed[account][asset] += amount;

        IERC20(asset).safeTransfer(account, amount);

        emit Claimed(account, asset, amount);
    }

    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) public pure override returns (bool) {
        return interfaceId == type(IRewardsDistributorStrategy).interfaceId
            || interfaceId == type(IRewardsBase).interfaceId || interfaceId == type(IRecoverable).interfaceId
            || interfaceId == type(IERC165).interfaceId;
    }
}
