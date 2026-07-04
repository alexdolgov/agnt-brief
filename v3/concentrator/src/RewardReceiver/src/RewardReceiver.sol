// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IRewardVault} from "src/interfaces/IRewardVault.sol";
import {IRewardReceiver} from "src/interfaces/IRewardReceiver.sol";
import {ImmutableArgsParser} from "src/libraries/ImmutableArgsParser.sol";

/// @title RewardReceiver.
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice RewardReceiver acts as a reward distribution intermediary that receives rewards from gauges
///         and forwards them to the associated reward vault. It implements a minimal proxy pattern since
///         each reward vault has its own dedicated receiver. The receiver validates reward tokens against
///         the vault's accepted tokens before distribution.
contract RewardReceiver is IRewardReceiver {
    using ImmutableArgsParser for address;
    using SafeCast for uint256;
    using SafeERC20 for IERC20;

    //////////////////////////////////////////////////////
    // --- ERRORS
    //////////////////////////////////////////////////////

    /// @notice Throws if there are no rewards to distribute.
    error NoRewards();

    /// @notice Throws if the reward token is not valid.
    error InvalidToken();

    /// @notice Throws if the caller is not the reward router.
    error OnlyRewardRouter();

    /// @notice Throws if the reward router is not set.
    error NoRewardRouterSet();

    //////////////////////////////////////////////////////
    // --- IMMUTABLES
    //////////////////////////////////////////////////////

    /// @notice Address of the reward vault contract.
    /// @return _rewardVault The address of the reward vault contract.
    function rewardVault() public view returns (IRewardVault _rewardVault) {
        return IRewardVault(address(this).readAddress(0));
    }

    /// @notice Address of the legacy reward receiver contract.
    /// @dev This is used to claim extra rewards from the legacy reward receiver contract.
    function legacyRewardReceiver() public view returns (address _legacyRewardReceiver) {
        return address(this).readAddress(20);
    }

    /// @notice Address of the reward router contract.
    /// @dev This is used to claim extra rewards from the reward router contract.
    function rewardRouter() public view returns (address _rewardRouter) {
        return address(this).readAddress(40);
    }

    /// @notice Modifier to restrict functions to the reward router.
    modifier onlyRewardRouter() {
        require(rewardRouter() == address(0) || msg.sender == rewardRouter(), OnlyRewardRouter());
        _;
    }

    //////////////////////////////////////////////////////
    // --- EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////

    /// @notice Pulls rewards from the reward receiver to the reward router.
    /// @param token The reward token to pull.
    /// @dev This function is called by the reward router to pull rewards from the reward receiver.
    function pullRewards(address token) external onlyRewardRouter returns (uint128 amount) {
        require(rewardRouter() != address(0), NoRewardRouterSet());

        amount = IERC20(token).balanceOf(address(this)).toUint128();

        IERC20(token).safeTransfer(rewardRouter(), amount);
    }

    /// @notice Distributes all rewards to the reward vault.
    /// @dev Iterates through all reward tokens registered in the vault,
    ///      checks balances, and forwards any available rewards.
    ///      This function is typically called after a gauge has sent rewards to this contract.
    function distributeRewards() external onlyRewardRouter {
        // Get the list of reward tokens from the reward vault
        address[] memory tokens = rewardVault().getRewardTokens();

        require(tokens.length > 0, NoRewards());

        // Check balances and distribute each reward token
        for (uint256 i; i < tokens.length; i++) {
            IERC20 token = IERC20(tokens[i]);
            uint128 balance = token.balanceOf(address(this)).toUint128();

            if (balance > 0) {
                if (rewardVault().getRewardsDistributor(address(token)) == address(this)) {
                    _depositRewards(token, balance);
                } else {
                    _depositLegacyRewards(token, balance);
                }
            }
        }
    }

    /// @notice Distributes a specific reward token to the reward vault.
    /// @param token The reward token to distribute.
    /// @dev Validates that the token is accepted by the vault before attempting distribution.
    ///      This function is useful when only a specific reward token needs to be distributed.
    /// @custom:throws InvalidToken If the token is not registered as a valid reward token in the vault.
    function distributeRewardToken(IERC20 token) external onlyRewardRouter {
        // Check if the token is a valid reward token in the vault
        require(rewardVault().isRewardToken(address(token)), InvalidToken());

        // Get the balance of the reward token
        uint128 amount = token.balanceOf(address(this)).toUint128();

        // If there are no rewards to distribute, revert
        require(amount > 0, NoRewards());

        if (rewardVault().getRewardsDistributor(address(token)) == address(this)) {
            _depositRewards(token, amount);
        } else {
            _depositLegacyRewards(token, amount);
        }
    }

    //////////////////////////////////////////////////////
    // --- INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////

    /// @notice Deposit rewards to the reward vault.
    /// @param token The reward token to deposit.
    /// @param amount The amount of rewards to deposit.
    function _depositRewards(IERC20 token, uint128 amount) internal {
        /// Approve the reward vault to spend the reward token.
        token.forceApprove(address(rewardVault()), amount);

        // Deposit rewards to the vault
        rewardVault().depositRewards(address(token), amount);
    }

    /// @notice Deposit legacy rewards to the legacy reward receiver.
    /// @param token The reward token to deposit.
    /// @param amount The amount of rewards to deposit.
    function _depositLegacyRewards(IERC20 token, uint128 amount) internal {
        if (legacyRewardReceiver() == address(0)) return;

        /// Transfer the rewards to the legacy reward receiver.
        token.safeTransfer(legacyRewardReceiver(), amount);

        // Deposit rewards to the legacy reward receiver.
        IRewardReceiver(legacyRewardReceiver()).distributeRewardToken(token);
    }
}
