// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import { SafeTransferLib } from "solady-0.0.298/src/utils/SafeTransferLib.sol";
import { MultiStakingRewards } from "../base/MultiStakingRewards.sol";

import { IRewardVault } from "berachain-contracts-latest/src/pol/interfaces/IRewardVault.sol";
import { IRewardVaultFactory } from "berachain-contracts-latest/src/pol/interfaces/IRewardVaultFactory.sol";
import { IBeraPawRewardVault } from "./interfaces/IBeraPawRewardVault.sol";
import { IBeraPawRewardVaultFactory } from "./interfaces/IBeraPawRewardVaultFactory.sol";
import { IBeraPawForge } from "./interfaces/IBeraPawForge.sol";
import { Constants } from "../Constants.sol";

/**
 * @title BeraPawRewardVault
 * @notice This contract is the vault for staking tokens, and receiving rewards as LBGT or some other incentive token.
 * @dev This contract uses the MultiStakingRewards contract to distribute rewards to vault stakers, this is taken from curve.fi. (inspired by Synthetix).
 * @dev Does not support staking tokens with non-standard ERC20 transfer tax behavior.
 */
contract BeraPawRewardVault is IBeraPawRewardVault, MultiStakingRewards {

    /// @notice Maximum number of reward tokens that can be supported
    /// @dev Limited to prevent gas issues with reward calculations
    uint256 public constant MAX_NUM_REWARD_TOKENS = 10;

    uint256 private constant DEFAULT_LBGT_REWARD_DURATION = 60 * 30; // 30 minutes;

    /// @notice BeraPaw Forge contract responsible for minting LBGT.
    IBeraPawForge public constant BERAPAW_FORGE = IBeraPawForge(Constants.BERAPAW_FORGE);

    IRewardVaultFactory constant REWARD_VAULT_FACTORY =
        IRewardVaultFactory(Constants.REWARD_VAULT_FACTORY);

    IRewardVault public immutable rewardVault;
    IBeraPawRewardVaultFactory public immutable beraPawRewardVaultFactory;
    address immutable lbgt;

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         MODIFIERS                           */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// Modifier to check that the caller is the admin.
    modifier onlyAdmin() {
        _onlyAdmin();
        _;
    }

    modifier onlyCurator() {
        _onlyCurator();
        _;
    }

    modifier onlyBeraPawRewardVaultFactory() {
        _onlyBeraPawRewardVaultFactory();
        _;
    } 

    constructor(address _stakingToken)
        MultiStakingRewards(_stakingToken)
    {

        if (_stakingToken == address(0)) revert ZeroAddress();

        beraPawRewardVaultFactory = IBeraPawRewardVaultFactory(msg.sender);

        // set the berachain rewards vault and operator as berapaw_forge
        rewardVault = _getOrCreateRewardVault(_stakingToken);
        rewardVault.setOperator(address(BERAPAW_FORGE));

        lbgt = address(BERAPAW_FORGE.lbgtAddress());

        _addReward(lbgt, DEFAULT_LBGT_REWARD_DURATION);

        // Factory stakes 1 token to initialize the vault and avoid no stake edge case.
        _totalSupply += 1;
        _balances[address(beraPawRewardVaultFactory)] += 1;
    }

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       ADMIN FUNCTIONS                       */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IBeraPawRewardVault
    function updateRewardsDuration(
        address _rewardsToken,
        uint256 _rewardsDuration
    ) external onlyAdmin {
        if (_rewardsToken == address(0)) revert ZeroAddress();
        if (_rewardsDuration == 0) revert ZeroAmount();
        _setRewardsDuration(_rewardsToken, _rewardsDuration);
    }

    /// @inheritdoc IBeraPawRewardVault
    function unpauseStaking() external onlyAdmin {
        if (!paused()) return;
        _unpause();
    }

    /// @inheritdoc IBeraPawRewardVault
    function pauseStaking() external onlyAdmin {
        if (paused()) return;
        _pause();
    }

    /// @inheritdoc IBeraPawRewardVault
    function addReward(address _rewardsToken, uint256 _rewardsDuration)
        external
        onlyAdmin
    {
        if (_rewardsToken == address(0)) revert ZeroAddress();
        if (_rewardsDuration == 0) revert ZeroAmount();
        if (
            rewardTokens.length == MAX_NUM_REWARD_TOKENS
        ) {
            revert MaxNumberOfRewards();
        }
        _addReward(_rewardsToken, _rewardsDuration);
    }

    /// @inheritdoc IBeraPawRewardVault
    function removeReward(address _rewardsToken) external onlyAdmin {
        if (_rewardsToken == address(0)) revert ZeroAddress();
        _removeReward(_rewardsToken);
    }

    /// @inheritdoc IBeraPawRewardVault
    function notifyRewardAmount(address _rewardToken, uint256 _reward)
        external
        onlyCurator
    {
        if (_rewardToken == address(0)) revert ZeroAddress();
        if (_reward == 0) revert ZeroAmount();
        // handle the transfer of reward tokens via `transferFrom` to reduce the number
        // of transactions required and ensure correctness of the reward amount
        SafeTransferLib.safeTransferFrom(_rewardToken, msg.sender, address(this), _reward);
        _notifyRewardAmount(_rewardToken, _reward);
    }

    /// @inheritdoc IBeraPawRewardVault
    function recoverERC20(address _to, address _token, uint256 _amount)
        external
        onlyAdmin
    {
        if (_to == address(0) || _token == address(0)) {
            revert ZeroAddress();
        }
        if (_amount == 0) revert ZeroAmount();
        _recoverERC20(_to, _token, _amount);
    }

    /// @inheritdoc IBeraPawRewardVault
    function getRewardForUser(address _user)
        external
        onlyBeraPawRewardVaultFactory
    {
        _getRewardForUser(_user, _user);
    }

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      PUBLIC FUNCTIONS                       */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IBeraPawRewardVault
    function harvest() public {
        uint256 lbgtAmount = BERAPAW_FORGE.mint(address(this), address(rewardVault), address(this));
        if (lbgtAmount > 0) {
            _notifyRewardAmount(lbgt, lbgtAmount);
        }
        emit Harvested(lbgtAmount);
    }

    /*//////////////////////////////////////////////////////////////
                            Getters
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IBeraPawRewardVault
    function getAllRewardTokens() external view returns (address[] memory) {
        return rewardTokens;
    }

    /// @inheritdoc IBeraPawRewardVault
    function getAllRewardsForUser(address _user)
        external
        view
        returns (UserReward[] memory)
    {
        uint256 len = rewardTokens.length;
        UserReward[] memory tempRewards = new UserReward[](len);
        uint256 count = 0;

        for (uint256 i = 0; i < len; i++) {
            uint256 amount = earned(_user, rewardTokens[i]);
            if (amount > 0) {
                tempRewards[count] =
                    UserReward({token: rewardTokens[i], amount: amount});
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

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                    INTERNAL FUNCTIONS                       */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Transfers to berachain low level module on staking of LP tokens with the vault after transferring tokens in
     * @param amount The amount of staking token transferred in to the contract
     */
    function onStake(uint256 amount) internal override {
        stakingToken.approve(address(rewardVault), amount);
        rewardVault.stake(amount);
    }

    /**
     * @notice Redeems from berachain low level module on withdraw of LP tokens from the vault before transferring tokens out
     * @param amount The amount of staking token transferred out of the contract
     */
    function onWithdraw(uint256 amount) internal override {
        rewardVault.withdraw(amount);
    }

    function onReward() internal override { }

    function _onlyAdmin() internal view {
        if (!beraPawRewardVaultFactory.isAdmin(msg.sender))
            revert Unauthorized(msg.sender);
    }

    function _onlyCurator() internal view {
        if (!beraPawRewardVaultFactory.isCurator(msg.sender))
            revert Unauthorized(msg.sender);
    }

    function _onlyBeraPawRewardVaultFactory() internal view {
        if (msg.sender != address(beraPawRewardVaultFactory))
            revert Unauthorized(msg.sender);
    }

    /**
     * @notice Gets or creates the berachain rewards vault for given staking token
     * @param _stakingToken The address of the staking token for this vault
     * @return The address of the berachain rewards vault
     */
    function _getOrCreateRewardVault(
        address _stakingToken
    ) private returns (IRewardVault) {
        address rewardVaultAddress = REWARD_VAULT_FACTORY.getVault(_stakingToken);
        if (rewardVaultAddress == address(0)) {
            rewardVaultAddress =
                REWARD_VAULT_FACTORY.createRewardVault(_stakingToken);
        }
        return IRewardVault(rewardVaultAddress);
    }
}