// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.25;

import { UserData, Release, RewardData } from "../types/Types.sol";

/// @title IStakingPool
/// interface for StakingPool contract containing all events, errors and external/public functions
interface IStakingPool {
    /////////////////////////////////
    ////////////  EVENTS  ///////////
    /////////////////////////////////

    /// @notice emitted when an account claims rewards as REWARD_TOKEN
    /// @param account address of account claiming
    /// @param amount REWARD_TOKEN received as rewards
    event Claimed(address account, uint256 amount);

    /// @notice emitted when an account claims releases
    /// @param account address of account claiming
    /// @param amount amount of tokens released and claimed
    event ClaimedReleases(address account, uint256 amount);

    /// @notice emitted when rewards are provided
    /// @param amount total amount of REWARD_TOKEN being provided as rewards
    event RewardsProvided(uint256 amount);

    /// @notice emitted when a new fee treasury address is set
    /// @param feeWallet address of new fee wallet
    event FeeWalletSet(address feeWallet);

    /// @notice emitted when a new protocol fee is set
    /// @param feeBP new value of protocol fee in basis points
    event ProtocolFeeSet(uint256 feeBP);

    /// @notice emitted when a new unstaked treasury address is set
    /// @param treasury address of new treasury
    event TreasurySet(address treasury);

    /// @notice emitted when an account stakes STAKE_TOKEN
    /// @param account address of account providing STAKE_TOKEN
    /// @param onBehalfOf address receiving tokens
    /// @param amount STAKE_TOKEN amount being staked
    event Staked(address account, address onBehalfOf, uint256 amount);

    /// @notice emitted when a new value for staker share is set
    /// @param shareBP new value for staker share in basis points
    event StakerShareSet(uint256 shareBP);

    /// @notice emitted when a new value for unbonding duration is set
    /// @param duration new value for unbonding duration in seconds
    event UnbondingDurationSet(uint256 duration);

    /// @notice emitted when an account unstakes STAKE_TOKEN
    /// @param account address of account unstaking
    /// @param amount STAKE_TOKEN amount being unstaked
    event Unstaked(address account, uint256 amount);

    /// @notice emitted when a new value for the whitelist root is set
    /// @param root new value of whitelist merkle tree root
    event WhitelistRootSet(bytes32 root);

    /// @notice emitted when whitelist requirement is toggled
    /// @param status true if whitelist is enabled, false if disabled
    event WhitelistStatusSet(bool status);

    /////////////////////////////////
    ////////////  ERRORS  ///////////
    /////////////////////////////////

    /// @dev thrown when stake and reward tokens are the same
    error StakeAndRewardTokensIdentical();

    /// @notice thrown when attempting to set a basis point value larger than basis points
    error Basis_Exceeded();

    /// @notice thrown when claiming is attempted but _msgSender() is not whitelisted
    error Claim__NotWhitelisted();

    /// @notice thrown when rewards are being provided when there aren't any token seconds eligible
    /// for rewards
    error ProvideRewards__ZeroRewardedTS();

    /// @notice thrown when reward provision is attempted with a zero amount
    error ProvideRewards__ZeroAmount();

    /// @notice thrown when update is called and from address is the same as to address
    error Update__SelfUpdate();

    /// @notice thrown when update is called and from address has insufficient staked tokens
    error Update__InsufficientStakedTokens();

    /// @notice thrown when staking is attempted but _msgSender() is not whitelisted
    error Stake__NotWhitelisted();

    /// @notice thrown when staking is attempted with a zero amount to stake
    error Stake__ZeroAmount();

    /// @notice thrown when attempting to set a zero address
    error Invalid_ZeroAddress();

    //////////////////////////////////
    //////////// FUNCTIONS ///////////
    //////////////////////////////////

    /// @notice initializes the StakingPool contract
    /// @param admin address of initial admin
    /// @param feeWallet address of fee wallet
    /// @param treasury address of treasury
    /// @param protocolFeeBP protocol fee in basis points
    /// @param name token name
    /// @param symbol token symbol
    function __StakingPool_init(
        address admin,
        address feeWallet,
        address treasury,
        uint256 protocolFeeBP,
        string memory name,
        string memory symbol
    ) external;

    /// @notice claims all accrued rewards for _msgSender()
    /// @param proof merkle proof for whitelist
    function claim(bytes32[] memory proof) external;

    /// @notice claims all eligible releases for _msgSender()
    /// @return amount amount of tokens released and claimed
    function claimReleases() external returns (uint256 amount);

    /// @notice claims a number of eligible releases for _msgSender()
    /// @dev rescue function in case user has too many releases to claim
    /// @param releasesToClaim number of releases to claim
    /// @return amount amount of tokens released and claimed
    function claimReleases(uint256 releasesToClaim)
        external
        returns (uint256 amount);

    /// @notice pauses the StakingPool contract
    function pause() external;

    /// @notice provides an amount of rewards to the StakingPool
    /// @param amount total amount of rewards to provide
    function provideRewards(uint256 amount) external;

    /// @notice sets a new address for fee treasury
    /// @param feeWallet new address of fee wallet
    function setFeeWallet(address feeWallet) external;

    /// @notice set a new value for the protocol fee in basis points
    /// @param feeBP new value of protocol fee in basis points
    function setProtocolFeeBP(uint256 feeBP) external;

    /// @notice sets a new value for the staker share in basis points
    /// @param shareBP new value for the staker share in basis points
    function setStakerShareBP(uint256 shareBP) external;

    /// @notice sets a new address for unstaked treasury
    /// @param treasury new address of treasury
    function setTreasury(address treasury) external;

    /// @notice sets a new value for unbonding duration in seconds
    /// @param duration new value for unbonding duration in seconds
    function setUnbondingDuration(uint256 duration) external;

    /// @notice sets new value for whitelistRoot
    /// @param root new whitelistRoot value
    function setWhitelistRoot(bytes32 root) external;

    /// @notice sets whether whitelist verification is required
    /// @param active true if whitelist is enabled, false if disabled
    function setWhitelistStatus(bool active) external;

    /// @notice stakes an amount of STAKE_TOKEN for onBehalfOf, with tokens taken from _msgSender()
    /// @param onBehalfOf address receiving the tokens
    /// @param amount STAKE_TOKEN amount to stake
    /// @param proof merkle proof for whitelist of onBehalfOf
    function stake(
        address onBehalfOf,
        uint256 amount,
        bytes32[] memory proof
    ) external;

    /// @notice unpauses the StakingPool contract
    function unpause() external;

    /// @notice unstakes an amount of STAKE_TOKEN for _msgSender()
    /// @param amount STAKE_TOKEN amount to unstake
    function unstake(uint256 amount) external;

    /// @notice returns the amount of releases that are bound for an account until a given timestamp
    /// @param account address of account to fetch bound releases for
    /// @return releases releases that are bound for account until timestamp
    function getBoundReleases(address account)
        external
        view
        returns (Release[] memory releases);

    /// @notice returns the amount of bound releases for an account
    /// @param account address of account to fetch bound releases for
    /// @return amount amount of bound releases for account
    function getBoundReleaseAmount(address account)
        external
        view
        returns (uint256 amount);

    /// @notice returns the claimable releases for an account
    /// @param account address of account to fetch releases for
    /// @return releases releases for account
    function getClaimableReleases(address account)
        external
        view
        returns (Release[] memory releases);

    /// @notice returns the amount of claimable releases for an account
    /// @param account address of account to fetch claimable releases for
    /// @return amount amount of claimable releases for account
    function getClaimableReleaseAmount(address account)
        external
        view
        returns (uint256 amount);

    /// @notice returns the address of the fee wallet
    /// @return feeWallet address of the fee wallet
    function getFeeWallet()
        external
        view
        returns (address feeWallet);

    /// @notice returns the protocol fee in basis points
    /// @return feeBP protocol fee in basis points
    function getProtocolFeeBP()
        external
        view
        returns (uint256 feeBP);

    /// @notice returns the reward data for an index
    /// @param data reward data for index
    function getReward(uint256 index)
        external
        view
        returns (RewardData memory data);

    /// @notice returns all reward data
    /// @return rewards all reward data
    function getRewards()
        external
        view
        returns (RewardData[] memory rewards);

    /// @notice returns the current reward index
    /// @return index current reward index
    function getLatestRewardIndex()
        external
        view
        returns (uint256 index);

    /// @notice returns the current value of the staker share in basis points
    /// @return shareBP current value of the staker share in basis points
    function getStakerShareBP()
        external
        view
        returns (uint256 shareBP);

    /// @notice returns address of treasury
    /// @return treasury address of treasury
    function getTreasury() external view returns (address treasury);

    /// @notice returns the current value of unbonding duration in seconds
    /// @return duration current value of unbonding duration in seconds
    function getUnbondingDuration()
        external
        view
        returns (uint256 duration);

    /// @notice returns the current value of global timestamp
    /// @return globalTS current value of global timestamp
    function getUpdatedGlobalTS()
        external
        view
        returns (uint256 globalTS);

    /// @notice returns the updated user data for an account
    /// @param account address of account to fetch user data for
    /// @return updatedData current user data for account
    function getUpdatedUserData(address account)
        external
        view
        returns (UserData memory updatedData);

    /// @notice returns the current user data for an account
    /// @param account address of account to fetch user data for
    /// @return data current user data for account
    function getUserData(address account)
        external
        view
        returns (UserData memory data);

    /// @notice returns the rewards for an account
    /// @param account address of account to fetch rewards for
    /// @return rewards rewards for account
    function getUserRewards(address account)
        external
        view
        returns (uint256 rewards);

    /// @notice returns the root of the whitelist merkle tree
    /// @return root vlaue of whitelist merkle tree root
    function getWhitelistRoot()
        external
        view
        returns (bytes32 root);

    /// @notice returns whether whitelist verification is required
    /// @return status true if whitelist is enabled, false if disabled
    function getWhitelistStatus()
        external
        view
        returns (bool status);

    /// @notice returns the current value of global timestamp
    /// @return timestamp current value of global timestamp
    function getGlobalTS()
        external
        view
        returns (uint256 timestamp);
}
