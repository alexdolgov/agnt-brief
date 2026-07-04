// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {Errors} from "./utils/Errors.sol";
import {MultiRewardsPollen} from "./MultiRewardsPollen.sol";

import {ERC20} from "@solmate/tokens/ERC20.sol";
import {SafeTransferLib} from "@solmate/utils/SafeTransferLib.sol";

import {IPollenStaking} from "./interfaces/IPollenStaking.sol";
import {IMultiAdapter} from "src/interfaces/dao/IMultiAdapter.sol";

/**
 * @title PollenStaking
 * @author Infrared Finance
 * @notice This contract is the wrapper for staking and receiving POLLEN rewards.
 *         Based out of the following Infrared Finance implementation:
 *         https://berascan.com/address/0x75F3Be06b02E235f6d0E7EF2D462b29739168301#code
 *         This contract is under the BUSL-1.1 license by Infrared Finance.
 *         The permissioned behaviour has been modified to a mix of Owner and RewardDistributor.
 * @dev This contract uses the MultiRewards contract to distribute rewards to stakers, this is taken from curve.fi. (inspired by Synthetix).
 * @dev Does not support staking tokens with non-standard ERC20 transfer tax behavior.
 */
contract PollenStaking is MultiRewardsPollen, IPollenStaking {
    using SafeTransferLib for ERC20;

    /// @notice Instance of the MultiAdapter contract
    IMultiAdapter public immutable adapter;

    /// @notice Maximum number of reward tokens that can be supported
    /// @dev Limited to prevent gas issues with reward calculations
    uint256 public constant MAX_NUM_REWARD_TOKENS = 10;

    /// @notice The RewardDistributor contract address
    address public rewardDistributor;

    /// @notice Modifier to check that the caller is the MetaBeraborrowCore owner
    modifier onlyOwner() {
        if (msg.sender != metaBeraborrowCore.owner())
            revert Errors.Unauthorized(msg.sender);
        _;
    }

    /// @notice Modifier to check that the caller is the RewardDistributor contract
    modifier onlyOwnerOrRewardDistributor() {
        if (
            msg.sender != rewardDistributor &&
            msg.sender != metaBeraborrowCore.owner()
        ) revert Errors.Unauthorized(msg.sender);
        _;
    }

    constructor(
        address _metaBeraborrowCore,
        address _adapter,
        address _stakingToken,
        address _pollen,
        address _rewardDistributor,
        address _pollenRouter,
        uint256 _rewardsDuration
    ) MultiRewardsPollen(_stakingToken, _metaBeraborrowCore, _pollenRouter) {
        if (
            _metaBeraborrowCore == address(0) ||
            _adapter == address(0) ||
            _stakingToken == address(0) ||
            _pollen == address(0) ||
            _rewardDistributor == address(0) ||
            _pollenRouter == address(0)
        ) revert Errors.ZeroAddress();
        if (_rewardsDuration == 0) revert Errors.ZeroAmount();

        adapter = IMultiAdapter(_adapter);
        rewardDistributor = _rewardDistributor;

        _addReward(_pollen, _rewardDistributor, _rewardsDuration);

        // to be able to recover rewards which where distributed during periods where there was no stake
        // owner will have a stake of 1 wei in the vault
        _totalSupply = _totalSupply + 1;
        _balances[msg.sender] = _balances[msg.sender] + 1;
    }

    /*//////////////////////////////////////////////////////////////
                        RESTRICTED FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IPollenStaking
    function updateRewardsDuration(
        address _rewardsToken,
        uint256 _rewardsDuration
    ) external onlyOwner {
        if (_rewardsToken == address(0)) revert Errors.ZeroAddress();
        if (_rewardsDuration == 0) revert Errors.ZeroAmount();
        _setRewardsDuration(_rewardsToken, _rewardsDuration);
    }

    /// @inheritdoc IPollenStaking
    function unpauseStaking() external onlyOwner {
        if (!paused()) return;
        _unpause();
    }

    /// @inheritdoc IPollenStaking
    function pauseStaking() external onlyOwner {
        if (paused()) return;
        _pause();
    }

    /// @inheritdoc IPollenStaking
    function addReward(
        address _rewardsToken,
        uint256 _rewardsDuration
    ) external onlyOwner {
        if (_rewardsToken == address(0)) revert Errors.ZeroAddress();
        if (_rewardsDuration == 0) revert Errors.ZeroAmount();
        if (
            rewardTokens.length == MAX_NUM_REWARD_TOKENS &&
            _rewardsToken != rewardDistributor
        ) {
            revert Errors.MaxNumberOfRewards();
        }
        _addReward(_rewardsToken, rewardDistributor, _rewardsDuration);
    }

    /// @inheritdoc IPollenStaking
    function removeReward(address _rewardsToken) external onlyOwner {
        if (_rewardsToken == address(0)) revert Errors.ZeroAddress();
        _removeReward(_rewardsToken);
    }

    /// @inheritdoc IPollenStaking
    function notifyRewardAmount(
        address _rewardToken,
        uint256 _reward
    ) external onlyOwnerOrRewardDistributor {
        if (_rewardToken == address(0)) revert Errors.ZeroAddress();
        if (_reward == 0) revert Errors.ZeroAmount();
        _notifyRewardAmount(_rewardToken, _reward);
    }

    /// @inheritdoc IPollenStaking
    function recoverERC20(
        address _to,
        address _token,
        uint256 _amount
    ) external onlyOwner {
        if (_to == address(0) || _token == address(0)) {
            revert Errors.ZeroAddress();
        }
        if (_amount == 0) revert Errors.ZeroAmount();
        _recoverERC20(_to, _token, _amount);
    }

    /*//////////////////////////////////////////////////////////////
                        STAKE/WITHDRAW
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Hook called after stake operations.
     * @dev This function deposits the staked tokens into the MultiAdapter.
     * @param amount The amount of assets being deposited.
     */
    function onStake(uint256 amount) internal virtual override {
        stakingToken.safeApprove(address(adapter), amount);
        adapter.deposit(amount);
    }

    /**
     * @notice Hook called before withdrawal operations.
     * @dev This function ensures that the requested amount of staking tokens is withdrawn
     *      from the MultiAdapter before being transferred to the user.
     * @param amount The amount of assets to withdraw.
     */
    function onWithdraw(uint256 amount) internal virtual override {
        adapter.withdraw(amount);
    }

    /*//////////////////////////////////////////////////////////////
                            Getters
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IPollenStaking
    function getAllRewardTokens() external view returns (address[] memory) {
        return rewardTokens;
    }

    /// @inheritdoc IPollenStaking
    function getAllRewardsForUser(
        address _user
    ) external view returns (UserReward[] memory) {
        uint256 len = rewardTokens.length;
        UserReward[] memory tempRewards = new UserReward[](len);
        uint256 count = 0;

        for (uint256 i = 0; i < len; i++) {
            uint256 amount = earned(_user, rewardTokens[i]);
            if (amount > 0) {
                tempRewards[count] = UserReward({
                    token: rewardTokens[i],
                    amount: amount
                });
                count++;
            }
        }

        // Create a new array with the exact size of non-zero rewards
        UserReward[] memory userRewards = new UserReward[](count);
        for (uint256 j = 0; j < count; j++) {
            userRewards[j] = tempRewards[j];
        }

        return userRewards;
    }
}
