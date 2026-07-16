// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.26 >=0.4.16 >=0.6.2 >=0.8.0 >=0.8.4 ^0.8.0 ^0.8.20 ^0.8.26 ^0.8.4;

// InfraredVault_flat.sol

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Comparators.sol

// OpenZeppelin Contracts (last updated v5.1.0) (utils/Comparators.sol)

/**
 * @dev Provides a set of functions to compare values.
 *
 * _Available since v5.1._
 */
library Comparators {
    function lt(uint256 a, uint256 b) internal pure returns (bool) {
        return a < b;
    }

    function gt(uint256 a, uint256 b) internal pure returns (bool) {
        return a > b;
    }
}

// src/core/libraries/ConfigTypes.sol

library ConfigTypes {
    /// @notice Fee type enum for determining rates to charge on reward distribution.
    enum FeeType {
        HarvestOperatorFeeRate,
        HarvestOperatorProtocolRate,
        HarvestVaultFeeRate,
        HarvestVaultProtocolRate,
        HarvestBribesFeeRate,
        HarvestBribesProtocolRate,
        HarvestBoostFeeRate,
        HarvestBoostProtocolRate
    }
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Context.sol

// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// src/utils/DataTypes.sol

library DataTypes {
    // Struct for ERC20 token information.
    struct Token {
        address tokenAddress;
        uint256 amount;
    }

    /// @dev The address of the native asset as of EIP-7528.
    address public constant NATIVE_ASSET =
        0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
}

// lib/solmate/src/tokens/ERC20.sol

/// @notice Modern and gas efficient ERC20 + EIP-2612 implementation.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC20.sol)
/// @author Modified from Uniswap (https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2ERC20.sol)
/// @dev Do not manually set balances without updating totalSupply, as the sum of all user balances must not exceed it.
abstract contract ERC20_0 {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event Transfer(address indexed from, address indexed to, uint256 amount);

    event Approval(address indexed owner, address indexed spender, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            METADATA STORAGE
    //////////////////////////////////////////////////////////////*/

    string public name;

    string public symbol;

    uint8 public immutable decimals;

    /*//////////////////////////////////////////////////////////////
                              ERC20 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    mapping(address => mapping(address => uint256)) public allowance;

    /*//////////////////////////////////////////////////////////////
                            EIP-2612 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 internal immutable INITIAL_CHAIN_ID;

    bytes32 internal immutable INITIAL_DOMAIN_SEPARATOR;

    mapping(address => uint256) public nonces;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;

        INITIAL_CHAIN_ID = block.chainid;
        INITIAL_DOMAIN_SEPARATOR = computeDomainSeparator();
    }

    /*//////////////////////////////////////////////////////////////
                               ERC20 LOGIC
    //////////////////////////////////////////////////////////////*/

    function approve(address spender, uint256 amount) public virtual returns (bool) {
        allowance[msg.sender][spender] = amount;

        emit Approval(msg.sender, spender, amount);

        return true;
    }

    function transfer(address to, uint256 amount) public virtual returns (bool) {
        balanceOf[msg.sender] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(msg.sender, to, amount);

        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual returns (bool) {
        uint256 allowed = allowance[from][msg.sender]; // Saves gas for limited approvals.

        if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount;

        balanceOf[from] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(from, to, amount);

        return true;
    }

    /*//////////////////////////////////////////////////////////////
                             EIP-2612 LOGIC
    //////////////////////////////////////////////////////////////*/

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual {
        require(deadline >= block.timestamp, "PERMIT_DEADLINE_EXPIRED");

        // Unchecked because the only math done is incrementing
        // the owner's nonce which cannot realistically overflow.
        unchecked {
            address recoveredAddress = ecrecover(
                keccak256(
                    abi.encodePacked(
                        "\x19\x01",
                        DOMAIN_SEPARATOR(),
                        keccak256(
                            abi.encode(
                                keccak256(
                                    "Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)"
                                ),
                                owner,
                                spender,
                                value,
                                nonces[owner]++,
                                deadline
                            )
                        )
                    )
                ),
                v,
                r,
                s
            );

            require(recoveredAddress != address(0) && recoveredAddress == owner, "INVALID_SIGNER");

            allowance[recoveredAddress][spender] = value;
        }

        emit Approval(owner, spender, value);
    }

    function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {
        return block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator();
    }

    function computeDomainSeparator() internal view virtual returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                    keccak256(bytes(name)),
                    keccak256("1"),
                    block.chainid,
                    address(this)
                )
            );
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address to, uint256 amount) internal virtual {
        totalSupply += amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(address(0), to, amount);
    }

    function _burn(address from, uint256 amount) internal virtual {
        balanceOf[from] -= amount;

        // Cannot underflow because a user's balance
        // will never be larger than the total supply.
        unchecked {
            totalSupply -= amount;
        }

        emit Transfer(from, address(0), amount);
    }
}

// src/utils/Errors.sol

library Errors {
    // General errors.
    error ZeroAddress();
    error ZeroAmount();
    error UnderFlow();
    error InvalidArrayLength();
    error AlreadySet();
    error NotPauser();
    error InsufficientBalance();
    error InvalidFeeToken();
    error FeeTokenNotWhitelisted();
    error InsufficientFeeTokenBalance();

    // ValidatorSet errors.
    error ValidatorAlreadyExists();
    error FailedToAddValidator();
    error ValidatorDoesNotExist();

    // InfraredVault errors.
    error MaxNumberOfRewards();
    error Unauthorized(address sender);
    error IBGTNotRewardToken();
    error IBGTNotStakingToken();
    error StakedInRewardsVault();
    error NoRewardsVault();
    error RewardRateDecreased();
    error RegistrationPaused();
    error RewardTokenNotWhitelisted();

    // InfraredValidators errors.
    error InvalidValidator();
    error InvalidOperator();
    error InvalidDepositAmount();
    error ValidatorAlreadyRemoved();

    // Infrared errors.
    error VaultNotSupported();
    error InvalidNonce();
    error VaultNotStaked();
    error ClaimDistrRewardsFailed();
    error ClaimableRewardsExist();
    error DuplicateAssetAddress();
    error VaultDeploymentFailed();
    error RewardTokenNotSupported();
    error BGTBalanceMismatch();
    error NotInfrared();
    error NotInitialized();
    error InvalidFee();
    error InvalidCommissionRate();
    error InvalidDelegatee();
    error InvalidWeight();
    error MaxProtocolFeeAmount();
    error BoostExceedsSupply();
    error ETHTransferFailed();
    error TokensReservedForProtocolFees();
    error NoRewardsToClaim();
    error VaultAlreadyUpToDate();

    // iBERA erros
    error InvalidAmount();
    error InvalidShares();
    error WithdrawalsNotEnabled();
    error InvalidSignature();
    error InvalidReceiver();
    error CallFailed();
    error InvalidReserves();
    error UnauthorizedOperator();
    error ValidatorForceExited();
    error CanNotCompoundAccumuldatedBERA();
    error ExceedsMaxEffectiveBalance();
    error HandleForceExitsBeforeDeposits();
    error HandleForceExitsBeforeRegister();
    error OperatorAlreadySet();
    error InvalidPrecompileResponse();
    error ExcessiveFee();
    error AlreadyFinalised();
    error ExceedsRequestLength();
    error NotFinalised();
    error InvalidState();
    error InvalidWithdrawalAddress();
    error DepositMustBeGreaterThanMinActivationBalance();
    error WithdrawMustLeaveMoreThanMinActivationBalance();
    error MinExitFeeNotMet();
    error AlreadyExited();
    error AlreadyInitiated();
    error BalanceMissmatch();
    error EffectiveBalanceMissmatch();
    error NotExited();
    error ProcessReserves();
    error StaleProof();
    error WaitForPending();
    error ZeroBalance();
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/access/IAccessControl.sol

// OpenZeppelin Contracts (last updated v5.3.0) (access/IAccessControl.sol)

/**
 * @dev External interface of AccessControl declared to support ERC-165 detection.
 */
interface IAccessControl {
    /**
     * @dev The `account` is missing a role.
     */
    error AccessControlUnauthorizedAccount(address account, bytes32 neededRole);

    /**
     * @dev The caller of a function is not the expected one.
     *
     * NOTE: Don't confuse with {AccessControlUnauthorizedAccount}.
     */
    error AccessControlBadConfirmation();

    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted to signal this.
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call. This account bears the admin role (for the granted role).
     * Expected in cases where the role was granted using the internal {AccessControl-_grantRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `callerConfirmation`.
     */
    function renounceRole(bytes32 role, address callerConfirmation) external;
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol

// OpenZeppelin Contracts (last updated v5.1.0) (utils/introspection/IERC165.sol)

/**
 * @dev Interface of the ERC-165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[ERC].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[ERC section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol

// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/IERC20.sol)

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// src/interfaces/IMultiRewards.sol

interface IMultiRewards {
    /**
     * @notice Emitted when tokens are staked
     * @param user The address of the user who staked
     * @param amount The amount of tokens staked
     */
    event Staked(address indexed user, uint256 amount);

    /**
     * @notice Emitted when tokens are withdrawn
     * @param user The address of the user who withdrew
     * @param amount The amount of tokens withdrawn
     */
    event Withdrawn(address indexed user, uint256 amount);

    /**
     * @notice Emitted when rewards are claimed
     * @param user The address of the user claiming the reward
     * @param rewardsToken The address of the reward token
     * @param reward The amount of rewards claimed
     */
    event RewardPaid(
        address indexed user, address indexed rewardsToken, uint256 reward
    );

    /**
     * @notice Emitted when rewards are added to the contract
     * @param rewardsToken The address of the reward token
     * @param reward The amount of rewards added
     */
    event RewardAdded(address indexed rewardsToken, uint256 reward);

    /**
     * @notice Emitted when a reward is removed from the contract
     */
    event RewardRemoved(address indexed rewardsToken);

    /**
     * @notice Emitted when a rewards distributor is updaRewardAddedd
     * @param rewardsToken The address of the reward token
     * @param newDistributor The address of the new distributor
     */
    event RewardsDistributorUpdated(
        address indexed rewardsToken, address indexed newDistributor
    );

    /**
     * @notice Emitted when the rewards duration for a token is updated
     * @param token The reward token address whose duration was updated
     * @param newDuration The new duration set for the rewards period
     */
    event RewardsDurationUpdated(address token, uint256 newDuration);

    /**
     * @notice Emitted when tokens are recovered from the contract
     * @param token The address of the token that was recovered
     * @param amount The amount of tokens that were recovered
     */
    event Recovered(address token, uint256 amount);

    /**
     * @notice Emitted when new reward data is stored
     * @param rewardsToken The address of the reward token
     * @param rewardsDuration The duration set for the reward period
     */
    event RewardStored(address rewardsToken, uint256 rewardsDuration);

    /**
     * @notice Reward data for a particular reward token
     * @dev Struct containing all relevant information for reward distribution
     */
    struct Reward {
        address rewardsDistributor;
        uint256 rewardsDuration;
        uint256 periodFinish;
        uint256 rewardRate;
        uint256 lastUpdateTime;
        uint256 rewardPerTokenStored;
        uint256 rewardResidual;
    }

    /**
     * @notice Returns the total amount of staked tokens in the contract
     * @return uint256 The total supply of staked tokens
     */
    function totalSupply() external view returns (uint256);

    /**
     * @notice Stakes tokens into the contract
     * @param amount The amount of tokens to stake
     * @dev Transfers `amount` of staking tokens from the user to this contract
     */
    function stake(uint256 amount) external;

    /**
     * @notice Withdraws staked tokens from the contract
     * @param amount The amount of tokens to withdraw
     * @dev Transfers `amount` of staking tokens back to the user
     */
    function withdraw(uint256 amount) external;

    /**
     * @notice Claims all pending rewards for the caller
     * @dev Transfers all accrued rewards to the caller
     */
    function getReward() external;

    /**
     * @notice Withdraws all staked tokens and claims pending rewards
     * @dev Combines withdraw and getReward operations
     */
    function exit() external;

    /**
     * @notice Returns the balance of staked tokens for the given account
     * @param account The account to get the balance for
     * @return The balance of staked tokens
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @notice Calculates the last time reward is applicable for a given rewards token
     * @param _rewardsToken The address of the rewards token
     * @return The timestamp when the reward was last applicable
     */
    function lastTimeRewardApplicable(address _rewardsToken)
        external
        view
        returns (uint256);

    /**
     * @notice Calculates the reward per token for a given rewards token
     * @param _rewardsToken The address of the rewards token
     * @return The reward amount per token
     */
    function rewardPerToken(address _rewardsToken)
        external
        view
        returns (uint256);

    /**
     * @notice Calculates the earned rewards for a given account and rewards token
     * @param account The address of the account
     * @param _rewardsToken The address of the rewards token
     * @return The amount of rewards earned
     */
    function earned(address account, address _rewardsToken)
        external
        view
        returns (uint256);

    /**
     * @notice Calculates the total reward for the duration of a given rewards token
     * @param _rewardsToken The address of the rewards token
     * @return The total reward amount for the duration of a given rewards token
     */
    function getRewardForDuration(address _rewardsToken)
        external
        view
        returns (uint256);

    /**
     * @notice Gets the reward data for a given rewards token
     * @param _rewardsToken The address of the rewards token
     * @return rewardsDistributor The address authorized to distribute rewards
     * @return rewardsDuration The duration of the reward period
     * @return periodFinish The timestamp when rewards finish
     * @return rewardRate The rate of rewards distributed per second
     * @return lastUpdateTime The last time rewards were updated
     * @return rewardPerTokenStored The last calculated reward per token
     */
    function rewardData(address _rewardsToken)
        external
        view
        returns (
            address rewardsDistributor,
            uint256 rewardsDuration,
            uint256 periodFinish,
            uint256 rewardRate,
            uint256 lastUpdateTime,
            uint256 rewardPerTokenStored,
            uint256 rewardResidual
        );

    /**
     * @notice Returns the reward token address at a specific index
     * @param index The index in the reward tokens array
     * @return The address of the reward token at the given index
     */
    function rewardTokens(uint256 index) external view returns (address);

    /**
     * @notice Claims all pending rewards for a specified user
     * @dev Iterates through all reward tokens and transfers any accrued rewards to the user
     * @param _user The address of the user to claim rewards for
     */
    function getRewardForUser(address _user) external;
}

// lib/contracts/src/base/IStakingRewardsErrors.sol

/// @notice Interface of staking rewards errors
interface IStakingRewardsErrors {
    // Signature: 0xf4ba521f
    error InsolventReward();
    // Signature: 0xf1bc94d2
    error InsufficientStake();
    // Signature: 0x49835af0
    error RewardCycleNotEnded();
    // Signature: 0x5ce91fd0
    error StakeAmountIsZero();
    // Signature: 0xe5cfe957
    error TotalSupplyOverflow();
    // Signature: 0xa393d14b
    error WithdrawAmountIsZero();
    // Signature: 0x359f174d
    error RewardsDurationIsZero();
}

// src/voting/interfaces/IVoter.sol

/**
 * @title IVoter
 * @notice Interface for Infrared's voting system that manages votes for POL CuttingBoard allocation
 * and bribe vault creation
 * @dev Handles voting power allocation, managed veNFT deposits, and bribe distribution
 */
interface IVoter {
    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /* @notice Thrown when attempting to vote or deposit when already done in current epoch */
    error AlreadyVotedOrDeposited();
    /* @notice Thrown when attempting to kill an already killed bribe vault */
    error BribeVaultAlreadyKilled();
    /* @notice Thrown when attempting to revive an already active bribe vault */
    error BribeVaultAlreadyRevived();
    /* @notice Thrown when attempting to create a bribe vault that already exists */
    error BribeVaultExists();
    /* @notice Thrown when attempting to interact with a non-existent bribe vault */
    error BribeVaultDoesNotExist(address _stakingToken);
    /* @notice Thrown when attempting to interact with an inactive bribe vault */
    error BribeVaultNotAlive(address _stakingToken);
    /* @notice Thrown when attempting to interact with an inactive managed NFT */
    error InactiveManagedNFT();
    /* @notice Thrown when setting maximum voting number below required threshold */
    error MaximumVotingNumberTooLow();
    /* @notice Thrown when attempting to reset with active votes */
    error NonZeroVotes();
    /* @notice Thrown when token provided is not a valid staking token */
    error NotAStakingToken();
    /* @notice Thrown when caller is not approved or owner of the token */
    error NotApprovedOrOwner();
    /* @notice Thrown when NFT is not in whitelist */
    error NotWhitelistedNFT();
    /* @notice Thrown when token is not in whitelist */
    error NotWhitelistedToken();
    /* @notice Thrown when new value matches current value */
    error SameValue();
    /* @notice Thrown when operation attempted during privileged voting window */
    error SpecialVotingWindow();
    /* @notice Thrown when too many staking tokens provided */
    error TooManyStakingTokens();
    /* @notice Thrown when array lengths don't match */
    error UnequalLengths();
    /* @notice Thrown when balance is zero */
    error ZeroBalance();
    /* @notice Thrown when zero address provided */
    error ZeroAddress();
    /* @notice Thrown when vault is not registered */
    error VaultNotRegistered();
    /* @notice Thrown when caller is not governor */
    error NotGovernor();
    /* @notice Thrown when operation attempted during distribution window */
    error DistributeWindow();

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Emitted when a new bribe vault is created
     * @param stakingToken The staking token address for which the vault was created
     * @param bribeVault The address of the newly created bribe vault
     * @param creator The address that created the bribe vault
     */
    event BribeVaultCreated(
        address stakingToken, address bribeVault, address creator
    );

    /**
     * @notice Emitted when a bribe vault is killed (disabled)
     * @param bribeVault The address of the killed bribe vault
     */
    event BribeVaultKilled(address indexed bribeVault);

    /**
     * @notice Emitted when a killed bribe vault is revived (re-enabled)
     * @param bribeVault The address of the revived bribe vault
     */
    event BribeVaultRevived(address indexed bribeVault);

    /**
     * @notice Emitted when votes are cast for a staking token
     * @param voter Address of the account casting the vote
     * @param stakingToken The staking token being voted for
     * @param tokenId ID of the veNFT used to vote
     * @param weight Vote weight allocated
     * @param totalWeight New total vote weight for the staking token
     * @param timestamp Block timestamp when vote was cast
     */
    event Voted(
        address indexed voter,
        address indexed stakingToken,
        uint256 indexed tokenId,
        uint256 weight,
        uint256 totalWeight,
        uint256 timestamp
    );

    /**
     * @notice Emitted when votes are withdrawn/reset
     * @param voter Address of the account withdrawing votes
     * @param stakingToken The staking token votes are withdrawn from
     * @param tokenId ID of the veNFT used to vote
     * @param weight Vote weight withdrawn
     * @param totalWeight New total vote weight for the staking token
     * @param timestamp Block timestamp when votes were withdrawn
     */
    event Abstained(
        address indexed voter,
        address indexed stakingToken,
        uint256 indexed tokenId,
        uint256 weight,
        uint256 totalWeight,
        uint256 timestamp
    );

    /**
     * @notice Emitted when an NFT's whitelist status changes
     * @param whitelister Address making the whitelist change
     * @param tokenId ID of the NFT being whitelisted/unwhitelisted
     * @param _bool New whitelist status
     */
    event WhitelistNFT(
        address indexed whitelister, uint256 indexed tokenId, bool indexed _bool
    );

    /**
     * @notice Emitted when a killed bribe vault is skipped
     * @param stakingToken Address of staking token for vault to skip
     * @param tokenId ID of the veNFT used to vote
     */
    event SkipKilledBribeVault(
        address indexed stakingToken, uint256 indexed tokenId
    );

    /**
     * @notice Emitted when maximum voting number is set
     * @param maxVotingNum New maximum number of allowed votes
     */
    event MaxVotingNumSet(uint256 indexed maxVotingNum);

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the VotingEscrow contract address
     * @return Address of the VE token that governs these contracts
     */
    function ve() external view returns (address);

    /**
     * @notice Returns total voting weight across all votes
     * @return Total weight sum of all active votes
     */
    function totalWeight() external view returns (uint256);

    /**
     * @notice Returns maximum number of staking tokens one voter can vote for
     * @return Maximum number of allowed votes per voter
     */
    function maxVotingNum() external view returns (uint256);

    /**
     * @notice Returns global fee distribution vault address
     * @return Address of the fee vault
     */
    function feeVault() external view returns (address);

    /**
     * @notice Returns bribe vault address for a given staking token
     * @param stakingToken Address of staking token
     * @return Address of associated bribe vault
     */
    function bribeVaults(address stakingToken)
        external
        view
        returns (address);

    /**
     * @notice Returns total weight allocated to a staking token
     * @param stakingToken Address of staking token
     * @return Total voting weight for the token
     */
    function weights(address stakingToken) external view returns (uint256);

    /**
     * @notice Returns vote weight allocated by token ID for specific staking token
     * @param tokenId NFT token ID
     * @param stakingToken Address of staking token
     * @return Vote weight allocated
     */
    function votes(uint256 tokenId, address stakingToken)
        external
        view
        returns (uint256);

    /**
     * @notice Returns total vote weight used by specific token ID
     * @param tokenId NFT token ID
     * @return Total used voting weight
     */
    function usedWeights(uint256 tokenId) external view returns (uint256);

    /**
     * @notice Returns timestamp of last vote for a token ID
     * @param tokenId NFT token ID
     * @return Timestamp of last vote
     */
    function lastVoted(uint256 tokenId) external view returns (uint256);

    /**
     * @notice Checks if a token is whitelisted for rewards
     * @param token Address of token to check
     * @return True if token is whitelisted
     */
    function isWhitelistedToken(address token) external view returns (bool);

    /**
     * @notice Checks if NFT is whitelisted for special voting
     * @param tokenId NFT token ID to check
     * @return True if NFT is whitelisted
     */
    function isWhitelistedNFT(uint256 tokenId) external view returns (bool);

    /**
     * @notice Checks if bribe vault is active
     * @param bribeVault Address of bribe vault to check
     * @return True if vault is active
     */
    function isAlive(address bribeVault) external view returns (bool);

    /**
     * @notice Returns number of staking tokens with active bribe vaults
     * @return Count of staking tokens with bribe vaults
     */
    function length() external view returns (uint256);

    /*//////////////////////////////////////////////////////////////
                        TIME HELPER FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Calculates start of epoch containing timestamp
     * @param _timestamp Input timestamp
     * @return Start of epoch time
     */
    function epochStart(uint256 _timestamp) external pure returns (uint256);

    /**
     * @notice Calculates start of next epoch after timestamp
     * @param _timestamp Input timestamp
     * @return Start of next epoch time
     */
    function epochNext(uint256 _timestamp) external pure returns (uint256);

    /**
     * @notice Calculates start of voting window for epoch containing timestamp
     * @param _timestamp Input timestamp
     * @return Vote window start time
     */
    function epochVoteStart(uint256 _timestamp)
        external
        pure
        returns (uint256);

    /**
     * @notice Calculates end of voting window for epoch containing timestamp
     * @param _timestamp Input timestamp
     * @return Vote window end time
     */
    function epochVoteEnd(uint256 _timestamp) external pure returns (uint256);

    /*//////////////////////////////////////////////////////////////
                        EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Updates voting balances in rewards contracts for a token ID
     * @dev Should be called after any action that affects vote weight
     * @param _tokenId veNFT token ID to update
     */
    function poke(uint256 _tokenId) external;

    /**
     * @notice Distributes voting weight to multiple staking tokens
     * @dev Weight is allocated proportionally based on provided weights
     * @param _tokenId veNFT token ID voting with
     * @param _stakingTokenVote Array of staking token addresses receiving votes
     * @param _weights Array of weights to allocate to each token
     */
    function vote(
        uint256 _tokenId,
        address[] calldata _stakingTokenVote,
        uint256[] calldata _weights
    ) external;

    /**
     * @notice Resets voting state for a token ID
     * @dev Required before making changes to veNFT state
     * @param _tokenId veNFT token ID to reset
     */
    function reset(uint256 _tokenId) external;

    /**
     * @notice Deposits veNFT into a managed NFT
     * @dev NFT will be re-locked to max time on withdrawal
     * @param _tokenId veNFT token ID to deposit
     * @param _mTokenId Managed NFT token ID to deposit into
     */
    function depositManaged(uint256 _tokenId, uint256 _mTokenId) external;

    /**
     * @notice Withdraws veNFT from a managed NFT
     * @dev Withdrawing locks NFT to max lock time
     * @param _tokenId veNFT token ID to withdraw
     */
    function withdrawManaged(uint256 _tokenId) external;

    /**
     * @notice Claims bribes from multiple sources for a veNFT
     * @param _bribes Array of bribe vault addresses to claim from
     * @param _tokens Array of reward tokens to claim for each vault
     * @param _tokenId veNFT token ID to claim for
     */
    function claimBribes(
        address[] memory _bribes,
        address[][] memory _tokens,
        uint256 _tokenId
    ) external;

    /**
     * @notice Claims fee rewards for a veNFT
     * @param _tokens Array of fee tokens to claim
     * @param _tokenId veNFT token ID to claim for
     */
    function claimFees(address[] memory _tokens, uint256 _tokenId) external;

    /**
     * @notice Updates maximum allowed votes per voter
     * @param _maxVotingNum New maximum number of allowed votes
     */
    function setMaxVotingNum(uint256 _maxVotingNum) external;

    /**
     * @notice Updates whitelist status for veNFT for privileged voting
     * @param _tokenId veNFT token ID to update
     * @param _bool New whitelist status
     */
    function whitelistNFT(uint256 _tokenId, bool _bool) external;

    /**
     * @notice Creates new bribe vault for staking token
     * @param _stakingToken Address of staking token
     * @param _rewardTokens Array of reward token addresses
     * @return Address of created bribe vault
     */
    function createBribeVault(
        address _stakingToken,
        address[] calldata _rewardTokens
    ) external returns (address);

    /**
     * @notice Disables a bribe vault
     * @param _stakingToken Address of staking token for vault to disable
     */
    function killBribeVault(address _stakingToken) external;

    /**
     * @notice Re-enables a disabled bribe vault
     * @param _stakingToken Address of staking token for vault to re-enable
     */
    function reviveBribeVault(address _stakingToken) external;
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Panic.sol

// OpenZeppelin Contracts (last updated v5.1.0) (utils/Panic.sol)

/**
 * @dev Helper library for emitting standardized panic codes.
 *
 * ```solidity
 * contract Example {
 *      using Panic for uint256;
 *
 *      // Use any of the declared internal constants
 *      function foo() { Panic.GENERIC.panic(); }
 *
 *      // Alternatively
 *      function foo() { Panic.panic(Panic.GENERIC); }
 * }
 * ```
 *
 * Follows the list from https://github.com/ethereum/solidity/blob/v0.8.24/libsolutil/ErrorCodes.h[libsolutil].
 *
 * _Available since v5.1._
 */
// slither-disable-next-line unused-state
library Panic {
    /// @dev generic / unspecified error
    uint256 internal constant GENERIC = 0x00;
    /// @dev used by the assert() builtin
    uint256 internal constant ASSERT = 0x01;
    /// @dev arithmetic underflow or overflow
    uint256 internal constant UNDER_OVERFLOW = 0x11;
    /// @dev division or modulo by zero
    uint256 internal constant DIVISION_BY_ZERO = 0x12;
    /// @dev enum conversion error
    uint256 internal constant ENUM_CONVERSION_ERROR = 0x21;
    /// @dev invalid encoding in storage
    uint256 internal constant STORAGE_ENCODING_ERROR = 0x22;
    /// @dev empty array pop
    uint256 internal constant EMPTY_ARRAY_POP = 0x31;
    /// @dev array out of bounds access
    uint256 internal constant ARRAY_OUT_OF_BOUNDS = 0x32;
    /// @dev resource error (too large allocation or too large array)
    uint256 internal constant RESOURCE_ERROR = 0x41;
    /// @dev calling invalid internal function
    uint256 internal constant INVALID_INTERNAL_FUNCTION = 0x51;

    /// @dev Reverts with a panic code. Recommended to use with
    /// the internal constants with predefined codes.
    function panic(uint256 code) internal pure {
        assembly ("memory-safe") {
            mstore(0x00, 0x4e487b71)
            mstore(0x20, code)
            revert(0x1c, 0x24)
        }
    }
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol

// OpenZeppelin Contracts (last updated v5.1.0) (utils/ReentrancyGuard.sol)

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If EIP-1153 (transient storage) is available on the chain you're deploying at,
 * consider using {ReentrancyGuardTransient} instead.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant NOT_ENTERED = 1;
    uint256 private constant ENTERED = 2;

    uint256 private _status;

    /**
     * @dev Unauthorized reentrant call.
     */
    error ReentrancyGuardReentrantCall();

    constructor() {
        _status = NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be NOT_ENTERED
        if (_status == ENTERED) {
            revert ReentrancyGuardReentrantCall();
        }

        // Any calls to nonReentrant after this point will fail
        _status = ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == ENTERED;
    }
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol

// OpenZeppelin Contracts (last updated v5.1.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

/**
 * @dev Wrappers over Solidity's uintXX/intXX/bool casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeCast {
    /**
     * @dev Value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedUintDowncast(uint8 bits, uint256 value);

    /**
     * @dev An int value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedIntToUint(int256 value);

    /**
     * @dev Value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedIntDowncast(uint8 bits, int256 value);

    /**
     * @dev An uint value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedUintToInt(uint256 value);

    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        if (value > type(uint248).max) {
            revert SafeCastOverflowedUintDowncast(248, value);
        }
        return uint248(value);
    }

    /**
     * @dev Returns the downcasted uint240 from uint256, reverting on
     * overflow (when the input is greater than largest uint240).
     *
     * Counterpart to Solidity's `uint240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        if (value > type(uint240).max) {
            revert SafeCastOverflowedUintDowncast(240, value);
        }
        return uint240(value);
    }

    /**
     * @dev Returns the downcasted uint232 from uint256, reverting on
     * overflow (when the input is greater than largest uint232).
     *
     * Counterpart to Solidity's `uint232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        if (value > type(uint232).max) {
            revert SafeCastOverflowedUintDowncast(232, value);
        }
        return uint232(value);
    }

    /**
     * @dev Returns the downcasted uint224 from uint256, reverting on
     * overflow (when the input is greater than largest uint224).
     *
     * Counterpart to Solidity's `uint224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        if (value > type(uint224).max) {
            revert SafeCastOverflowedUintDowncast(224, value);
        }
        return uint224(value);
    }

    /**
     * @dev Returns the downcasted uint216 from uint256, reverting on
     * overflow (when the input is greater than largest uint216).
     *
     * Counterpart to Solidity's `uint216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        if (value > type(uint216).max) {
            revert SafeCastOverflowedUintDowncast(216, value);
        }
        return uint216(value);
    }

    /**
     * @dev Returns the downcasted uint208 from uint256, reverting on
     * overflow (when the input is greater than largest uint208).
     *
     * Counterpart to Solidity's `uint208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        if (value > type(uint208).max) {
            revert SafeCastOverflowedUintDowncast(208, value);
        }
        return uint208(value);
    }

    /**
     * @dev Returns the downcasted uint200 from uint256, reverting on
     * overflow (when the input is greater than largest uint200).
     *
     * Counterpart to Solidity's `uint200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        if (value > type(uint200).max) {
            revert SafeCastOverflowedUintDowncast(200, value);
        }
        return uint200(value);
    }

    /**
     * @dev Returns the downcasted uint192 from uint256, reverting on
     * overflow (when the input is greater than largest uint192).
     *
     * Counterpart to Solidity's `uint192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        if (value > type(uint192).max) {
            revert SafeCastOverflowedUintDowncast(192, value);
        }
        return uint192(value);
    }

    /**
     * @dev Returns the downcasted uint184 from uint256, reverting on
     * overflow (when the input is greater than largest uint184).
     *
     * Counterpart to Solidity's `uint184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        if (value > type(uint184).max) {
            revert SafeCastOverflowedUintDowncast(184, value);
        }
        return uint184(value);
    }

    /**
     * @dev Returns the downcasted uint176 from uint256, reverting on
     * overflow (when the input is greater than largest uint176).
     *
     * Counterpart to Solidity's `uint176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        if (value > type(uint176).max) {
            revert SafeCastOverflowedUintDowncast(176, value);
        }
        return uint176(value);
    }

    /**
     * @dev Returns the downcasted uint168 from uint256, reverting on
     * overflow (when the input is greater than largest uint168).
     *
     * Counterpart to Solidity's `uint168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        if (value > type(uint168).max) {
            revert SafeCastOverflowedUintDowncast(168, value);
        }
        return uint168(value);
    }

    /**
     * @dev Returns the downcasted uint160 from uint256, reverting on
     * overflow (when the input is greater than largest uint160).
     *
     * Counterpart to Solidity's `uint160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        if (value > type(uint160).max) {
            revert SafeCastOverflowedUintDowncast(160, value);
        }
        return uint160(value);
    }

    /**
     * @dev Returns the downcasted uint152 from uint256, reverting on
     * overflow (when the input is greater than largest uint152).
     *
     * Counterpart to Solidity's `uint152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        if (value > type(uint152).max) {
            revert SafeCastOverflowedUintDowncast(152, value);
        }
        return uint152(value);
    }

    /**
     * @dev Returns the downcasted uint144 from uint256, reverting on
     * overflow (when the input is greater than largest uint144).
     *
     * Counterpart to Solidity's `uint144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        if (value > type(uint144).max) {
            revert SafeCastOverflowedUintDowncast(144, value);
        }
        return uint144(value);
    }

    /**
     * @dev Returns the downcasted uint136 from uint256, reverting on
     * overflow (when the input is greater than largest uint136).
     *
     * Counterpart to Solidity's `uint136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        if (value > type(uint136).max) {
            revert SafeCastOverflowedUintDowncast(136, value);
        }
        return uint136(value);
    }

    /**
     * @dev Returns the downcasted uint128 from uint256, reverting on
     * overflow (when the input is greater than largest uint128).
     *
     * Counterpart to Solidity's `uint128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        if (value > type(uint128).max) {
            revert SafeCastOverflowedUintDowncast(128, value);
        }
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint120 from uint256, reverting on
     * overflow (when the input is greater than largest uint120).
     *
     * Counterpart to Solidity's `uint120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        if (value > type(uint120).max) {
            revert SafeCastOverflowedUintDowncast(120, value);
        }
        return uint120(value);
    }

    /**
     * @dev Returns the downcasted uint112 from uint256, reverting on
     * overflow (when the input is greater than largest uint112).
     *
     * Counterpart to Solidity's `uint112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        if (value > type(uint112).max) {
            revert SafeCastOverflowedUintDowncast(112, value);
        }
        return uint112(value);
    }

    /**
     * @dev Returns the downcasted uint104 from uint256, reverting on
     * overflow (when the input is greater than largest uint104).
     *
     * Counterpart to Solidity's `uint104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        if (value > type(uint104).max) {
            revert SafeCastOverflowedUintDowncast(104, value);
        }
        return uint104(value);
    }

    /**
     * @dev Returns the downcasted uint96 from uint256, reverting on
     * overflow (when the input is greater than largest uint96).
     *
     * Counterpart to Solidity's `uint96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        if (value > type(uint96).max) {
            revert SafeCastOverflowedUintDowncast(96, value);
        }
        return uint96(value);
    }

    /**
     * @dev Returns the downcasted uint88 from uint256, reverting on
     * overflow (when the input is greater than largest uint88).
     *
     * Counterpart to Solidity's `uint88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        if (value > type(uint88).max) {
            revert SafeCastOverflowedUintDowncast(88, value);
        }
        return uint88(value);
    }

    /**
     * @dev Returns the downcasted uint80 from uint256, reverting on
     * overflow (when the input is greater than largest uint80).
     *
     * Counterpart to Solidity's `uint80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        if (value > type(uint80).max) {
            revert SafeCastOverflowedUintDowncast(80, value);
        }
        return uint80(value);
    }

    /**
     * @dev Returns the downcasted uint72 from uint256, reverting on
     * overflow (when the input is greater than largest uint72).
     *
     * Counterpart to Solidity's `uint72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        if (value > type(uint72).max) {
            revert SafeCastOverflowedUintDowncast(72, value);
        }
        return uint72(value);
    }

    /**
     * @dev Returns the downcasted uint64 from uint256, reverting on
     * overflow (when the input is greater than largest uint64).
     *
     * Counterpart to Solidity's `uint64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        if (value > type(uint64).max) {
            revert SafeCastOverflowedUintDowncast(64, value);
        }
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint56 from uint256, reverting on
     * overflow (when the input is greater than largest uint56).
     *
     * Counterpart to Solidity's `uint56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        if (value > type(uint56).max) {
            revert SafeCastOverflowedUintDowncast(56, value);
        }
        return uint56(value);
    }

    /**
     * @dev Returns the downcasted uint48 from uint256, reverting on
     * overflow (when the input is greater than largest uint48).
     *
     * Counterpart to Solidity's `uint48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        if (value > type(uint48).max) {
            revert SafeCastOverflowedUintDowncast(48, value);
        }
        return uint48(value);
    }

    /**
     * @dev Returns the downcasted uint40 from uint256, reverting on
     * overflow (when the input is greater than largest uint40).
     *
     * Counterpart to Solidity's `uint40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        if (value > type(uint40).max) {
            revert SafeCastOverflowedUintDowncast(40, value);
        }
        return uint40(value);
    }

    /**
     * @dev Returns the downcasted uint32 from uint256, reverting on
     * overflow (when the input is greater than largest uint32).
     *
     * Counterpart to Solidity's `uint32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        if (value > type(uint32).max) {
            revert SafeCastOverflowedUintDowncast(32, value);
        }
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint24 from uint256, reverting on
     * overflow (when the input is greater than largest uint24).
     *
     * Counterpart to Solidity's `uint24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        if (value > type(uint24).max) {
            revert SafeCastOverflowedUintDowncast(24, value);
        }
        return uint24(value);
    }

    /**
     * @dev Returns the downcasted uint16 from uint256, reverting on
     * overflow (when the input is greater than largest uint16).
     *
     * Counterpart to Solidity's `uint16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        if (value > type(uint16).max) {
            revert SafeCastOverflowedUintDowncast(16, value);
        }
        return uint16(value);
    }

    /**
     * @dev Returns the downcasted uint8 from uint256, reverting on
     * overflow (when the input is greater than largest uint8).
     *
     * Counterpart to Solidity's `uint8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        if (value > type(uint8).max) {
            revert SafeCastOverflowedUintDowncast(8, value);
        }
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        if (value < 0) {
            revert SafeCastOverflowedIntToUint(value);
        }
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int248 from int256, reverting on
     * overflow (when the input is less than smallest int248 or
     * greater than largest int248).
     *
     * Counterpart to Solidity's `int248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(248, value);
        }
    }

    /**
     * @dev Returns the downcasted int240 from int256, reverting on
     * overflow (when the input is less than smallest int240 or
     * greater than largest int240).
     *
     * Counterpart to Solidity's `int240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(240, value);
        }
    }

    /**
     * @dev Returns the downcasted int232 from int256, reverting on
     * overflow (when the input is less than smallest int232 or
     * greater than largest int232).
     *
     * Counterpart to Solidity's `int232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(232, value);
        }
    }

    /**
     * @dev Returns the downcasted int224 from int256, reverting on
     * overflow (when the input is less than smallest int224 or
     * greater than largest int224).
     *
     * Counterpart to Solidity's `int224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(224, value);
        }
    }

    /**
     * @dev Returns the downcasted int216 from int256, reverting on
     * overflow (when the input is less than smallest int216 or
     * greater than largest int216).
     *
     * Counterpart to Solidity's `int216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(216, value);
        }
    }

    /**
     * @dev Returns the downcasted int208 from int256, reverting on
     * overflow (when the input is less than smallest int208 or
     * greater than largest int208).
     *
     * Counterpart to Solidity's `int208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(208, value);
        }
    }

    /**
     * @dev Returns the downcasted int200 from int256, reverting on
     * overflow (when the input is less than smallest int200 or
     * greater than largest int200).
     *
     * Counterpart to Solidity's `int200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(200, value);
        }
    }

    /**
     * @dev Returns the downcasted int192 from int256, reverting on
     * overflow (when the input is less than smallest int192 or
     * greater than largest int192).
     *
     * Counterpart to Solidity's `int192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(192, value);
        }
    }

    /**
     * @dev Returns the downcasted int184 from int256, reverting on
     * overflow (when the input is less than smallest int184 or
     * greater than largest int184).
     *
     * Counterpart to Solidity's `int184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(184, value);
        }
    }

    /**
     * @dev Returns the downcasted int176 from int256, reverting on
     * overflow (when the input is less than smallest int176 or
     * greater than largest int176).
     *
     * Counterpart to Solidity's `int176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(176, value);
        }
    }

    /**
     * @dev Returns the downcasted int168 from int256, reverting on
     * overflow (when the input is less than smallest int168 or
     * greater than largest int168).
     *
     * Counterpart to Solidity's `int168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(168, value);
        }
    }

    /**
     * @dev Returns the downcasted int160 from int256, reverting on
     * overflow (when the input is less than smallest int160 or
     * greater than largest int160).
     *
     * Counterpart to Solidity's `int160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(160, value);
        }
    }

    /**
     * @dev Returns the downcasted int152 from int256, reverting on
     * overflow (when the input is less than smallest int152 or
     * greater than largest int152).
     *
     * Counterpart to Solidity's `int152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(152, value);
        }
    }

    /**
     * @dev Returns the downcasted int144 from int256, reverting on
     * overflow (when the input is less than smallest int144 or
     * greater than largest int144).
     *
     * Counterpart to Solidity's `int144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(144, value);
        }
    }

    /**
     * @dev Returns the downcasted int136 from int256, reverting on
     * overflow (when the input is less than smallest int136 or
     * greater than largest int136).
     *
     * Counterpart to Solidity's `int136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(136, value);
        }
    }

    /**
     * @dev Returns the downcasted int128 from int256, reverting on
     * overflow (when the input is less than smallest int128 or
     * greater than largest int128).
     *
     * Counterpart to Solidity's `int128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(128, value);
        }
    }

    /**
     * @dev Returns the downcasted int120 from int256, reverting on
     * overflow (when the input is less than smallest int120 or
     * greater than largest int120).
     *
     * Counterpart to Solidity's `int120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(120, value);
        }
    }

    /**
     * @dev Returns the downcasted int112 from int256, reverting on
     * overflow (when the input is less than smallest int112 or
     * greater than largest int112).
     *
     * Counterpart to Solidity's `int112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(112, value);
        }
    }

    /**
     * @dev Returns the downcasted int104 from int256, reverting on
     * overflow (when the input is less than smallest int104 or
     * greater than largest int104).
     *
     * Counterpart to Solidity's `int104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(104, value);
        }
    }

    /**
     * @dev Returns the downcasted int96 from int256, reverting on
     * overflow (when the input is less than smallest int96 or
     * greater than largest int96).
     *
     * Counterpart to Solidity's `int96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(96, value);
        }
    }

    /**
     * @dev Returns the downcasted int88 from int256, reverting on
     * overflow (when the input is less than smallest int88 or
     * greater than largest int88).
     *
     * Counterpart to Solidity's `int88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(88, value);
        }
    }

    /**
     * @dev Returns the downcasted int80 from int256, reverting on
     * overflow (when the input is less than smallest int80 or
     * greater than largest int80).
     *
     * Counterpart to Solidity's `int80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(80, value);
        }
    }

    /**
     * @dev Returns the downcasted int72 from int256, reverting on
     * overflow (when the input is less than smallest int72 or
     * greater than largest int72).
     *
     * Counterpart to Solidity's `int72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(72, value);
        }
    }

    /**
     * @dev Returns the downcasted int64 from int256, reverting on
     * overflow (when the input is less than smallest int64 or
     * greater than largest int64).
     *
     * Counterpart to Solidity's `int64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(64, value);
        }
    }

    /**
     * @dev Returns the downcasted int56 from int256, reverting on
     * overflow (when the input is less than smallest int56 or
     * greater than largest int56).
     *
     * Counterpart to Solidity's `int56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(56, value);
        }
    }

    /**
     * @dev Returns the downcasted int48 from int256, reverting on
     * overflow (when the input is less than smallest int48 or
     * greater than largest int48).
     *
     * Counterpart to Solidity's `int48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(48, value);
        }
    }

    /**
     * @dev Returns the downcasted int40 from int256, reverting on
     * overflow (when the input is less than smallest int40 or
     * greater than largest int40).
     *
     * Counterpart to Solidity's `int40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(40, value);
        }
    }

    /**
     * @dev Returns the downcasted int32 from int256, reverting on
     * overflow (when the input is less than smallest int32 or
     * greater than largest int32).
     *
     * Counterpart to Solidity's `int32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(32, value);
        }
    }

    /**
     * @dev Returns the downcasted int24 from int256, reverting on
     * overflow (when the input is less than smallest int24 or
     * greater than largest int24).
     *
     * Counterpart to Solidity's `int24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(24, value);
        }
    }

    /**
     * @dev Returns the downcasted int16 from int256, reverting on
     * overflow (when the input is less than smallest int16 or
     * greater than largest int16).
     *
     * Counterpart to Solidity's `int16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(16, value);
        }
    }

    /**
     * @dev Returns the downcasted int8 from int256, reverting on
     * overflow (when the input is less than smallest int8 or
     * greater than largest int8).
     *
     * Counterpart to Solidity's `int8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(8, value);
        }
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        if (value > uint256(type(int256).max)) {
            revert SafeCastOverflowedUintToInt(value);
        }
        return int256(value);
    }

    /**
     * @dev Cast a boolean (false or true) to a uint256 (0 or 1) with no jump.
     */
    function toUint(bool b) internal pure returns (uint256 u) {
        assembly ("memory-safe") {
            u := iszero(iszero(b))
        }
    }
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/SlotDerivation.sol

// OpenZeppelin Contracts (last updated v5.3.0) (utils/SlotDerivation.sol)
// This file was procedurally generated from scripts/generate/templates/SlotDerivation.js.

/**
 * @dev Library for computing storage (and transient storage) locations from namespaces and deriving slots
 * corresponding to standard patterns. The derivation method for array and mapping matches the storage layout used by
 * the solidity language / compiler.
 *
 * See https://docs.soliditylang.org/en/v0.8.20/internals/layout_in_storage.html#mappings-and-dynamic-arrays[Solidity docs for mappings and dynamic arrays.].
 *
 * Example usage:
 * ```solidity
 * contract Example {
 *     // Add the library methods
 *     using StorageSlot for bytes32;
 *     using SlotDerivation for bytes32;
 *
 *     // Declare a namespace
 *     string private constant _NAMESPACE = "<namespace>"; // eg. OpenZeppelin.Slot
 *
 *     function setValueInNamespace(uint256 key, address newValue) internal {
 *         _NAMESPACE.erc7201Slot().deriveMapping(key).getAddressSlot().value = newValue;
 *     }
 *
 *     function getValueInNamespace(uint256 key) internal view returns (address) {
 *         return _NAMESPACE.erc7201Slot().deriveMapping(key).getAddressSlot().value;
 *     }
 * }
 * ```
 *
 * TIP: Consider using this library along with {StorageSlot}.
 *
 * NOTE: This library provides a way to manipulate storage locations in a non-standard way. Tooling for checking
 * upgrade safety will ignore the slots accessed through this library.
 *
 * _Available since v5.1._
 */
library SlotDerivation {
    /**
     * @dev Derive an ERC-7201 slot from a string (namespace).
     */
    function erc7201Slot(string memory namespace) internal pure returns (bytes32 slot) {
        assembly ("memory-safe") {
            mstore(0x00, sub(keccak256(add(namespace, 0x20), mload(namespace)), 1))
            slot := and(keccak256(0x00, 0x20), not(0xff))
        }
    }

    /**
     * @dev Add an offset to a slot to get the n-th element of a structure or an array.
     */
    function offset(bytes32 slot, uint256 pos) internal pure returns (bytes32 result) {
        unchecked {
            return bytes32(uint256(slot) + pos);
        }
    }

    /**
     * @dev Derive the location of the first element in an array from the slot where the length is stored.
     */
    function deriveArray(bytes32 slot) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            mstore(0x00, slot)
            result := keccak256(0x00, 0x20)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, address key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            mstore(0x00, and(key, shr(96, not(0))))
            mstore(0x20, slot)
            result := keccak256(0x00, 0x40)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, bool key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            mstore(0x00, iszero(iszero(key)))
            mstore(0x20, slot)
            result := keccak256(0x00, 0x40)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, bytes32 key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            mstore(0x00, key)
            mstore(0x20, slot)
            result := keccak256(0x00, 0x40)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, uint256 key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            mstore(0x00, key)
            mstore(0x20, slot)
            result := keccak256(0x00, 0x40)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, int256 key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            mstore(0x00, key)
            mstore(0x20, slot)
            result := keccak256(0x00, 0x40)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, string memory key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            let length := mload(key)
            let begin := add(key, 0x20)
            let end := add(begin, length)
            let cache := mload(end)
            mstore(end, slot)
            result := keccak256(begin, add(length, 0x20))
            mstore(end, cache)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, bytes memory key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            let length := mload(key)
            let begin := add(key, 0x20)
            let end := add(begin, length)
            let cache := mload(end)
            mstore(end, slot)
            result := keccak256(begin, add(length, 0x20))
            mstore(end, cache)
        }
    }
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/StorageSlot.sol

// OpenZeppelin Contracts (last updated v5.1.0) (utils/StorageSlot.sol)
// This file was procedurally generated from scripts/generate/templates/StorageSlot.js.

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC-1967 implementation slot:
 * ```solidity
 * contract ERC1967 {
 *     // Define the slot. Alternatively, use the SlotDerivation library to derive the slot.
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(newImplementation.code.length > 0);
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 *
 * TIP: Consider using this library along with {SlotDerivation}.
 */
library StorageSlot {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    struct Int256Slot {
        int256 value;
    }

    struct StringSlot {
        string value;
    }

    struct BytesSlot {
        bytes value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `Int256Slot` with member `value` located at `slot`.
     */
    function getInt256Slot(bytes32 slot) internal pure returns (Int256Slot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `StringSlot` with member `value` located at `slot`.
     */
    function getStringSlot(bytes32 slot) internal pure returns (StringSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` representation of the string storage pointer `store`.
     */
    function getStringSlot(string storage store) internal pure returns (StringSlot storage r) {
        assembly ("memory-safe") {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns a `BytesSlot` with member `value` located at `slot`.
     */
    function getBytesSlot(bytes32 slot) internal pure returns (BytesSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` representation of the bytes storage pointer `store`.
     */
    function getBytesSlot(bytes storage store) internal pure returns (BytesSlot storage r) {
        assembly ("memory-safe") {
            r.slot := store.slot
        }
    }
}

// src/core/libraries/ValidatorTypes.sol

library ValidatorTypes {
    /// @notice Validator information for validator set
    struct Validator {
        /// pubkey of the validator for beacon deposit contract
        bytes pubkey;
        /// address of the validator for claiming infrared rewards
        address addr;
    }
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/interfaces/draft-IERC6093.sol

// OpenZeppelin Contracts (last updated v5.1.0) (interfaces/draft-IERC6093.sol)

/**
 * @dev Standard ERC-20 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-20 tokens.
 */
interface IERC20Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC20InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC20InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `spender`’s `allowance`. Used in transfers.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     * @param allowance Amount of tokens a `spender` is allowed to operate with.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC20InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `spender` to be approved. Used in approvals.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC20InvalidSpender(address spender);
}

/**
 * @dev Standard ERC-721 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-721 tokens.
 */
interface IERC721Errors {
    /**
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in ERC-20.
     * Used in balance queries.
     * @param owner Address of the current owner of a token.
     */
    error ERC721InvalidOwner(address owner);

    /**
     * @dev Indicates a `tokenId` whose `owner` is the zero address.
     * @param tokenId Identifier number of a token.
     */
    error ERC721NonexistentToken(uint256 tokenId);

    /**
     * @dev Indicates an error related to the ownership over a particular token. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param tokenId Identifier number of a token.
     * @param owner Address of the current owner of a token.
     */
    error ERC721IncorrectOwner(address sender, uint256 tokenId, address owner);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC721InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC721InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param tokenId Identifier number of a token.
     */
    error ERC721InsufficientApproval(address operator, uint256 tokenId);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC721InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC721InvalidOperator(address operator);
}

/**
 * @dev Standard ERC-1155 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-1155 tokens.
 */
interface IERC1155Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     * @param tokenId Identifier number of a token.
     */
    error ERC1155InsufficientBalance(address sender, uint256 balance, uint256 needed, uint256 tokenId);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC1155InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC1155InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param owner Address of the current owner of a token.
     */
    error ERC1155MissingApprovalForAll(address operator, address owner);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC1155InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC1155InvalidOperator(address operator);

    /**
     * @dev Indicates an array length mismatch between ids and values in a safeBatchTransferFrom operation.
     * Used in batch transfers.
     * @param idsLength Length of the array of token identifiers
     * @param valuesLength Length of the array of token amounts
     */
    error ERC1155InvalidArrayLength(uint256 idsLength, uint256 valuesLength);
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/introspection/ERC165.sol

// OpenZeppelin Contracts (last updated v5.1.0) (utils/introspection/ERC165.sol)

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC-165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 */
abstract contract ERC165 is IERC165 {
    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/access/extensions/IAccessControlEnumerable.sol

// OpenZeppelin Contracts (last updated v5.1.0) (access/extensions/IAccessControlEnumerable.sol)

/**
 * @dev External interface of AccessControlEnumerable declared to support ERC-165 detection.
 */
interface IAccessControlEnumerable is IAccessControl {
    /**
     * @dev Returns one of the accounts that have `role`. `index` must be a
     * value between 0 and {getRoleMemberCount}, non-inclusive.
     *
     * Role bearers are not sorted in any particular way, and their ordering may
     * change at any point.
     *
     * WARNING: When using {getRoleMember} and {getRoleMemberCount}, make sure
     * you perform all queries on the same block. See the following
     * https://forum.openzeppelin.com/t/iterating-over-elements-on-enumerableset-in-openzeppelin-contracts/2296[forum post]
     * for more information.
     */
    function getRoleMember(bytes32 role, uint256 index) external view returns (address);

    /**
     * @dev Returns the number of accounts that have `role`. Can be used
     * together with {getRoleMember} to enumerate all bearers of a role.
     */
    function getRoleMemberCount(bytes32 role) external view returns (uint256);
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol

// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/extensions/IERC20Metadata.sol)

/**
 * @dev Interface for the optional metadata functions from the ERC-20 standard.
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// src/interfaces/IERC20Mintable.sol

interface IERC20Mintable is IERC20 {
    function MINTER_ROLE() external view returns (bytes32);

    function mint(address to, uint256 amount) external;
}

// src/interfaces/IInfraredDistributor.sol

/**
 * @title Infrared Distributor Interface
 * @notice Interface for distributing validator commissions and rewards
 * @dev Handles reward distribution snapshots and claiming logic for validators
 */
interface IInfraredDistributor {
    /**
     * @notice Emitted when validator is added to commission-eligible set
     * @param pubkey Validator's public key
     * @param operator Address authorized to claim rewards
     * @param amountCumulative Starting point for commission stream
     */
    event Added(bytes pubkey, address operator, uint256 amountCumulative);

    /**
     * @notice Emitted when validator is removed from commission-eligible set
     * @param pubkey Validator's public key
     * @param operator Address previously authorized for claims
     * @param amountCumulative Final point for commission stream
     */
    event Removed(bytes pubkey, address operator, uint256 amountCumulative);

    /**
     * @notice Emitted when validator is fully purged from registry
     * @param pubkey Validator's public key
     * @param validator Address being purged
     */
    event Purged(bytes pubkey, address validator);

    /**
     * @notice Emitted when new commission rewards are added
     * @param amount New rewards being distributed
     * @param num Current number of eligible validators
     */
    event Notified(uint256 amount, uint256 num);

    /**
     * @notice Emitted when validator claims their commission
     * @param pubkey Claiming validator's public key
     * @param validator Address authorized for claims
     * @param recipient Address receiving the commission
     * @param amount Amount of commission claimed
     */
    event Claimed(
        bytes pubkey, address validator, address recipient, uint256 amount
    );

    /**
     * @notice Reward accumulation checkpoints for validators
     * @dev Used to calculate claimable rewards between snapshots
     */
    struct Snapshot {
        /**
         * @notice Last claimed reward accumulator value
         */
        uint256 amountCumulativeLast;
        /**
         * @notice Final reward accumulator value (set on removal)
         */
        uint256 amountCumulativeFinal;
    }

    /**
     * @notice Token used for reward distributions
     * @return The ERC20 token interface of the reward token
     */
    function token() external view returns (ERC20_0);

    /**
     * @notice Tracks reward amount accumulation per validator
     * @return Current cumulative amount of rewards
     */
    function amountsCumulative() external view returns (uint256);

    /**
     * @notice Get validator's reward snapshots
     * @param pubkey Validator's public key
     * @return amountCumulativeLast Last claimed accumulator value
     * @return amountCumulativeFinal Final accumulator value if removed
     * @dev Returns (0,0) if validator doesn't exist
     */
    function getSnapshot(bytes calldata pubkey)
        external
        view
        returns (uint256 amountCumulativeLast, uint256 amountCumulativeFinal);

    /**
     * @notice Get validator's registered claim address
     * @param pubkey Validator's public key
     * @return Address authorized to claim validator rewards
     */
    function getValidator(bytes calldata pubkey)
        external
        view
        returns (address);

    /**
     * @notice Register new validator for rewards
     * @dev Only callable by Infrared contract
     * @param pubkey Validator's public key
     * @param validator Address authorized to claim rewards
     * @custom:access-control Requires INFRARED_ROLE
     * @custom:error ValidatorAlreadyExists if validator already registered
     */
    function add(bytes calldata pubkey, address validator) external;

    /**
     * @notice Removes validator from reward-eligible set
     * @dev Only callable by Infrared contract
     * @param pubkey Validator's public key
     * @custom:access-control Requires INFRARED_ROLE
     */
    function remove(bytes calldata pubkey) external;

    /**
     * @notice Purges validator from registry completely
     * @dev Only possible after all rewards are claimed
     * @param pubkey Validator's public key
     * @custom:error ClaimableRewardsExist if unclaimed rewards remain
     */
    function purge(bytes calldata pubkey) external;

    /**
     * @notice Distributes new commission rewards to validator set
     * @param amount Amount to distribute equally among validators
     * @custom:error ZeroAmount if amount is 0
     * @custom:error InvalidValidator if no validators exist
     */
    function notifyRewardAmount(uint256 amount) external;

    /**
     * @notice Claims outstanding commission rewards
     * @param pubkey Validator's public key
     * @param recipient Address to receive the claimed rewards
     * @custom:error InvalidValidator if caller not authorized
     * @custom:error ZeroAmount if no rewards to claim
     */
    function claim(bytes calldata pubkey, address recipient) external;
}

// lib/contracts/src/pol/interfaces/IPOLErrors.sol

/// @notice Interface of POL errors
interface IPOLErrors is IStakingRewardsErrors {
    // Signature: 0xf2d81d95
    error NotApprovedSender();
    // Signature: 0x1db3b859
    error NotDelegate();
    // Signature: 0x53f0a596
    error NotBGT();
    // Signature: 0x1b0eb4ec
    error NotBlockRewardController();
    // Signature: 0x385296d5
    error NotDistributor();
    // Signature: 0x73fcd3fe
    error NotFeeCollector();
    // Signature: 0x36407850
    error NotWhitelistedVault();
    // Signature:0x7c214f04
    error NotOperator();
    // Signature: 0xad3a8b9e
    error NotEnoughBalance();
    // Signature: 0xadd377f6
    error InvalidActivateBoostDelay();
    // Signature: 0x2f14f4f9
    error InvalidDropBoostDelay();
    // Signature: 0x14969061
    error NotEnoughBoostedBalance();
    // Signature: 0xe8966d7a
    error NotEnoughTime();
    // Signature: 0xec2caa0d
    error InvalidStartBlock();
    // Signature: 0x3be31f8c
    error RewardAllocationAlreadyQueued();
    // Signature: 0x13134d24
    error InvalidRewardAllocationWeights();
    // Signature: 0xf6fae721
    error TooManyWeights();
    // Signature: 0x3e38573f
    error InvalidateDefaultRewardAllocation();
    // Signature: 0xd92e233d
    error ZeroAddress();
    // Signature: 0x462a2bb2
    error RewardAllocationBlockDelayTooLarge();
    // Signature: 0x08519afa
    error NotFactoryVault();
    // Signature: 0x978dc040
    error ZeroPercentageWeight();
    // Signature: 0x585b9263
    error InvalidWeight();
    // Signature: 0xcb1ee123
    error InvalidMaxWeightPerVault();
    // Signature: 0xab396d11
    error InvalidCommissionValue();
    // Signature: 0x0c32c4fa
    error CommissionChangeAlreadyQueued();
    // Signature: 0xe9269446
    error CommissionNotQueuedOrDelayNotPassed();
    // Signature: 0xc1abde53
    error InvalidCommissionChangeDelay();

    /*                   BLOCK REWARD CONTROLLLER                  */

    // Signature: 0x2e2dab43
    error InvalidBaseRate();
    // Signature: 0x22be2284
    error InvalidRewardRate();
    // Signature: 0x15482337
    error InvalidMinBoostedRewardRate();
    // Signature: 0xb7b2319a
    error InvalidBoostMultiplier();
    // Signature: 0x347f95b2
    error InvalidRewardConvexity();

    /*                           STAKING                           */

    // Signature: 0x09ee12d5
    error NotAContract();
    // Signature: 0xe4ea100b
    error CannotRecoverRewardToken();
    // Signature: 0x1b813803
    error CannotRecoverStakingToken();
    // Signature: 0x2899103f
    error CannotRecoverIncentiveToken();
    // Signature: 0x38432c89
    error IncentiveRateTooHigh();
    // Signature: 0x5ee4de0e
    error NotIncentiveManager();

    // Signature: 0xf84835a0
    error TokenNotWhitelisted();
    // Signature: 0x8d1473a6
    error InsufficientDelegateStake();
    // Signature: 0x08e88f46
    error InsufficientSelfStake();
    // Signature: 0xfbf97e07
    error TokenAlreadyWhitelistedOrLimitReached();
    // Signature: 0xad57d95d
    error AmountLessThanMinIncentiveRate();
    // Signature: 0xfbf1123c
    error InvalidMaxIncentiveTokensCount();

    // Signature: 0x546c7600
    error PayoutAmountIsZero();
    // Signature: 0x89c622a2
    error DonateAmountLessThanPayoutAmount();
    // Signature: 0xa4cc22ed
    error MaxNumWeightsPerRewardAllocationIsZero();
    // Signature: 0x0b5c3aff
    error MinIncentiveRateIsZero();
    // Signature: 0x8e7572da
    error InvariantCheckFailed();
    // Signature: 0x451fa036
    error InvalidIncentiveRate();
    // Signature: 0xdd9df759
    error DuplicateReceiver(address receiver);
    // Signature: 0xe7726b79
    error InvalidRewardDuration();
    // Signature: 0x91373fcd
    error NotRewardDurationManager();
    // Signature: 0x3a70eb50
    error RewardDurationCoolDownPeriodNotPassed();

    /*                         BEACON ROOTS                        */

    // Signature: 0x1390f2a1
    error IndexOutOfRange();
    // Signature: 0x09bde339
    error InvalidProof();
    // Signature: 0x0a431b2a
    error TimestampAlreadyProcessed();

    /*                        BEACON DEPOSIT                       */

    /// @dev Error thrown when the deposit amount is too small, to prevent dust deposits.
    // Signature: 0x0e1eddda
    error InsufficientDeposit();

    /// @dev Error thrown when the deposit amount is not a multiple of Gwei.
    // Signature: 0x40567b38
    error DepositNotMultipleOfGwei();

    /// @dev Error thrown when the deposit amount is too high, since it is a uint64.
    // Signature: 0x2aa66734
    error DepositValueTooHigh();

    /// @dev Error thrown when the public key length is not 48 bytes.
    // Signature: 0x9f106472
    error InvalidPubKeyLength();

    /// @dev Error thrown when the withdrawal credentials length is not 32 bytes.
    // Signature: 0xb39bca16
    error InvalidCredentialsLength();

    /// @dev Error thrown when the signature length is not 96 bytes.
    // Signature: 0x4be6321b
    error InvalidSignatureLength();

    /// @dev Error thrown when the input operator is zero address on the first deposit.
    // Signature: 0x51969a7a
    error ZeroOperatorOnFirstDeposit();

    /// @dev Error thrown when the operator is already set and caller passed non-zero operator.
    // Signature: 0xc4142b41
    error OperatorAlreadySet();

    /// @dev Error thrown when the caller is not the current operator.
    // Signature: 0x819a0d0b
    error NotNewOperator();

    /*                        BGT INCENTIVE DISTRIBUTOR                */
    // Signature: 0x1ec5aa51
    error InvalidArray();
    // Signature: 0x68b5c198
    error InvalidDistribution();
    // Signature: 0x9dd854d3
    error InvalidMerkleRoot();
    // Signature: 0x0995309b
    error RewardInactive();
    // Signature: 0x5958c647
    error InvalidRewardClaimDelay();
    // Signature: 0x75f9d00c
    error InsufficientIncentiveTokens();
    // Signature: 0xc1ab6dc1
    error InvalidToken();
}

// lib/contracts/src/base/IStakingRewards.sol

/// @notice Interface of staking rewards
interface IStakingRewards is IStakingRewardsErrors {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           EVENTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Emitted when a reward has been added to the vault.
    /// @param reward The amount of reward added, scaled by PRECISION.
    event RewardAdded(uint256 reward);

    /// @notice Emitted when the staking balance of an account has increased.
    /// @param account The account that has staked.
    /// @param amount The amount of staked tokens.
    event Staked(address indexed account, uint256 amount);

    /// @notice Emitted when the staking balance of an account has decreased.
    /// @param account The account that has withdrawn.
    /// @param amount The amount of withdrawn tokens.
    event Withdrawn(address indexed account, uint256 amount);

    /// @notice Emitted when a reward has been claimed.
    /// @param account The account whose reward has been claimed.
    /// @param to The address that the reward was sent to. (user or operator).
    /// @param reward The amount of reward claimed.
    event RewardPaid(address indexed account, address to, uint256 reward);

    /// @notice Emitted when the reward duration has been updated.
    /// @param newDuration The new duration of the reward.
    event RewardsDurationUpdated(uint256 newDuration);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          GETTERS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Get the balance of the staked tokens for an account.
    /// @param account The account to get the balance for.
    /// @return The balance of the staked tokens.
    function balanceOf(address account) external view returns (uint256);

    /// @notice Get the reward balance for a specific account.
    /// @param account The account to retrieve the reward balance for.
    /// @return The current reward balance of the specified account.
    function rewards(address account) external view returns (uint256);

    /// @notice Get the user reward per token paid.
    /// @param account The account to retrieve the reward for.
    /// @return The current reward balance of the specified account.
    function userRewardPerTokenPaid(address account) external view returns (uint256);

    /// @notice Retrieves the amount of reward earned by a specific account.
    /// @param account The account to calculate the reward for.
    /// @return The amount of reward earned by the account.
    function earned(address account) external view returns (uint256);

    /// @notice Retrieves the total reward vested over the specified duration.
    /// @return The total reward vested over the duration.
    function getRewardForDuration() external view returns (uint256);

    /// @notice Returns the timestamp of the last reward distribution. This is either the current timestamp (if rewards
    /// are still being actively distributed) or the timestamp when the reward duration ended (if all rewards have
    /// already been distributed).
    /// @return The timestamp of the last reward distribution.
    function lastTimeRewardApplicable() external view returns (uint256);

    /// @notice Retrieves the current value of the global reward per token accumulator. This value is the sum of the
    /// last checkpoint value and the accumulated value since the last checkpoint. It should increase monotonically
    /// over time as more rewards are distributed.
    /// @return The current value of the global reward per token accumulator scaled by 1e18.
    function rewardPerToken() external view returns (uint256);

    /// @notice Get the total supply of the staked tokens in the vault.
    /// @return The total supply of the staked tokens in the vault.
    function totalSupply() external view returns (uint256);

    /// @notice Get the end of the current reward period.
    /// @return The end of the current reward period.
    function periodFinish() external view returns (uint256);

    /// @notice Get the reward rate for the current reward period.
    /// @return The reward rate.
    function rewardRate() external view returns (uint256);

    /// @notice Get the time over which the rewards will be distributed.
    /// @return The duration of the rewards cycle.
    function rewardsDuration() external view returns (uint256);

    /// @notice Get the last time the rewards were updated.
    /// @return The last time the rewards were updated.
    function lastUpdateTime() external view returns (uint256);

    /// @notice Get the amount of undistributed rewards.
    /// @return The amount of undistributed rewards.
    function undistributedRewards() external view returns (uint256);

    /// @notice Get the last updated reward per token scaled.
    /// @return The last updated reward per token.
    function rewardPerTokenStored() external view returns (uint256);
}

// src/interfaces/IWBERA.sol

/**
 * @notice The deposit function allows users to deposit EVM balance (BERA) into the contract.
 * It mints an equivalent amount of WBERA tokens and assigns them to the sender.
 */
interface IWBERA is IERC20 {
    function deposit() external payable;
    function withdraw(uint256 amount) external;
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Pausable.sol

// OpenZeppelin Contracts (last updated v5.3.0) (utils/Pausable.sol)

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract Pausable is Context {
    bool private _paused;

    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    /**
     * @dev The operation failed because the contract is paused.
     */
    error EnforcedPause();

    /**
     * @dev The operation failed because the contract is not paused.
     */
    error ExpectedPause();

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        if (paused()) {
            revert EnforcedPause();
        }
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        if (!paused()) {
            revert ExpectedPause();
        }
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }
}

// lib/solmate/src/utils/SafeTransferLib.sol

/// @notice Safe ETH and ERC20 transfer library that gracefully handles missing return values.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/SafeTransferLib.sol)
/// @dev Use with caution! Some functions in this library knowingly create dirty bits at the destination of the free memory pointer.
library SafeTransferLib {
    /*//////////////////////////////////////////////////////////////
                             ETH OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function safeTransferETH(address to, uint256 amount) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Transfer the ETH and store if it succeeded or not.
            success := call(gas(), to, amount, 0, 0, 0, 0)
        }

        require(success, "ETH_TRANSFER_FAILED");
    }

    /*//////////////////////////////////////////////////////////////
                            ERC20 OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function safeTransferFrom(
        ERC20_0 token,
        address from,
        address to,
        uint256 amount
    ) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Get a pointer to some free memory.
            let freeMemoryPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(freeMemoryPointer, 0x23b872dd00000000000000000000000000000000000000000000000000000000)
            mstore(add(freeMemoryPointer, 4), and(from, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "from" argument.
            mstore(add(freeMemoryPointer, 36), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(add(freeMemoryPointer, 68), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            // We use 100 because the length of our calldata totals up like so: 4 + 32 * 3.
            // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
            success := call(gas(), token, 0, freeMemoryPointer, 100, 0, 32)

            // Set success to whether the call reverted, if not we check it either
            // returned exactly 1 (can't just be non-zero data), or had no return data and token has code.
            if and(iszero(and(eq(mload(0), 1), gt(returndatasize(), 31))), success) {
                success := iszero(or(iszero(extcodesize(token)), returndatasize())) 
            }
        }

        require(success, "TRANSFER_FROM_FAILED");
    }

    function safeTransfer(
        ERC20_0 token,
        address to,
        uint256 amount
    ) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Get a pointer to some free memory.
            let freeMemoryPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(freeMemoryPointer, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
            mstore(add(freeMemoryPointer, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(add(freeMemoryPointer, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
            // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
            success := call(gas(), token, 0, freeMemoryPointer, 68, 0, 32)

            // Set success to whether the call reverted, if not we check it either
            // returned exactly 1 (can't just be non-zero data), or had no return data and token has code.
            if and(iszero(and(eq(mload(0), 1), gt(returndatasize(), 31))), success) {
                success := iszero(or(iszero(extcodesize(token)), returndatasize())) 
            }
        }

        require(success, "TRANSFER_FAILED");
    }

    function safeApprove(
        ERC20_0 token,
        address to,
        uint256 amount
    ) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Get a pointer to some free memory.
            let freeMemoryPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(freeMemoryPointer, 0x095ea7b300000000000000000000000000000000000000000000000000000000)
            mstore(add(freeMemoryPointer, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(add(freeMemoryPointer, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
            // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
            success := call(gas(), token, 0, freeMemoryPointer, 68, 0, 32)

            // Set success to whether the call reverted, if not we check it either
            // returned exactly 1 (can't just be non-zero data), or had no return data and token has code.
            if and(iszero(and(eq(mload(0), 1), gt(returndatasize(), 31))), success) {
                success := iszero(or(iszero(extcodesize(token)), returndatasize())) 
            }
        }

        require(success, "APPROVE_FAILED");
    }
}

// lib/contracts/src/pol/interfaces/IBeraChef.sol

/// @notice Interface of the BeraChef module
interface IBeraChef is IPOLErrors {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          STRUCTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Represents a RewardAllocation entry
    struct RewardAllocation {
        // The block this reward allocation goes into effect.
        uint64 startBlock;
        // The weights of the reward allocation.
        Weight[] weights;
    }

    /// @notice Represents a Weight entry
    struct Weight {
        // The address of the receiver that this weight is for.
        address receiver;
        // The fraction of rewards going to this receiver.
        // the percentage denominator is: ONE_HUNDRED_PERCENT = 10000
        // the actual fraction is: percentageNumerator / ONE_HUNDRED_PERCENT
        // e.g. percentageNumerator for 50% is 5000, because 5000 / 10000 = 0.5
        uint96 percentageNumerator;
    }

    /// @notice The struct of validator queued commission rate changes on incentive tokens.
    /// @param blockNumberLast The last block number commission rate was queued
    /// @param commissionRate The queued commission rate to be used by the validator
    struct QueuedCommissionRateChange {
        uint32 blockNumberLast;
        uint96 commissionRate;
    }

    /// @notice Commission rate of a validator on incentive tokens
    /// @param activationBlock The block number in which the commission rate was activated
    /// @param commissionRate The commission rate to be used by the validator
    struct CommissionRate {
        uint32 activationBlock;
        uint96 commissionRate;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           EVENTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Emitted when the maximum number of weights per reward allocation has been set.
    /// @param maxNumWeightsPerRewardAllocation The maximum number of weights per reward allocation.
    event MaxNumWeightsPerRewardAllocationSet(uint8 maxNumWeightsPerRewardAllocation);

    /// @notice Emitted when the maximum weight per vault in a reward allocation has been set.
    /// @param maxWeightPerVault The maximum weight per vault (in basis points).
    event MaxWeightPerVaultSet(uint96 maxWeightPerVault);

    /// @notice Emitted when the delay in blocks before a new reward allocation can go into effect has been set.
    /// @param rewardAllocationBlockDelay The delay in blocks before a new reward allocation can go into effect.
    event RewardAllocationBlockDelaySet(uint64 rewardAllocationBlockDelay);

    /// @notice Emitted when the vault's whitelisted status have been updated.
    /// @param receiver The address to remove or add as whitelisted vault.
    /// @param isWhitelisted The whitelist status; true if the receiver is being whitelisted, false otherwise.
    /// @param metadata The metadata of the vault.
    event VaultWhitelistedStatusUpdated(address indexed receiver, bool indexed isWhitelisted, string metadata);

    /**
     * @notice Emitted when the metadata of a whitelisted vault has been updated.
     * @param receiver The address of the whitelisted vault.
     * @param metadata The metadata of the vault.
     */
    event WhitelistedVaultMetadataUpdated(address indexed receiver, string metadata);

    /**
     * @notice Emitted when a new reward allocation has been queued.
     * @param valPubkey The validator's pubkey.
     * @param startBlock The block that the reward allocation goes into effect.
     * @param weights The weights of the reward allocation.
     */
    event QueueRewardAllocation(bytes indexed valPubkey, uint64 startBlock, Weight[] weights);

    /**
     * @notice Emitted when a new reward allocation has been activated.
     * @param valPubkey The validator's pubkey.
     * @param startBlock The block that the reward allocation goes into effect.
     * @param weights The weights of the reward allocation.
     */
    event ActivateRewardAllocation(bytes indexed valPubkey, uint64 startBlock, Weight[] weights);

    /**
     * @notice Emitted when the governance module has set a new default reward allocation.
     * @param rewardAllocation The default reward allocation.
     */
    event SetDefaultRewardAllocation(RewardAllocation rewardAllocation);

    /**
     * @notice Emitted when the commission change delay has been set.
     * @param commissionChangeDelay The delay in blocks to activate a queued commission change.
     */
    event CommissionChangeDelaySet(uint64 commissionChangeDelay);

    /**
     * @notice Emitted when a validator's commission rate on incentive tokens has been queued.
     * @param valPubkey The validator's pubkey.
     * @param queuedCommissionRate The queued commission rate of the validator on the incentive tokens.
     */
    event QueuedValCommission(bytes indexed valPubkey, uint96 queuedCommissionRate);

    /**
     * @notice Emitted when the commission rate of a validator on incentive tokens has been set.
     * @param valPubkey The validator's pubkey.
     * @param oldCommissionRate The old commission rate of the validator on the incentive tokens.
     * @param newCommissionRate The new commission rate of the validator on the incentive tokens.
     */
    event ValCommissionSet(bytes indexed valPubkey, uint96 oldCommissionRate, uint96 newCommissionRate);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          GETTERS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Returns the active reward allocation for validator with given pubkey
     * @param valPubkey The validator's pubkey.
     * @return rewardAllocation The active reward allocation.
     */
    function getActiveRewardAllocation(bytes calldata valPubkey) external view returns (RewardAllocation memory);

    /**
     * @notice Returns the queued reward allocation for a validator with given pubkey
     * @param valPubkey The validator's pubkey.
     * @return rewardAllocation The queued reward allocation.
     */
    function getQueuedRewardAllocation(bytes calldata valPubkey) external view returns (RewardAllocation memory);

    /**
     * @notice Returns the active reward allocation set by the validator with given pubkey.
     * @dev This will return active reward allocation set by validators even if its not valid.
     * @param valPubkey The validator's pubkey.
     * @return rewardAllocation The reward allocation.
     */
    function getSetActiveRewardAllocation(bytes calldata valPubkey) external view returns (RewardAllocation memory);

    /**
     * @notice Returns the default reward allocation for validators that do not have a reward allocation.
     * @return rewardAllocation The default reward allocation.
     */
    function getDefaultRewardAllocation() external view returns (RewardAllocation memory);

    /**
     * @notice Returns the status of whether a queued reward allocation is ready to be activated.
     * @param valPubkey The validator's pubkey.
     * @param blockNumber The block number to be queried.
     * @return isReady True if the queued reward allocation is ready to be activated, false otherwise.
     */
    function isQueuedRewardAllocationReady(
        bytes calldata valPubkey,
        uint256 blockNumber
    )
        external
        view
        returns (bool);

    /**
     * @notice Returns the status of whether the BeraChef contract is ready to be used.
     * @dev This function should be used by all contracts that depend on a system call.
     * @dev This will return false if the governance module has not set a default reward allocation yet.
     * @return isReady True if the BeraChef is ready to be used, false otherwise.
     */
    function isReady() external view returns (bool);

    /**
     * @notice Returns the queued commission struct of a validator on an incentive tokens.
     * @param valPubkey The validator's pubkey.
     * @return queuedCommissionRate The queued commission struct of the validator on the incentive tokens.
     */
    function getValQueuedCommissionOnIncentiveTokens(bytes calldata valPubkey)
        external
        view
        returns (QueuedCommissionRateChange memory);

    /**
     * @notice Returns the commission rate of a validator on an incentive tokens.
     * @dev Default commission rate is 5% if the commission was never set.
     * @param valPubkey The validator's pubkey.
     * @return commissionRate The commission rate of the validator on the incentive tokens.
     */
    function getValCommissionOnIncentiveTokens(bytes calldata valPubkey) external view returns (uint96);

    /**
     * @notice Returns the validator's share of the incentive tokens based on the validator's commission rate.
     * @param valPubkey The validator's pubkey.
     * @param incentiveTokenAmount The amount of the incentive tokens.
     * @return validatorShare The validator's share of the incentive tokens.
     */
    function getValidatorIncentiveTokenShare(
        bytes calldata valPubkey,
        uint256 incentiveTokenAmount
    )
        external
        view
        returns (uint256);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       ADMIN FUNCTIONS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Sets the maximum number of weights per reward allocation.
    function setMaxNumWeightsPerRewardAllocation(uint8 _maxNumWeightsPerRewardAllocation) external;

    /// @notice Sets the maximum weight a vault can assume in a reward allocation.
    function setMaxWeightPerVault(uint96 _maxWeightPerVault) external;

    /// @notice Sets the delay in blocks before a new reward allocation can be queued.
    function setRewardAllocationBlockDelay(uint64 _rewardAllocationBlockDelay) external;

    /**
     * @notice Updates the vault's whitelisted status
     * @notice The caller of this function must be the governance module account.
     * @param receiver The address to remove or add as whitelisted vault.
     * @param isWhitelisted The whitelist status; true if the receiver is being whitelisted, false otherwise.
     * @param metadata The metadata of the vault.
     */
    function setVaultWhitelistedStatus(address receiver, bool isWhitelisted, string memory metadata) external;

    /**
     * @notice Updates the metadata of a whitelisted vault, reverts if vault is not whitelisted.
     * @notice The caller of this function must be the governance module account.
     * @param receiver The address of the whitelisted vault.
     * @param metadata The metadata of the vault, to associate info with the vault in the events log.
     */
    function updateWhitelistedVaultMetadata(address receiver, string memory metadata) external;

    /**
     * @notice Sets the default reward allocation for validators that do not have a reward allocation.
     * @dev The caller of this function must be the governance module account.
     * @param rewardAllocation The default reward allocation.
     */
    function setDefaultRewardAllocation(RewardAllocation calldata rewardAllocation) external;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          SETTERS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Add a new reward allocation to the queue for validator with given pubkey. Does not allow overwriting of
     * existing queued reward allocation.
     * @dev The weights of the reward allocation must add up to 100% or 1e4.
     * Only whitelisted pools may be used as well.
     * @param valPubkey The validator's pubkey.
     * @param startBlock The block that the reward allocation goes into effect.
     * @param weights The weights of the reward allocation.
     */
    function queueNewRewardAllocation(
        bytes calldata valPubkey,
        uint64 startBlock,
        Weight[] calldata weights
    )
        external;

    /**
     * @notice Activates the queued reward allocation for a validator if its ready for the current block.
     * @dev Should be called by the distribution contract.
     * @param valPubkey The validator's pubkey.
     */
    function activateReadyQueuedRewardAllocation(bytes calldata valPubkey) external;

    /**
     * @notice Sets the commission change delay.
     * @dev Only owner can call this function.
     * @param _commissionChangeDelay The delay in blocks to activate a queued commission change.
     */
    function setCommissionChangeDelay(uint64 _commissionChangeDelay) external;

    /**
     * @notice Queues a commission rate change for a validator on incentive tokens.
     * @dev The caller of this function must be the validator operator address.
     * @dev Revert if already a commission rate change is queued.
     * @param valPubkey The validator's pubkey.
     * @param commissionRate The commission rate of the validator on the incentive tokens.
     */
    function queueValCommission(bytes calldata valPubkey, uint96 commissionRate) external;

    /**
     * @notice Activates the queued commission rate of a validator on incentive tokens.
     * @param valPubkey The validator's pubkey.
     */
    function activateQueuedValCommission(bytes calldata valPubkey) external;
}

// src/interfaces/IBribeCollector.sol

interface IBribeCollector is IPOLErrors {
    /**
     * @notice Emitted when the payout amount is updated by the governor
     * @param oldPayoutAmount Previous payout amount
     * @param newPayoutAmount New payout amount set
     */
    event PayoutAmountSet(
        uint256 indexed oldPayoutAmount, uint256 indexed newPayoutAmount
    );

    /**
     * @notice Emitted when the fees are claimed
     * @param caller Caller of the `claimFees` function
     * @param recipient The address to which collected POL bribes will be transferred
     * @param feeToken The address of the fee token to collect
     * @param amount The amount of fee token to transfer
     */
    event FeesClaimed(
        address indexed caller,
        address indexed recipient,
        address indexed feeToken,
        uint256 amount
    );

    /**
     * @notice Token used for fee payments when claiming bribes
     * @return Address of the payout token
     */
    function payoutToken() external view returns (address);

    /**
     * @notice The amount of payout token that is required to claim POL bribes for all tokens
     * @dev This works as first come first serve basis. whoever pays this much amount of the payout amount first will
     * get the fees
     */
    function payoutAmount() external view returns (uint256);

    /**
     * @notice Update the payout amount to a new value. Must be called by governor
     * @param _newPayoutAmount The value that will be the new payout amount
     */
    function setPayoutAmount(uint256 _newPayoutAmount) external;

    /**
     * @notice Claims accumulated bribes in exchange for payout token
     * @dev Caller must approve payoutAmount of payout token to this contract.
     * @param _recipient The Address to receive claimed tokens
     * @param _feeTokens Array of token addresses to claim
     * @param _feeAmounts Array of amounts to claim for each fee token
     */
    function claimFees(
        address _recipient,
        address[] calldata _feeTokens,
        uint256[] calldata _feeAmounts
    ) external;
}

// src/interfaces/IInfraredBERA.sol

interface IInfraredBERA is IERC20, IAccessControl {
    /// @notice Emitted when InfraredBERA is minted
    /// @param receiver The address receiving the minted shares
    /// @param amount The amount of BERA deposited
    /// @param shares The amount of shares minted
    event Mint(address indexed receiver, uint256 amount, uint256 shares);

    /// @notice Emitted when InfraredBERA is burned
    /// @param receiver The address receiving the withdrawn BERA
    /// @param nonce The withdrawal nonce
    /// @param amount The amount of BERA to withdraw
    /// @param shares The amount of shares burned
    /// @param fee The fee paid for withdrawal
    event Burn(
        address indexed receiver,
        uint256 nonce,
        uint256 amount,
        uint256 shares,
        uint256 fee
    );

    /// @notice Emitted when accumulated rewards are swept
    /// @param amount The amount of BERA swept
    event Sweep(uint256 amount);

    /// @notice Emitted when validator stake is registered
    /// @param pubkey The validator's public key
    /// @param delta The change in stake amount
    /// @param stake The new total stake amount
    event Register(bytes pubkey, int256 delta, uint256 stake);

    /// @notice Emitted when fee shareholders rate is updated
    /// @param from Previous fee rate
    /// @param to New fee rate
    event SetFeeShareholders(uint16 from, uint16 to);

    /// @notice Emitted when deposit signature is updated
    /// @param pubkey The validator's public key
    /// @param from Previous signature
    /// @param to New signature
    event SetDepositSignature(bytes pubkey, bytes from, bytes to);

    /// @notice Emitted when withdrawal flag is updated
    /// @param flag New withdrawal flag value
    event WithdrawalFlagSet(bool flag);

    /// @notice The `Infrared.sol` smart contract
    function infrared() external view returns (address);

    /// @notice The `InfraredBERADepositor.sol` smart contract
    function depositor() external view returns (address);

    /// @notice The `InfraredBERAWithdrawor.sol` smart contract
    function withdrawor() external view returns (address);

    /// @notice The `InfraredBERAFeeReceivor.sol` smart contract
    function receivor() external view returns (address);

    /// @notice The total amount of `BERA` deposited by the system
    function deposits() external view returns (uint256);

    /// @notice Returns the amount of `BERA` staked in validator with given pubkey
    function stakes(bytes calldata pubkey) external view returns (uint256);

    /// @notice Returns whether initial deposit has been staked to validator with given pubkey
    function staked(bytes calldata pubkey) external view returns (bool);

    /// @notice Returns whether a validator pubkey has exited
    function hasExited(bytes calldata pubkey) external view returns (bool);

    /// @notice Returns the deposit signature to use for given pubkey
    function signatures(bytes calldata pubkey)
        external
        view
        returns (bytes memory);

    /// @notice The fee divisor for protocol + operator + voter fees. 1/N, where N is the divisor. example 100 = 1/100 = 1%
    function feeDivisorShareholders() external view returns (uint16);

    /// @notice Pending deposits yet to be forwarded to CL
    function pending() external view returns (uint256);

    /// @notice Confirmed deposits sent to CL, total - future deposits
    function confirmed() external view returns (uint256);

    /// @notice Checks if account has the keeper role
    /// @param account The address to check
    /// @return True if the account has the keeper role
    function keeper(address account) external view returns (bool);

    /// @notice Checks if account has the governance role
    /// @param account The address to check
    /// @return True if the account has the governance role
    function governor(address account) external view returns (bool);

    /// @notice Checks if a given pubkey is a validator in the `Infrared` contract
    /// @param pubkey The pubkey to check
    /// @return True if the pubkey is a validator
    function validator(bytes calldata pubkey) external view returns (bool);

    /// @notice Previews the amount of InfraredBERA shares that would be minted for a given BERA amount
    /// @param beraAmount The amount of BERA to simulate depositing
    /// @return shares The amount of InfraredBERA shares that would be minted, returns 0 if the operation would fail
    function previewMint(uint256 beraAmount)
        external
        view
        returns (uint256 shares);

    /// @notice Previews the amount of BERA that would be received for burning InfraredBERA shares
    /// @param shareAmount The amount of InfraredBERA shares to simulate burning
    /// @return beraAmount The amount of BERA that would be received, returns 0 if the operation would fail
    /// @return fee The fee that would be charged for the burn operation
    function previewBurn(uint256 shareAmount)
        external
        view
        returns (uint256 beraAmount, uint256 fee);

    /// @notice Initiializer for `InfraredBERA`
    /// @param _gov The address of the governance contract
    /// @param _keeper The address of the keeper contract
    /// @param _infrared The address of the `Infrared.sol` contract
    /// @param _depositor The address of the `InfraredBERADepositor.sol` contract
    /// @param _withdrawor The address of the `InfraredBERAWithdrawor.sol` contract
    /// @param _receivor The address of the `InfraredBERAFeeReceivor.sol` contract
    function initialize(
        address _gov,
        address _keeper,
        address _infrared,
        address _depositor,
        address _withdrawor,
        address _receivor
    ) external payable;

    /// @notice Internal function to update top level accounting and compound rewards
    function compound() external;

    /// @notice Compounds accumulated EL yield in fee receivor into deposits
    /// @dev Called internally at bof whenever InfraredBERA minted or burned
    /// @dev Only sweeps if amount transferred from fee receivor would exceed min deposit thresholds
    function sweep() external payable;

    /// @notice Collects yield from fee receivor and mints ibera shares to Infrared
    /// @dev Called in `RewardsLib::harvestOperatorRewards()` in `Infrared.sol`
    /// @dev Only Infrared can call this function
    /// @return sharesMinted The amount of ibera shares
    function collect() external returns (uint256 sharesMinted);

    /// @notice Mints `ibera` to the `receiver` in exchange for `bera`
    /// @dev takes in msg.value as amount to mint `ibera` with
    /// @param receiver The address to mint `ibera` to
    /// @return shares The amount of `ibera` minted
    function mint(address receiver) external payable returns (uint256 shares);

    /// @notice Burns `ibera` from the `msg.sender` and sets a receiver to get the `BERA` in exchange for `iBERA`
    /// @param receiver The address to send the `BERA` to
    /// @param shares The amount of `ibera` to burn
    /// @return nonce The nonce of the withdrawal. Queue based system for withdrawals
    /// @return amount The amount of `BERA` withdrawn for the exchange of `iBERA`
    function burn(address receiver, uint256 shares)
        external
        payable
        returns (uint256 nonce, uint256 amount);

    /// @notice Updates the accounted for stake of a validator pubkey
    /// @param pubkey The pubkey of the validator
    /// @param delta The change in stake
    function register(bytes calldata pubkey, int256 delta) external;

    /// @notice Sets the fee shareholders taken on yield from EL coinbase priority fees + MEV
    /// @param to The new fee shareholders represented as an integer denominator (1/x)%
    function setFeeDivisorShareholders(uint16 to) external;

    /// @notice Sets the deposit signature for a given pubkey. Ensure that the pubkey has signed the correct deposit amount of `INITIAL_DEPOSIT`
    /// @param pubkey The pubkey to set the deposit signature for
    /// @param signature The signature to set for the pubkey
    function setDepositSignature(
        bytes calldata pubkey,
        bytes calldata signature
    ) external;

    /// @notice Whether withdrawals are currently enabled
    function withdrawalsEnabled() external view returns (bool);
}

// lib/contracts/src/pol/interfaces/IRewardVaultFactory.sol

interface IRewardVaultFactory is IPOLErrors {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          EVENTS                             */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Emitted when a new vault is created.
     * @param stakingToken The address of the staking token.
     * @param vault The address of the vault.
     */
    event VaultCreated(address indexed stakingToken, address indexed vault);

    /**
     * @notice Emitted when the BGTIncentiveDistributor contract is set.
     * @param newBGTIncentiveDistributor The address of the new BGTIncentiveDistributor contract.
     * @param oldBGTIncentiveDistributor The address of the old BGTIncentiveDistributor contract.
     */
    event BGTIncentiveDistributorSet(
        address indexed newBGTIncentiveDistributor, address indexed oldBGTIncentiveDistributor
    );

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          ADMIN                             */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Sets the BGTIncentiveDistributor contract.
     * @dev Only callable by the admin.
     * @param _bgtIncentiveDistributor The address of the new BGTIncentiveDistributor contract.
     */
    function setBGTIncentiveDistributor(address _bgtIncentiveDistributor) external;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         VAULT CREATION                     */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Creates a new reward vault vault for the given staking token.
     * @dev Reverts if the staking token is not a contract.
     * @param stakingToken The address of the staking token.
     * @return The address of the new vault.
     */
    function createRewardVault(address stakingToken) external returns (address);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          READS                             */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Gets the VAULT_MANAGER_ROLE.
     * @return The VAULT_MANAGER_ROLE.
     */
    function VAULT_MANAGER_ROLE() external view returns (bytes32);

    /**
     * @notice Gets the VAULT_PAUSER_ROLE.
     * @return The VAULT_PAUSER_ROLE.
     */
    function VAULT_PAUSER_ROLE() external view returns (bytes32);

    /**
     * @notice Gets the vault for the given staking token.
     * @param stakingToken The address of the staking token.
     * @return The address of the vault.
     */
    function getVault(address stakingToken) external view returns (address);

    /**
     * @notice Gets the number of vaults that have been created.
     * @return The number of vaults.
     */
    function allVaultsLength() external view returns (uint256);

    /**
     * @notice Gets the address of the BGTIncentiveDistributor contract.
     * @return The address of the BGTIncentiveDistributor contract.
     */
    function bgtIncentiveDistributor() external view returns (address);

    /**
     * @notice Predicts the address of the reward vault for the given staking token.
     * @param stakingToken The address of the staking token.
     * @return The address of the reward vault.
     */
    function predictRewardVaultAddress(address stakingToken) external view returns (address);
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/math/Math.sol

// OpenZeppelin Contracts (last updated v5.3.0) (utils/math/Math.sol)

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Floor, // Toward negative infinity
        Ceil, // Toward positive infinity
        Trunc, // Toward zero
        Expand // Away from zero
    }

    /**
     * @dev Return the 512-bit addition of two uint256.
     *
     * The result is stored in two 256 variables such that sum = high * 2²⁵⁶ + low.
     */
    function add512(uint256 a, uint256 b) internal pure returns (uint256 high, uint256 low) {
        assembly ("memory-safe") {
            low := add(a, b)
            high := lt(low, a)
        }
    }

    /**
     * @dev Return the 512-bit multiplication of two uint256.
     *
     * The result is stored in two 256 variables such that product = high * 2²⁵⁶ + low.
     */
    function mul512(uint256 a, uint256 b) internal pure returns (uint256 high, uint256 low) {
        // 512-bit multiply [high low] = x * y. Compute the product mod 2²⁵⁶ and mod 2²⁵⁶ - 1, then use
        // the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
        // variables such that product = high * 2²⁵⁶ + low.
        assembly ("memory-safe") {
            let mm := mulmod(a, b, not(0))
            low := mul(a, b)
            high := sub(sub(mm, low), lt(mm, low))
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, with a success flag (no overflow).
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a + b;
            success = c >= a;
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with a success flag (no overflow).
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a - b;
            success = c <= a;
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with a success flag (no overflow).
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a * b;
            assembly ("memory-safe") {
                // Only true when the multiplication doesn't overflow
                // (c / a == b) || (a == 0)
                success := or(eq(div(c, a), b), iszero(a))
            }
            // equivalent to: success ? c : 0
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a success flag (no division by zero).
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            success = b > 0;
            assembly ("memory-safe") {
                // The `DIV` opcode returns zero when the denominator is 0.
                result := div(a, b)
            }
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a success flag (no division by zero).
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            success = b > 0;
            assembly ("memory-safe") {
                // The `MOD` opcode returns zero when the denominator is 0.
                result := mod(a, b)
            }
        }
    }

    /**
     * @dev Unsigned saturating addition, bounds to `2²⁵⁶ - 1` instead of overflowing.
     */
    function saturatingAdd(uint256 a, uint256 b) internal pure returns (uint256) {
        (bool success, uint256 result) = tryAdd(a, b);
        return ternary(success, result, type(uint256).max);
    }

    /**
     * @dev Unsigned saturating subtraction, bounds to zero instead of overflowing.
     */
    function saturatingSub(uint256 a, uint256 b) internal pure returns (uint256) {
        (, uint256 result) = trySub(a, b);
        return result;
    }

    /**
     * @dev Unsigned saturating multiplication, bounds to `2²⁵⁶ - 1` instead of overflowing.
     */
    function saturatingMul(uint256 a, uint256 b) internal pure returns (uint256) {
        (bool success, uint256 result) = tryMul(a, b);
        return ternary(success, result, type(uint256).max);
    }

    /**
     * @dev Branchless ternary evaluation for `a ? b : c`. Gas costs are constant.
     *
     * IMPORTANT: This function may reduce bytecode size and consume less gas when used standalone.
     * However, the compiler may optimize Solidity ternary operations (i.e. `a ? b : c`) to only compute
     * one branch when needed, making this function more expensive.
     */
    function ternary(bool condition, uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            // branchless ternary works because:
            // b ^ (a ^ b) == a
            // b ^ 0 == b
            return b ^ ((a ^ b) * SafeCast.toUint(condition));
        }
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return ternary(a > b, a, b);
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return ternary(a < b, a, b);
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds towards infinity instead
     * of rounding towards zero.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b == 0) {
            // Guarantee the same behavior as in a regular Solidity division.
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }

        // The following calculation ensures accurate ceiling division without overflow.
        // Since a is non-zero, (a - 1) / b will not overflow.
        // The largest possible result occurs when (a - 1) / b is type(uint256).max,
        // but the largest value we can obtain is type(uint256).max - 1, which happens
        // when a = type(uint256).max and b = 1.
        unchecked {
            return SafeCast.toUint(a > 0) * ((a - 1) / b + 1);
        }
    }

    /**
     * @dev Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or
     * denominator == 0.
     *
     * Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv) with further edits by
     * Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            (uint256 high, uint256 low) = mul512(x, y);

            // Handle non-overflow cases, 256 by 256 division.
            if (high == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return low / denominator;
            }

            // Make sure the result is less than 2²⁵⁶. Also prevents denominator == 0.
            if (denominator <= high) {
                Panic.panic(ternary(denominator == 0, Panic.DIVISION_BY_ZERO, Panic.UNDER_OVERFLOW));
            }

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [high low].
            uint256 remainder;
            assembly ("memory-safe") {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                high := sub(high, gt(remainder, low))
                low := sub(low, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator.
            // Always >= 1. See https://cs.stackexchange.com/q/138556/92363.

            uint256 twos = denominator & (0 - denominator);
            assembly ("memory-safe") {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [high low] by twos.
                low := div(low, twos)

                // Flip twos such that it is 2²⁵⁶ / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from high into low.
            low |= high * twos;

            // Invert denominator mod 2²⁵⁶. Now that denominator is an odd number, it has an inverse modulo 2²⁵⁶ such
            // that denominator * inv ≡ 1 mod 2²⁵⁶. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv ≡ 1 mod 2⁴.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also
            // works in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2¹⁶
            inverse *= 2 - denominator * inverse; // inverse mod 2³²
            inverse *= 2 - denominator * inverse; // inverse mod 2⁶⁴
            inverse *= 2 - denominator * inverse; // inverse mod 2¹²⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2²⁵⁶

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2²⁵⁶. Since the preconditions guarantee that the outcome is
            // less than 2²⁵⁶, this is the final result. We don't need to compute the high bits of the result and high
            // is no longer required.
            result = low * inverse;
            return result;
        }
    }

    /**
     * @dev Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        return mulDiv(x, y, denominator) + SafeCast.toUint(unsignedRoundsUp(rounding) && mulmod(x, y, denominator) > 0);
    }

    /**
     * @dev Calculates floor(x * y >> n) with full precision. Throws if result overflows a uint256.
     */
    function mulShr(uint256 x, uint256 y, uint8 n) internal pure returns (uint256 result) {
        unchecked {
            (uint256 high, uint256 low) = mul512(x, y);
            if (high >= 1 << n) {
                Panic.panic(Panic.UNDER_OVERFLOW);
            }
            return (high << (256 - n)) | (low >> n);
        }
    }

    /**
     * @dev Calculates x * y >> n with full precision, following the selected rounding direction.
     */
    function mulShr(uint256 x, uint256 y, uint8 n, Rounding rounding) internal pure returns (uint256) {
        return mulShr(x, y, n) + SafeCast.toUint(unsignedRoundsUp(rounding) && mulmod(x, y, 1 << n) > 0);
    }

    /**
     * @dev Calculate the modular multiplicative inverse of a number in Z/nZ.
     *
     * If n is a prime, then Z/nZ is a field. In that case all elements are inversible, except 0.
     * If n is not a prime, then Z/nZ is not a field, and some elements might not be inversible.
     *
     * If the input value is not inversible, 0 is returned.
     *
     * NOTE: If you know for sure that n is (big) a prime, it may be cheaper to use Fermat's little theorem and get the
     * inverse using `Math.modExp(a, n - 2, n)`. See {invModPrime}.
     */
    function invMod(uint256 a, uint256 n) internal pure returns (uint256) {
        unchecked {
            if (n == 0) return 0;

            // The inverse modulo is calculated using the Extended Euclidean Algorithm (iterative version)
            // Used to compute integers x and y such that: ax + ny = gcd(a, n).
            // When the gcd is 1, then the inverse of a modulo n exists and it's x.
            // ax + ny = 1
            // ax = 1 + (-y)n
            // ax ≡ 1 (mod n) # x is the inverse of a modulo n

            // If the remainder is 0 the gcd is n right away.
            uint256 remainder = a % n;
            uint256 gcd = n;

            // Therefore the initial coefficients are:
            // ax + ny = gcd(a, n) = n
            // 0a + 1n = n
            int256 x = 0;
            int256 y = 1;

            while (remainder != 0) {
                uint256 quotient = gcd / remainder;

                (gcd, remainder) = (
                    // The old remainder is the next gcd to try.
                    remainder,
                    // Compute the next remainder.
                    // Can't overflow given that (a % gcd) * (gcd // (a % gcd)) <= gcd
                    // where gcd is at most n (capped to type(uint256).max)
                    gcd - remainder * quotient
                );

                (x, y) = (
                    // Increment the coefficient of a.
                    y,
                    // Decrement the coefficient of n.
                    // Can overflow, but the result is casted to uint256 so that the
                    // next value of y is "wrapped around" to a value between 0 and n - 1.
                    x - y * int256(quotient)
                );
            }

            if (gcd != 1) return 0; // No inverse exists.
            return ternary(x < 0, n - uint256(-x), uint256(x)); // Wrap the result if it's negative.
        }
    }

    /**
     * @dev Variant of {invMod}. More efficient, but only works if `p` is known to be a prime greater than `2`.
     *
     * From https://en.wikipedia.org/wiki/Fermat%27s_little_theorem[Fermat's little theorem], we know that if p is
     * prime, then `a**(p-1) ≡ 1 mod p`. As a consequence, we have `a * a**(p-2) ≡ 1 mod p`, which means that
     * `a**(p-2)` is the modular multiplicative inverse of a in Fp.
     *
     * NOTE: this function does NOT check that `p` is a prime greater than `2`.
     */
    function invModPrime(uint256 a, uint256 p) internal view returns (uint256) {
        unchecked {
            return Math.modExp(a, p - 2, p);
        }
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m)
     *
     * Requirements:
     * - modulus can't be zero
     * - underlying staticcall to precompile must succeed
     *
     * IMPORTANT: The result is only valid if the underlying call succeeds. When using this function, make
     * sure the chain you're using it on supports the precompiled contract for modular exponentiation
     * at address 0x05 as specified in https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise,
     * the underlying function will succeed given the lack of a revert, but the result may be incorrectly
     * interpreted as 0.
     */
    function modExp(uint256 b, uint256 e, uint256 m) internal view returns (uint256) {
        (bool success, uint256 result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m).
     * It includes a success flag indicating if the operation succeeded. Operation will be marked as failed if trying
     * to operate modulo 0 or if the underlying precompile reverted.
     *
     * IMPORTANT: The result is only valid if the success flag is true. When using this function, make sure the chain
     * you're using it on supports the precompiled contract for modular exponentiation at address 0x05 as specified in
     * https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise, the underlying function will succeed given the lack
     * of a revert, but the result may be incorrectly interpreted as 0.
     */
    function tryModExp(uint256 b, uint256 e, uint256 m) internal view returns (bool success, uint256 result) {
        if (m == 0) return (false, 0);
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            // | Offset    | Content    | Content (Hex)                                                      |
            // |-----------|------------|--------------------------------------------------------------------|
            // | 0x00:0x1f | size of b  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x20:0x3f | size of e  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x40:0x5f | size of m  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x60:0x7f | value of b | 0x<.............................................................b> |
            // | 0x80:0x9f | value of e | 0x<.............................................................e> |
            // | 0xa0:0xbf | value of m | 0x<.............................................................m> |
            mstore(ptr, 0x20)
            mstore(add(ptr, 0x20), 0x20)
            mstore(add(ptr, 0x40), 0x20)
            mstore(add(ptr, 0x60), b)
            mstore(add(ptr, 0x80), e)
            mstore(add(ptr, 0xa0), m)

            // Given the result < m, it's guaranteed to fit in 32 bytes,
            // so we can use the memory scratch space located at offset 0.
            success := staticcall(gas(), 0x05, ptr, 0xc0, 0x00, 0x20)
            result := mload(0x00)
        }
    }

    /**
     * @dev Variant of {modExp} that supports inputs of arbitrary length.
     */
    function modExp(bytes memory b, bytes memory e, bytes memory m) internal view returns (bytes memory) {
        (bool success, bytes memory result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Variant of {tryModExp} that supports inputs of arbitrary length.
     */
    function tryModExp(
        bytes memory b,
        bytes memory e,
        bytes memory m
    ) internal view returns (bool success, bytes memory result) {
        if (_zeroBytes(m)) return (false, new bytes(0));

        uint256 mLen = m.length;

        // Encode call args in result and move the free memory pointer
        result = abi.encodePacked(b.length, e.length, mLen, b, e, m);

        assembly ("memory-safe") {
            let dataPtr := add(result, 0x20)
            // Write result on top of args to avoid allocating extra memory.
            success := staticcall(gas(), 0x05, dataPtr, mload(result), dataPtr, mLen)
            // Overwrite the length.
            // result.length > returndatasize() is guaranteed because returndatasize() == m.length
            mstore(result, mLen)
            // Set the memory pointer after the returned data.
            mstore(0x40, add(dataPtr, mLen))
        }
    }

    /**
     * @dev Returns whether the provided byte array is zero.
     */
    function _zeroBytes(bytes memory byteArray) private pure returns (bool) {
        for (uint256 i = 0; i < byteArray.length; ++i) {
            if (byteArray[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded
     * towards zero.
     *
     * This method is based on Newton's method for computing square roots; the algorithm is restricted to only
     * using integer operations.
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        unchecked {
            // Take care of easy edge cases when a == 0 or a == 1
            if (a <= 1) {
                return a;
            }

            // In this function, we use Newton's method to get a root of `f(x) := x² - a`. It involves building a
            // sequence x_n that converges toward sqrt(a). For each iteration x_n, we also define the error between
            // the current value as `ε_n = | x_n - sqrt(a) |`.
            //
            // For our first estimation, we consider `e` the smallest power of 2 which is bigger than the square root
            // of the target. (i.e. `2**(e-1) ≤ sqrt(a) < 2**e`). We know that `e ≤ 128` because `(2¹²⁸)² = 2²⁵⁶` is
            // bigger than any uint256.
            //
            // By noticing that
            // `2**(e-1) ≤ sqrt(a) < 2**e → (2**(e-1))² ≤ a < (2**e)² → 2**(2*e-2) ≤ a < 2**(2*e)`
            // we can deduce that `e - 1` is `log2(a) / 2`. We can thus compute `x_n = 2**(e-1)` using a method similar
            // to the msb function.
            uint256 aa = a;
            uint256 xn = 1;

            if (aa >= (1 << 128)) {
                aa >>= 128;
                xn <<= 64;
            }
            if (aa >= (1 << 64)) {
                aa >>= 64;
                xn <<= 32;
            }
            if (aa >= (1 << 32)) {
                aa >>= 32;
                xn <<= 16;
            }
            if (aa >= (1 << 16)) {
                aa >>= 16;
                xn <<= 8;
            }
            if (aa >= (1 << 8)) {
                aa >>= 8;
                xn <<= 4;
            }
            if (aa >= (1 << 4)) {
                aa >>= 4;
                xn <<= 2;
            }
            if (aa >= (1 << 2)) {
                xn <<= 1;
            }

            // We now have x_n such that `x_n = 2**(e-1) ≤ sqrt(a) < 2**e = 2 * x_n`. This implies ε_n ≤ 2**(e-1).
            //
            // We can refine our estimation by noticing that the middle of that interval minimizes the error.
            // If we move x_n to equal 2**(e-1) + 2**(e-2), then we reduce the error to ε_n ≤ 2**(e-2).
            // This is going to be our x_0 (and ε_0)
            xn = (3 * xn) >> 1; // ε_0 := | x_0 - sqrt(a) | ≤ 2**(e-2)

            // From here, Newton's method give us:
            // x_{n+1} = (x_n + a / x_n) / 2
            //
            // One should note that:
            // x_{n+1}² - a = ((x_n + a / x_n) / 2)² - a
            //              = ((x_n² + a) / (2 * x_n))² - a
            //              = (x_n⁴ + 2 * a * x_n² + a²) / (4 * x_n²) - a
            //              = (x_n⁴ + 2 * a * x_n² + a² - 4 * a * x_n²) / (4 * x_n²)
            //              = (x_n⁴ - 2 * a * x_n² + a²) / (4 * x_n²)
            //              = (x_n² - a)² / (2 * x_n)²
            //              = ((x_n² - a) / (2 * x_n))²
            //              ≥ 0
            // Which proves that for all n ≥ 1, sqrt(a) ≤ x_n
            //
            // This gives us the proof of quadratic convergence of the sequence:
            // ε_{n+1} = | x_{n+1} - sqrt(a) |
            //         = | (x_n + a / x_n) / 2 - sqrt(a) |
            //         = | (x_n² + a - 2*x_n*sqrt(a)) / (2 * x_n) |
            //         = | (x_n - sqrt(a))² / (2 * x_n) |
            //         = | ε_n² / (2 * x_n) |
            //         = ε_n² / | (2 * x_n) |
            //
            // For the first iteration, we have a special case where x_0 is known:
            // ε_1 = ε_0² / | (2 * x_0) |
            //     ≤ (2**(e-2))² / (2 * (2**(e-1) + 2**(e-2)))
            //     ≤ 2**(2*e-4) / (3 * 2**(e-1))
            //     ≤ 2**(e-3) / 3
            //     ≤ 2**(e-3-log2(3))
            //     ≤ 2**(e-4.5)
            //
            // For the following iterations, we use the fact that, 2**(e-1) ≤ sqrt(a) ≤ x_n:
            // ε_{n+1} = ε_n² / | (2 * x_n) |
            //         ≤ (2**(e-k))² / (2 * 2**(e-1))
            //         ≤ 2**(2*e-2*k) / 2**e
            //         ≤ 2**(e-2*k)
            xn = (xn + a / xn) >> 1; // ε_1 := | x_1 - sqrt(a) | ≤ 2**(e-4.5)  -- special case, see above
            xn = (xn + a / xn) >> 1; // ε_2 := | x_2 - sqrt(a) | ≤ 2**(e-9)    -- general case with k = 4.5
            xn = (xn + a / xn) >> 1; // ε_3 := | x_3 - sqrt(a) | ≤ 2**(e-18)   -- general case with k = 9
            xn = (xn + a / xn) >> 1; // ε_4 := | x_4 - sqrt(a) | ≤ 2**(e-36)   -- general case with k = 18
            xn = (xn + a / xn) >> 1; // ε_5 := | x_5 - sqrt(a) | ≤ 2**(e-72)   -- general case with k = 36
            xn = (xn + a / xn) >> 1; // ε_6 := | x_6 - sqrt(a) | ≤ 2**(e-144)  -- general case with k = 72

            // Because e ≤ 128 (as discussed during the first estimation phase), we know have reached a precision
            // ε_6 ≤ 2**(e-144) < 1. Given we're operating on integers, then we can ensure that xn is now either
            // sqrt(a) or sqrt(a) + 1.
            return xn - SafeCast.toUint(xn > a / xn);
        }
    }

    /**
     * @dev Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && result * result < a);
        }
    }

    /**
     * @dev Return the log in base 2 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log2(uint256 x) internal pure returns (uint256 r) {
        // If value has upper 128 bits set, log2 result is at least 128
        r = SafeCast.toUint(x > 0xffffffffffffffffffffffffffffffff) << 7;
        // If upper 64 bits of 128-bit half set, add 64 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffffffffffff) << 6;
        // If upper 32 bits of 64-bit half set, add 32 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffff) << 5;
        // If upper 16 bits of 32-bit half set, add 16 to result
        r |= SafeCast.toUint((x >> r) > 0xffff) << 4;
        // If upper 8 bits of 16-bit half set, add 8 to result
        r |= SafeCast.toUint((x >> r) > 0xff) << 3;
        // If upper 4 bits of 8-bit half set, add 4 to result
        r |= SafeCast.toUint((x >> r) > 0xf) << 2;

        // Shifts value right by the current result and use it as an index into this lookup table:
        //
        // | x (4 bits) |  index  | table[index] = MSB position |
        // |------------|---------|-----------------------------|
        // |    0000    |    0    |        table[0] = 0         |
        // |    0001    |    1    |        table[1] = 0         |
        // |    0010    |    2    |        table[2] = 1         |
        // |    0011    |    3    |        table[3] = 1         |
        // |    0100    |    4    |        table[4] = 2         |
        // |    0101    |    5    |        table[5] = 2         |
        // |    0110    |    6    |        table[6] = 2         |
        // |    0111    |    7    |        table[7] = 2         |
        // |    1000    |    8    |        table[8] = 3         |
        // |    1001    |    9    |        table[9] = 3         |
        // |    1010    |   10    |        table[10] = 3        |
        // |    1011    |   11    |        table[11] = 3        |
        // |    1100    |   12    |        table[12] = 3        |
        // |    1101    |   13    |        table[13] = 3        |
        // |    1110    |   14    |        table[14] = 3        |
        // |    1111    |   15    |        table[15] = 3        |
        //
        // The lookup table is represented as a 32-byte value with the MSB positions for 0-15 in the last 16 bytes.
        assembly ("memory-safe") {
            r := or(r, byte(shr(r, x), 0x0000010102020202030303030303030300000000000000000000000000000000))
        }
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << result < value);
        }
    }

    /**
     * @dev Return the log in base 10 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 10 ** result < value);
        }
    }

    /**
     * @dev Return the log in base 256 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 x) internal pure returns (uint256 r) {
        // If value has upper 128 bits set, log2 result is at least 128
        r = SafeCast.toUint(x > 0xffffffffffffffffffffffffffffffff) << 7;
        // If upper 64 bits of 128-bit half set, add 64 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffffffffffff) << 6;
        // If upper 32 bits of 64-bit half set, add 32 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffff) << 5;
        // If upper 16 bits of 32-bit half set, add 16 to result
        r |= SafeCast.toUint((x >> r) > 0xffff) << 4;
        // Add 1 if upper 8 bits of 16-bit half set, and divide accumulated result by 8
        return (r >> 3) | SafeCast.toUint((x >> r) > 0xff);
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << (result << 3) < value);
        }
    }

    /**
     * @dev Returns whether a provided rounding mode is considered rounding up for unsigned integers.
     */
    function unsignedRoundsUp(Rounding rounding) internal pure returns (bool) {
        return uint8(rounding) % 2 == 1;
    }
}

// src/interfaces/IInfraredGovernanceToken.sol

interface IInfraredGovernanceToken is IERC20Mintable, IAccessControl {
    /// @notice The address of the InfraredBGT token
    function ibgt() external view returns (address);
    /// @notice The address of the Infrared contract
    function infrared() external view returns (address);
    /// @notice returns paused status of the contract
    function paused() external view returns (bool);
}

// lib/contracts/src/pol/interfaces/IRewardVault.sol

interface IRewardVault is IPOLErrors, IStakingRewards {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           EVENTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Emitted when a delegate has staked on behalf of an account.
    /// @param account The account whose delegate has staked.
    /// @param delegate The delegate that has staked.
    /// @param amount The amount of staked tokens.
    event DelegateStaked(address indexed account, address indexed delegate, uint256 amount);

    /// @notice Emitted when a delegate has withdrawn on behalf of an account.
    /// @param account The account whose delegate has withdrawn.
    /// @param delegate The delegate that has withdrawn.
    /// @param amount The amount of withdrawn tokens.
    event DelegateWithdrawn(address indexed account, address indexed delegate, uint256 amount);

    /// @notice Emitted when a token has been recovered.
    /// @param token The token that has been recovered.
    /// @param amount The amount of token recovered.
    event Recovered(address token, uint256 amount);

    /// @notice Emitted when the msg.sender has set an operator to handle its rewards.
    /// @param account The account that has set the operator.
    /// @param operator The operator that has been set.
    event OperatorSet(address account, address operator);

    /// @notice Emitted when the distributor is set.
    /// @param distributor The address of the distributor.
    event DistributorSet(address indexed distributor);

    /// @notice Emitted when the manager of an incentive token is changed.
    /// @param token The address of the incentive token.
    /// @param newManager The new manager of the incentive token.
    /// @param oldManager The old manager of the incentive token.
    event IncentiveManagerChanged(address indexed token, address newManager, address oldManager);

    /// @notice Emitted when an incentive token is whitelisted.
    /// @param token The address of the token that has been whitelisted.
    /// @param minIncentiveRate The minimum amount of the token to incentivize per BGT emission.
    /// @param manager The address of the manager that can addIncentive for this incentive token.
    event IncentiveTokenWhitelisted(address indexed token, uint256 minIncentiveRate, address manager);

    /// @notice Emitted when an incentive token is removed.
    /// @param token The address of the token that has been removed.
    event IncentiveTokenRemoved(address indexed token);

    /// @notice Emitted when maxIncentiveTokensCount is updated.
    /// @param maxIncentiveTokensCount The max count of incentive tokens.
    event MaxIncentiveTokensCountUpdated(uint8 maxIncentiveTokensCount);

    /// @notice Emitted when validator share of incentives are processed to the operator address of a validator.
    event IncentivesProcessed(bytes indexed pubkey, address indexed token, uint256 bgtEmitted, uint256 amount);

    /// @notice Emitted when validator share of incentives fail to be processed to the operator address of a validator.
    event IncentivesProcessFailed(bytes indexed pubkey, address indexed token, uint256 bgtEmitted, uint256 amount);

    /// @notice Emitted when incentives are added to the vault.
    /// @param token The incentive token.
    /// @param sender The address that added the incentive.
    /// @param amount The amount of the incentive.
    /// @param incentiveRate The amount of the token to incentivize per BGT emission.
    event IncentiveAdded(address indexed token, address sender, uint256 amount, uint256 incentiveRate);

    /// @notice Emitted when the BGT booster share of the incentive is processed.
    /// @param pubkey The pubkey of the validator.
    /// @param token The address of the incentive token.
    /// @param bgtEmitted The amount of BGT emitted by the validator.
    /// @param amount The amount of the incentive.
    event BGTBoosterIncentivesProcessed(
        bytes indexed pubkey, address indexed token, uint256 bgtEmitted, uint256 amount
    );

    /// @notice Emitted when the BGT booster share of the incentive fails to be processed.
    /// @param pubkey The pubkey of the validator.
    /// @param token The address of the incentive token.
    /// @param bgtEmitted The amount of BGT emitted by the validator.
    /// @param amount The amount of the incentive.
    event BGTBoosterIncentivesProcessFailed(
        bytes indexed pubkey, address indexed token, uint256 bgtEmitted, uint256 amount
    );

    /// @notice Emitted when the reward duration manager is set.
    /// @param newRewardDurationManager The address of the new reward duration manager.
    /// @param oldRewardDurationManager The address of the old reward duration manager.
    event RewardDurationManagerSet(address indexed newRewardDurationManager, address indexed oldRewardDurationManager);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          GETTERS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Get the address that is allowed to distribute rewards.
    /// @return The address that is allowed to distribute rewards.
    function distributor() external view returns (address);

    /// @notice Get the operator for an account.
    /// @param account The account to get the operator for.
    /// @return The operator for the account.
    function operator(address account) external view returns (address);

    /// @notice Get the count of active incentive tokens.
    /// @return The count of active incentive tokens.
    function getWhitelistedTokensCount() external view returns (uint256);

    /// @notice Get the list of whitelisted tokens.
    /// @return The list of whitelisted tokens.
    function getWhitelistedTokens() external view returns (address[] memory);

    /// @notice Get the total amount staked by delegates.
    /// @return The total amount staked by delegates.
    function getTotalDelegateStaked(address account) external view returns (uint256);

    /// @notice Get the amount staked by a delegate on behalf of an account.
    /// @return The amount staked by a delegate.
    function getDelegateStake(address account, address delegate) external view returns (uint256);

    /// @notice Check if the cool down period has passed.
    /// @return True if the cool down period has passed, false otherwise.
    function isRewardDurationCoolDownPeriodPassed() external view returns (bool);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         ADMIN                              */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Initialize the vault, this is only callable once and by the factory since its the deployer.
     * @param _berachef The address of the berachef.
     * @param _bgt The address of the BGT token.
     * @param _distributor The address of the distributor.
     * @param _stakingToken The address of the staking token.
     */
    function initialize(address _berachef, address _bgt, address _distributor, address _stakingToken) external;

    /// @notice Allows the factory owner to set the contract that is allowed to distribute rewards.
    /// @param _rewardDistribution The address that is allowed to distribute rewards.
    function setDistributor(address _rewardDistribution) external;

    /// @notice Allows the distributor to notify the reward amount.
    /// @param pubkey The pubkey of the validator.
    /// @param reward The amount of reward to notify.
    function notifyRewardAmount(bytes calldata pubkey, uint256 reward) external;

    /// @notice Allows the factory owner to recover any ERC20 token from the vault.
    /// @param tokenAddress The address of the token to recover.
    /// @param tokenAmount The amount of token to recover.
    function recoverERC20(address tokenAddress, uint256 tokenAmount) external;

    /// @notice Allows the reward duration manager to update the duration of the rewards.
    /// @dev The duration must be between `MIN_REWARD_DURATION` and `MAX_REWARD_DURATION`.
    /// @param _rewardsDuration The new duration of the rewards.
    function setRewardsDuration(uint256 _rewardsDuration) external;

    /// @notice Allows the factory owner to whitelist a token to incentivize with.
    /// @param token The address of the token to whitelist.
    /// @param minIncentiveRate The minimum amount of the token to incentivize per BGT emission.
    /// @param manager The address of the manager that can addIncentive for this token.
    function whitelistIncentiveToken(address token, uint256 minIncentiveRate, address manager) external;

    /// @notice Allows the factory vault manager to remove a whitelisted incentive token.
    /// @param token The address of the token to remove.
    function removeIncentiveToken(address token) external;

    /// @notice Allows the factory owner to update the maxIncentiveTokensCount.
    /// @param _maxIncentiveTokensCount The new maxIncentiveTokens count.
    function setMaxIncentiveTokensCount(uint8 _maxIncentiveTokensCount) external;

    /// @notice Allows the factory vault pauser to pause the vault.
    function pause() external;

    /// @notice Allows the factory vault manager to unpause the vault.
    function unpause() external;

    /// @notice Allows the factory vault manager to set the address responsible for setting the reward duration.
    /// @param _rewardDurationManager The address of the reward duration manager.
    function setRewardDurationManager(address _rewardDurationManager) external;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         MUTATIVE                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Exit the vault with the staked tokens and claim the reward.
    /// @dev Only the account holder can call this function, not the operator.
    /// @dev Clears out the user self-staked balance and rewards.
    /// @param recipient The address to send the 'BGT' reward to.
    function exit(address recipient) external;

    /// @notice Claim the reward.
    /// @dev The operator only handles BGT, not STAKING_TOKEN.
    /// @dev Callable by the operator or the account holder.
    /// @param account The account to get the reward for.
    /// @param recipient The address to send the reward to.
    /// @return The amount of the reward claimed.
    function getReward(address account, address recipient) external returns (uint256);

    /// @notice Stake tokens in the vault.
    /// @param amount The amount of tokens to stake.
    function stake(uint256 amount) external;

    /// @notice Stake tokens on behalf of another account.
    /// @param account The account to stake for.
    /// @param amount The amount of tokens to stake.
    function delegateStake(address account, uint256 amount) external;

    /// @notice Withdraw the staked tokens from the vault.
    /// @param amount The amount of tokens to withdraw.
    function withdraw(uint256 amount) external;

    /// @notice Withdraw tokens staked on behalf of another account by the delegate (msg.sender).
    /// @param account The account to withdraw for.
    /// @param amount The amount of tokens to withdraw.
    function delegateWithdraw(address account, uint256 amount) external;

    /// @notice Allows msg.sender to set another address to claim and manage their rewards.
    /// @param _operator The address that will be allowed to claim and manage rewards.
    function setOperator(address _operator) external;

    /// @notice Update the manager of an incentive token.
    /// @dev Permissioned function, only allow factory owner to update the manager.
    /// @param token The address of the incentive token.
    /// @param newManager The new manager of the incentive token.
    function updateIncentiveManager(address token, address newManager) external;

    /// @notice Add an incentive token to the vault.
    /// @notice The incentive token's transfer should not exceed a gas usage of 500k units.
    /// In case the transfer exceeds 500k gas units, your incentive will fail to be transferred to the validator and
    /// its delegates.
    /// @param token The address of the token to add as an incentive.
    /// @param amount The amount of the token to add as an incentive.
    /// @param incentiveRate The amount of the token to incentivize per BGT emission.
    /// @dev Permissioned function, only callable by incentive token manager.
    function addIncentive(address token, uint256 amount, uint256 incentiveRate) external;

    /// @notice Process incentives added via IERC20.transfer, adding them to the incentive accounting.
    /// @notice Allows permissionless incentive addition, without dossing the manager possibility to
    /// let the incentive accounting go to 0 in order to be able to decrease the incentive rate.
    /// @param token The address of the token to process.
    /// @param amount The amount of token to account as incentive.
    /// @dev Permissioned function, only callable by incentive token manager.
    function accountIncentives(address token, uint256 amount) external;
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/access/AccessControl.sol

// OpenZeppelin Contracts (last updated v5.3.0) (access/AccessControl.sol)

/**
 * @dev Contract module that allows children to implement role-based access
 * control mechanisms. This is a lightweight version that doesn't allow enumerating role
 * members except through off-chain means by accessing the contract event logs. Some
 * applications may benefit from on-chain enumerability, for those cases see
 * {AccessControlEnumerable}.
 *
 * Roles are referred to by their `bytes32` identifier. These should be exposed
 * in the external API and be unique. The best way to achieve this is by
 * using `public constant` hash digests:
 *
 * ```solidity
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```solidity
 * function foo() public {
 *     require(hasRole(MY_ROLE, msg.sender));
 *     ...
 * }
 * ```
 *
 * Roles can be granted and revoked dynamically via the {grantRole} and
 * {revokeRole} functions. Each role has an associated admin role, and only
 * accounts that have a role's admin role can call {grantRole} and {revokeRole}.
 *
 * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
 * that only accounts with this role will be able to grant or revoke other
 * roles. More complex role relationships can be created by using
 * {_setRoleAdmin}.
 *
 * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
 * grant and revoke this role. Extra precautions should be taken to secure
 * accounts that have been granted it. We recommend using {AccessControlDefaultAdminRules}
 * to enforce additional security measures for this role.
 */
abstract contract AccessControl is Context, IAccessControl, ERC165 {
    struct RoleData {
        mapping(address account => bool) hasRole;
        bytes32 adminRole;
    }

    mapping(bytes32 role => RoleData) private _roles;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with an {AccessControlUnauthorizedAccount} error including the required role.
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual returns (bool) {
        return _roles[role].hasRole[account];
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `_msgSender()`
     * is missing `role`. Overriding this function changes the behavior of the {onlyRole} modifier.
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `account`
     * is missing `role`.
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert AccessControlUnauthorizedAccount(account, role);
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual returns (bytes32) {
        return _roles[role].adminRole;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been revoked `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `callerConfirmation`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address callerConfirmation) public virtual {
        if (callerConfirmation != _msgSender()) {
            revert AccessControlBadConfirmation();
        }

        _revokeRole(role, callerConfirmation);
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        bytes32 previousAdminRole = getRoleAdmin(role);
        _roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Attempts to grant `role` to `account` and returns a boolean indicating if `role` was granted.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual returns (bool) {
        if (!hasRole(role, account)) {
            _roles[role].hasRole[account] = true;
            emit RoleGranted(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Attempts to revoke `role` from `account` and returns a boolean indicating if `role` was revoked.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual returns (bool) {
        if (hasRole(role, account)) {
            _roles[role].hasRole[account] = false;
            emit RoleRevoked(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol

// OpenZeppelin Contracts (last updated v5.3.0) (token/ERC20/ERC20.sol)

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * The default value of {decimals} is 18. To change this, you should override
 * this function so it returns a different value.
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC-20
 * applications.
 */
abstract contract ERC20_1 is Context, IERC20, IERC20Metadata, IERC20Errors {
    mapping(address account => uint256) private _balances;

    mapping(address account => mapping(address spender => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * Both values are immutable: they can only be set once during construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    /// @inheritdoc IERC20
    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    /// @inheritdoc IERC20
    function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `value`.
     */
    function transfer(address to, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    /// @inheritdoc IERC20
    function allowance(address owner, address spender) public view virtual returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `value` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Skips emitting an {Approval} event indicating an allowance update. This is not
     * required by the ERC. See {xref-ERC20-_approve-address-address-uint256-bool-}[_approve].
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `value`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `value`.
     */
    function transferFrom(address from, address to, uint256 value) public virtual returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _transfer(address from, address to, uint256 value) internal {
        if (from == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        if (to == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(from, to, value);
    }

    /**
     * @dev Transfers a `value` amount of tokens from `from` to `to`, or alternatively mints (or burns) if `from`
     * (or `to`) is the zero address. All customizations to transfers, mints, and burns should be done by overriding
     * this function.
     *
     * Emits a {Transfer} event.
     */
    function _update(address from, address to, uint256 value) internal virtual {
        if (from == address(0)) {
            // Overflow check required: The rest of the code assumes that totalSupply never overflows
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                _balances[from] = fromBalance - value;
            }
        }

        if (to == address(0)) {
            unchecked {
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.
                _totalSupply -= value;
            }
        } else {
            unchecked {
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
                _balances[to] += value;
            }
        }

        emit Transfer(from, to, value);
    }

    /**
     * @dev Creates a `value` amount of tokens and assigns them to `account`, by transferring it from address(0).
     * Relies on the `_update` mechanism
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _mint(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(address(0), account, value);
    }

    /**
     * @dev Destroys a `value` amount of tokens from `account`, lowering the total supply.
     * Relies on the `_update` mechanism.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead
     */
    function _burn(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        _update(account, address(0), value);
    }

    /**
     * @dev Sets `value` as the allowance of `spender` over the `owner`'s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     *
     * Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument.
     */
    function _approve(address owner, address spender, uint256 value) internal {
        _approve(owner, spender, value, true);
    }

    /**
     * @dev Variant of {_approve} with an optional flag to enable or disable the {Approval} event.
     *
     * By default (when calling {_approve}) the flag is set to true. On the other hand, approval changes made by
     * `_spendAllowance` during the `transferFrom` operation set the flag to false. This saves gas by not emitting any
     * `Approval` event during `transferFrom` operations.
     *
     * Anyone who wishes to continue emitting `Approval` events on the`transferFrom` operation can force the flag to
     * true using the following override:
     *
     * ```solidity
     * function _approve(address owner, address spender, uint256 value, bool) internal virtual override {
     *     super._approve(owner, spender, value, true);
     * }
     * ```
     *
     * Requirements are the same as {_approve}.
     */
    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual {
        if (owner == address(0)) {
            revert ERC20InvalidApprover(address(0));
        }
        if (spender == address(0)) {
            revert ERC20InvalidSpender(address(0));
        }
        _allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    /**
     * @dev Updates `owner`'s allowance for `spender` based on spent `value`.
     *
     * Does not update the allowance value in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Does not emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance < type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(spender, currentAllowance, value);
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }
}

// src/interfaces/IInfraredVault.sol

interface IInfraredVault is IMultiRewards {
    /**
     * @notice A struct to hold a user's reward information
     * @param token The address of the reward token
     * @param amount The amount of reward tokens
     */
    struct UserReward {
        address token;
        uint256 amount;
    }

    /**
     * @notice Returns all reward tokens
     * @return An array of reward token addresses
     */
    function getAllRewardTokens() external view returns (address[] memory);

    /**
     * @notice Returns all rewards for a user
     * @notice Only up to date since the `lastUpdateTime`
     * @param _user The address of the user
     * @return An array of UserReward structs
     */
    function getAllRewardsForUser(address _user)
        external
        view
        returns (UserReward[] memory);

    /**
     * @notice Returns the Infrared protocol coordinator
     * @return The address of the Infrared contract
     */
    function infrared() external view returns (address);

    /**
     * @notice Returns the associated Berachain rewards vault
     * @return The rewards vault contract instance
     */
    function rewardsVault() external view returns (IRewardVault);

    /**
     * @notice Updates reward duration for a specific reward token
     * @dev Only callable by Infrared contract
     * @param _rewardsToken The address of the reward token
     * @param _rewardsDuration The new duration in seconds
     * @custom:access-control Requires INFRARED_ROLE
     */
    function updateRewardsDuration(
        address _rewardsToken,
        uint256 _rewardsDuration
    ) external;

    /**
     * @notice Pauses staking functionality on a specific vault
     * @custom:access-control Requires INFRARED_ROLE
     */
    function pauseStaking() external;

    /**
     * @notice Un-pauses staking functionality on a specific vault
     * @custom:access-control Requires INFRARED_ROLE
     */
    function unpauseStaking() external;

    /**
     * @notice Adds a new reward token to the vault
     * @dev Cannot exceed maximum number of reward tokens
     * @param _rewardsToken The reward token to add
     * @param _rewardsDuration The reward period duration
     * @custom:access-control Requires INFRARED_ROLE
     */
    function addReward(address _rewardsToken, uint256 _rewardsDuration)
        external;

    /**
     * @notice Used to remove malicious or unused reward tokens
     * @param _rewardsToken The reward token to remove
     * @custom:access-control Requires INFRARED_ROLE
     */
    function removeReward(address _rewardsToken) external;

    /**
     * @notice Notifies the vault of newly added rewards
     * @dev Updates internal reward rate calculations
     * @param _rewardToken The reward token address
     * @param _reward The amount of new rewards
     */
    function notifyRewardAmount(address _rewardToken, uint256 _reward)
        external;

    /**
     * @notice Recovers accidentally sent tokens
     * @dev Cannot recover staking token or active reward tokens
     * @param _to The address to receive the recovered tokens
     * @param _token The token to recover
     * @param _amount The amount to recover
     */
    function recoverERC20(address _to, address _token, uint256 _amount)
        external;
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Arrays.sol

// OpenZeppelin Contracts (last updated v5.3.0) (utils/Arrays.sol)
// This file was procedurally generated from scripts/generate/templates/Arrays.js.

/**
 * @dev Collection of functions related to array types.
 */
library Arrays {
    using SlotDerivation for bytes32;
    using StorageSlot for bytes32;

    /**
     * @dev Sort an array of uint256 (in memory) following the provided comparator function.
     *
     * This function does the sorting "in place", meaning that it overrides the input. The object is returned for
     * convenience, but that returned value can be discarded safely if the caller has a memory pointer to the array.
     *
     * NOTE: this function's cost is `O(n · log(n))` in average and `O(n²)` in the worst case, with n the length of the
     * array. Using it in view functions that are executed through `eth_call` is safe, but one should be very careful
     * when executing this as part of a transaction. If the array being sorted is too large, the sort operation may
     * consume more gas than is available in a block, leading to potential DoS.
     *
     * IMPORTANT: Consider memory side-effects when using custom comparator functions that access memory in an unsafe way.
     */
    function sort(
        uint256[] memory array,
        function(uint256, uint256) pure returns (bool) comp
    ) internal pure returns (uint256[] memory) {
        _quickSort(_begin(array), _end(array), comp);
        return array;
    }

    /**
     * @dev Variant of {sort} that sorts an array of uint256 in increasing order.
     */
    function sort(uint256[] memory array) internal pure returns (uint256[] memory) {
        sort(array, Comparators.lt);
        return array;
    }

    /**
     * @dev Sort an array of address (in memory) following the provided comparator function.
     *
     * This function does the sorting "in place", meaning that it overrides the input. The object is returned for
     * convenience, but that returned value can be discarded safely if the caller has a memory pointer to the array.
     *
     * NOTE: this function's cost is `O(n · log(n))` in average and `O(n²)` in the worst case, with n the length of the
     * array. Using it in view functions that are executed through `eth_call` is safe, but one should be very careful
     * when executing this as part of a transaction. If the array being sorted is too large, the sort operation may
     * consume more gas than is available in a block, leading to potential DoS.
     *
     * IMPORTANT: Consider memory side-effects when using custom comparator functions that access memory in an unsafe way.
     */
    function sort(
        address[] memory array,
        function(address, address) pure returns (bool) comp
    ) internal pure returns (address[] memory) {
        sort(_castToUint256Array(array), _castToUint256Comp(comp));
        return array;
    }

    /**
     * @dev Variant of {sort} that sorts an array of address in increasing order.
     */
    function sort(address[] memory array) internal pure returns (address[] memory) {
        sort(_castToUint256Array(array), Comparators.lt);
        return array;
    }

    /**
     * @dev Sort an array of bytes32 (in memory) following the provided comparator function.
     *
     * This function does the sorting "in place", meaning that it overrides the input. The object is returned for
     * convenience, but that returned value can be discarded safely if the caller has a memory pointer to the array.
     *
     * NOTE: this function's cost is `O(n · log(n))` in average and `O(n²)` in the worst case, with n the length of the
     * array. Using it in view functions that are executed through `eth_call` is safe, but one should be very careful
     * when executing this as part of a transaction. If the array being sorted is too large, the sort operation may
     * consume more gas than is available in a block, leading to potential DoS.
     *
     * IMPORTANT: Consider memory side-effects when using custom comparator functions that access memory in an unsafe way.
     */
    function sort(
        bytes32[] memory array,
        function(bytes32, bytes32) pure returns (bool) comp
    ) internal pure returns (bytes32[] memory) {
        sort(_castToUint256Array(array), _castToUint256Comp(comp));
        return array;
    }

    /**
     * @dev Variant of {sort} that sorts an array of bytes32 in increasing order.
     */
    function sort(bytes32[] memory array) internal pure returns (bytes32[] memory) {
        sort(_castToUint256Array(array), Comparators.lt);
        return array;
    }

    /**
     * @dev Performs a quick sort of a segment of memory. The segment sorted starts at `begin` (inclusive), and stops
     * at end (exclusive). Sorting follows the `comp` comparator.
     *
     * Invariant: `begin <= end`. This is the case when initially called by {sort} and is preserved in subcalls.
     *
     * IMPORTANT: Memory locations between `begin` and `end` are not validated/zeroed. This function should
     * be used only if the limits are within a memory array.
     */
    function _quickSort(uint256 begin, uint256 end, function(uint256, uint256) pure returns (bool) comp) private pure {
        unchecked {
            if (end - begin < 0x40) return;

            // Use first element as pivot
            uint256 pivot = _mload(begin);
            // Position where the pivot should be at the end of the loop
            uint256 pos = begin;

            for (uint256 it = begin + 0x20; it < end; it += 0x20) {
                if (comp(_mload(it), pivot)) {
                    // If the value stored at the iterator's position comes before the pivot, we increment the
                    // position of the pivot and move the value there.
                    pos += 0x20;
                    _swap(pos, it);
                }
            }

            _swap(begin, pos); // Swap pivot into place
            _quickSort(begin, pos, comp); // Sort the left side of the pivot
            _quickSort(pos + 0x20, end, comp); // Sort the right side of the pivot
        }
    }

    /**
     * @dev Pointer to the memory location of the first element of `array`.
     */
    function _begin(uint256[] memory array) private pure returns (uint256 ptr) {
        assembly ("memory-safe") {
            ptr := add(array, 0x20)
        }
    }

    /**
     * @dev Pointer to the memory location of the first memory word (32bytes) after `array`. This is the memory word
     * that comes just after the last element of the array.
     */
    function _end(uint256[] memory array) private pure returns (uint256 ptr) {
        unchecked {
            return _begin(array) + array.length * 0x20;
        }
    }

    /**
     * @dev Load memory word (as a uint256) at location `ptr`.
     */
    function _mload(uint256 ptr) private pure returns (uint256 value) {
        assembly {
            value := mload(ptr)
        }
    }

    /**
     * @dev Swaps the elements memory location `ptr1` and `ptr2`.
     */
    function _swap(uint256 ptr1, uint256 ptr2) private pure {
        assembly {
            let value1 := mload(ptr1)
            let value2 := mload(ptr2)
            mstore(ptr1, value2)
            mstore(ptr2, value1)
        }
    }

    /// @dev Helper: low level cast address memory array to uint256 memory array
    function _castToUint256Array(address[] memory input) private pure returns (uint256[] memory output) {
        assembly {
            output := input
        }
    }

    /// @dev Helper: low level cast bytes32 memory array to uint256 memory array
    function _castToUint256Array(bytes32[] memory input) private pure returns (uint256[] memory output) {
        assembly {
            output := input
        }
    }

    /// @dev Helper: low level cast address comp function to uint256 comp function
    function _castToUint256Comp(
        function(address, address) pure returns (bool) input
    ) private pure returns (function(uint256, uint256) pure returns (bool) output) {
        assembly {
            output := input
        }
    }

    /// @dev Helper: low level cast bytes32 comp function to uint256 comp function
    function _castToUint256Comp(
        function(bytes32, bytes32) pure returns (bool) input
    ) private pure returns (function(uint256, uint256) pure returns (bool) output) {
        assembly {
            output := input
        }
    }

    /**
     * @dev Searches a sorted `array` and returns the first index that contains
     * a value greater or equal to `element`. If no such index exists (i.e. all
     * values in the array are strictly less than `element`), the array length is
     * returned. Time complexity O(log n).
     *
     * NOTE: The `array` is expected to be sorted in ascending order, and to
     * contain no repeated elements.
     *
     * IMPORTANT: Deprecated. This implementation behaves as {lowerBound} but lacks
     * support for repeated elements in the array. The {lowerBound} function should
     * be used instead.
     */
    function findUpperBound(uint256[] storage array, uint256 element) internal view returns (uint256) {
        uint256 low = 0;
        uint256 high = array.length;

        if (high == 0) {
            return 0;
        }

        while (low < high) {
            uint256 mid = Math.average(low, high);

            // Note that mid will always be strictly less than high (i.e. it will be a valid array index)
            // because Math.average rounds towards zero (it does integer division with truncation).
            if (unsafeAccess(array, mid).value > element) {
                high = mid;
            } else {
                low = mid + 1;
            }
        }

        // At this point `low` is the exclusive upper bound. We will return the inclusive upper bound.
        if (low > 0 && unsafeAccess(array, low - 1).value == element) {
            return low - 1;
        } else {
            return low;
        }
    }

    /**
     * @dev Searches an `array` sorted in ascending order and returns the first
     * index that contains a value greater or equal than `element`. If no such index
     * exists (i.e. all values in the array are strictly less than `element`), the array
     * length is returned. Time complexity O(log n).
     *
     * See C++'s https://en.cppreference.com/w/cpp/algorithm/lower_bound[lower_bound].
     */
    function lowerBound(uint256[] storage array, uint256 element) internal view returns (uint256) {
        uint256 low = 0;
        uint256 high = array.length;

        if (high == 0) {
            return 0;
        }

        while (low < high) {
            uint256 mid = Math.average(low, high);

            // Note that mid will always be strictly less than high (i.e. it will be a valid array index)
            // because Math.average rounds towards zero (it does integer division with truncation).
            if (unsafeAccess(array, mid).value < element) {
                // this cannot overflow because mid < high
                unchecked {
                    low = mid + 1;
                }
            } else {
                high = mid;
            }
        }

        return low;
    }

    /**
     * @dev Searches an `array` sorted in ascending order and returns the first
     * index that contains a value strictly greater than `element`. If no such index
     * exists (i.e. all values in the array are strictly less than `element`), the array
     * length is returned. Time complexity O(log n).
     *
     * See C++'s https://en.cppreference.com/w/cpp/algorithm/upper_bound[upper_bound].
     */
    function upperBound(uint256[] storage array, uint256 element) internal view returns (uint256) {
        uint256 low = 0;
        uint256 high = array.length;

        if (high == 0) {
            return 0;
        }

        while (low < high) {
            uint256 mid = Math.average(low, high);

            // Note that mid will always be strictly less than high (i.e. it will be a valid array index)
            // because Math.average rounds towards zero (it does integer division with truncation).
            if (unsafeAccess(array, mid).value > element) {
                high = mid;
            } else {
                // this cannot overflow because mid < high
                unchecked {
                    low = mid + 1;
                }
            }
        }

        return low;
    }

    /**
     * @dev Same as {lowerBound}, but with an array in memory.
     */
    function lowerBoundMemory(uint256[] memory array, uint256 element) internal pure returns (uint256) {
        uint256 low = 0;
        uint256 high = array.length;

        if (high == 0) {
            return 0;
        }

        while (low < high) {
            uint256 mid = Math.average(low, high);

            // Note that mid will always be strictly less than high (i.e. it will be a valid array index)
            // because Math.average rounds towards zero (it does integer division with truncation).
            if (unsafeMemoryAccess(array, mid) < element) {
                // this cannot overflow because mid < high
                unchecked {
                    low = mid + 1;
                }
            } else {
                high = mid;
            }
        }

        return low;
    }

    /**
     * @dev Same as {upperBound}, but with an array in memory.
     */
    function upperBoundMemory(uint256[] memory array, uint256 element) internal pure returns (uint256) {
        uint256 low = 0;
        uint256 high = array.length;

        if (high == 0) {
            return 0;
        }

        while (low < high) {
            uint256 mid = Math.average(low, high);

            // Note that mid will always be strictly less than high (i.e. it will be a valid array index)
            // because Math.average rounds towards zero (it does integer division with truncation).
            if (unsafeMemoryAccess(array, mid) > element) {
                high = mid;
            } else {
                // this cannot overflow because mid < high
                unchecked {
                    low = mid + 1;
                }
            }
        }

        return low;
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeAccess(address[] storage arr, uint256 pos) internal pure returns (StorageSlot.AddressSlot storage) {
        bytes32 slot;
        assembly ("memory-safe") {
            slot := arr.slot
        }
        return slot.deriveArray().offset(pos).getAddressSlot();
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeAccess(bytes32[] storage arr, uint256 pos) internal pure returns (StorageSlot.Bytes32Slot storage) {
        bytes32 slot;
        assembly ("memory-safe") {
            slot := arr.slot
        }
        return slot.deriveArray().offset(pos).getBytes32Slot();
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeAccess(uint256[] storage arr, uint256 pos) internal pure returns (StorageSlot.Uint256Slot storage) {
        bytes32 slot;
        assembly ("memory-safe") {
            slot := arr.slot
        }
        return slot.deriveArray().offset(pos).getUint256Slot();
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeAccess(bytes[] storage arr, uint256 pos) internal pure returns (StorageSlot.BytesSlot storage) {
        bytes32 slot;
        assembly ("memory-safe") {
            slot := arr.slot
        }
        return slot.deriveArray().offset(pos).getBytesSlot();
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeAccess(string[] storage arr, uint256 pos) internal pure returns (StorageSlot.StringSlot storage) {
        bytes32 slot;
        assembly ("memory-safe") {
            slot := arr.slot
        }
        return slot.deriveArray().offset(pos).getStringSlot();
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeMemoryAccess(address[] memory arr, uint256 pos) internal pure returns (address res) {
        assembly {
            res := mload(add(add(arr, 0x20), mul(pos, 0x20)))
        }
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeMemoryAccess(bytes32[] memory arr, uint256 pos) internal pure returns (bytes32 res) {
        assembly {
            res := mload(add(add(arr, 0x20), mul(pos, 0x20)))
        }
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeMemoryAccess(uint256[] memory arr, uint256 pos) internal pure returns (uint256 res) {
        assembly {
            res := mload(add(add(arr, 0x20), mul(pos, 0x20)))
        }
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeMemoryAccess(bytes[] memory arr, uint256 pos) internal pure returns (bytes memory res) {
        assembly {
            res := mload(add(add(arr, 0x20), mul(pos, 0x20)))
        }
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeMemoryAccess(string[] memory arr, uint256 pos) internal pure returns (string memory res) {
        assembly {
            res := mload(add(add(arr, 0x20), mul(pos, 0x20)))
        }
    }

    /**
     * @dev Helper to set the length of a dynamic array. Directly writing to `.length` is forbidden.
     *
     * WARNING: this does not clear elements if length is reduced, of initialize elements if length is increased.
     */
    function unsafeSetLength(address[] storage array, uint256 len) internal {
        assembly ("memory-safe") {
            sstore(array.slot, len)
        }
    }

    /**
     * @dev Helper to set the length of a dynamic array. Directly writing to `.length` is forbidden.
     *
     * WARNING: this does not clear elements if length is reduced, of initialize elements if length is increased.
     */
    function unsafeSetLength(bytes32[] storage array, uint256 len) internal {
        assembly ("memory-safe") {
            sstore(array.slot, len)
        }
    }

    /**
     * @dev Helper to set the length of a dynamic array. Directly writing to `.length` is forbidden.
     *
     * WARNING: this does not clear elements if length is reduced, of initialize elements if length is increased.
     */
    function unsafeSetLength(uint256[] storage array, uint256 len) internal {
        assembly ("memory-safe") {
            sstore(array.slot, len)
        }
    }

    /**
     * @dev Helper to set the length of a dynamic array. Directly writing to `.length` is forbidden.
     *
     * WARNING: this does not clear elements if length is reduced, of initialize elements if length is increased.
     */
    function unsafeSetLength(bytes[] storage array, uint256 len) internal {
        assembly ("memory-safe") {
            sstore(array.slot, len)
        }
    }

    /**
     * @dev Helper to set the length of a dynamic array. Directly writing to `.length` is forbidden.
     *
     * WARNING: this does not clear elements if length is reduced, of initialize elements if length is increased.
     */
    function unsafeSetLength(string[] storage array, uint256 len) internal {
        assembly ("memory-safe") {
            sstore(array.slot, len)
        }
    }
}

// src/vendors/CustomPausable.sol

// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/extensions/ERC20Pausable.sol)

/**
 * @dev ERC-20 token with pausable token transfers, minting and burning.
 *
 * Useful for scenarios such as preventing trades until the end of an evaluation
 * period, or having an emergency switch for freezing all token transfers in the
 * event of a large bug.
 *
 * IMPORTANT: This contract does not include public pause and unpause functions. In
 * addition to inheriting this contract, you must define both functions, invoking the
 * {Pausable-_pause} and {Pausable-_unpause} internal functions, with appropriate
 * access control, e.g. using {AccessControl} or {Ownable}. Not doing so will
 * make the contract pause mechanism of the contract unreachable, and thus unusable.
 */
abstract contract CustomPausable is ERC20_1, Pausable {
    /**
     * @dev See {ERC20-_update}.
     *
     * This contract modifies the default behavior of ERC20Pausable.
     *
     * - When paused, transfers are not paused.
     * - The `whenNotPaused` modifier has been removed to allow transfers even when the contract is paused.
     * - Only minting and burning operations are paused when the contract is paused.
     */
    function _update(address from, address to, uint256 value)
        internal
        virtual
        override
    {
        super._update(from, to, value);
    }
}

// src/core/MultiRewards.sol

/**
 * @title MultiRewards
 * @dev Fork of https://github.com/curvefi/multi-rewards with hooks on stake/withdraw of LP tokens
 */
abstract contract MultiRewards is ReentrancyGuard, Pausable, IMultiRewards {
    using SafeTransferLib for ERC20_0;

    /*//////////////////////////////////////////////////////////////
                                STATE
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice The token that users stake to earn rewards
     * @dev This is the base token that users deposit into the contract
     */
    ERC20_0 public immutable stakingToken;

    /**
     * @notice Stores reward-related data for each reward token
     * @dev Maps reward token addresses to their Reward struct containing distribution parameters
     */
    mapping(address => Reward) public override rewardData;

    /**
     * @notice Array of all reward token addresses
     * @dev Used to iterate through all reward tokens when updating or claiming rewards
     */
    address[] public rewardTokens;

    /**
     * @notice Tracks the reward per token paid to each user for each reward token
     * @dev Maps user address to reward token address to amount already paid
     * Used to calculate new rewards since last claim
     */
    mapping(address => mapping(address => uint256)) public
        userRewardPerTokenPaid;

    /**
     * @notice Tracks the unclaimed rewards for each user for each reward token
     * @dev Maps user address to reward token address to unclaimed amount
     */
    mapping(address => mapping(address => uint256)) public rewards;

    /**
     * @notice The total amount of staking tokens in the contract
     * @dev Used to calculate rewards per token
     */
    uint256 internal _totalSupply;

    /**
     * @notice Maps user addresses to their staked token balance
     * @dev Internal mapping used to track individual stake amounts
     */
    mapping(address => uint256) internal _balances;

    /*//////////////////////////////////////////////////////////////
                        MODIFIERS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Updates the reward for the given account before executing the
     * function body.
     * @param account address The account to update the reward for.
     */
    modifier updateReward(address account) {
        for (uint256 i; i < rewardTokens.length; i++) {
            address token = rewardTokens[i];

            uint256 latestRewardPerToken = rewardPerToken(token);
            rewardData[token].rewardPerTokenStored = latestRewardPerToken;
            rewardData[token].lastUpdateTime = lastTimeRewardApplicable(token);

            if (account != address(0)) {
                rewards[account][token] = earned(account, token);
                userRewardPerTokenPaid[account][token] = latestRewardPerToken;
            }
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                        CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Constructs the MultiRewards contract.
     * @param _stakingToken address The token that users stake to earn rewards.
     */
    constructor(address _stakingToken) {
        stakingToken = ERC20_0(_stakingToken);
    }

    /*//////////////////////////////////////////////////////////////
                               READS
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IMultiRewards
    function totalSupply() external view returns (uint256) {
        return _totalSupply;
    }

    /// @inheritdoc IMultiRewards
    function balanceOf(address account)
        external
        view
        returns (uint256 _balance)
    {
        return _balances[account];
    }

    /// @inheritdoc IMultiRewards
    function lastTimeRewardApplicable(address _rewardsToken)
        public
        view
        returns (uint256)
    {
        // min value between timestamp and period finish
        uint256 periodFinish = rewardData[_rewardsToken].periodFinish;
        uint256 ts = block.timestamp;
        return ts < periodFinish ? ts : periodFinish;
    }

    /// @inheritdoc IMultiRewards
    function rewardPerToken(address _rewardsToken)
        public
        view
        returns (uint256)
    {
        if (_totalSupply == 0) {
            return rewardData[_rewardsToken].rewardPerTokenStored;
        }
        return rewardData[_rewardsToken].rewardPerTokenStored
            + (
                lastTimeRewardApplicable(_rewardsToken)
                    - rewardData[_rewardsToken].lastUpdateTime
            ) * rewardData[_rewardsToken].rewardRate * 1e18 / _totalSupply;
    }

    /// @inheritdoc IMultiRewards
    function earned(address account, address _rewardsToken)
        public
        view
        returns (uint256)
    {
        return (
            _balances[account]
                * (
                    rewardPerToken(_rewardsToken)
                        - userRewardPerTokenPaid[account][_rewardsToken]
                )
        ) / 1e18 + rewards[account][_rewardsToken];
    }

    /// @inheritdoc IMultiRewards
    function getRewardForDuration(address _rewardsToken)
        external
        view
        returns (uint256)
    {
        return rewardData[_rewardsToken].rewardRate
            * rewardData[_rewardsToken].rewardsDuration;
    }

    /*//////////////////////////////////////////////////////////////
                            WRITES
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IMultiRewards
    function stake(uint256 amount)
        external
        nonReentrant
        whenNotPaused
        updateReward(msg.sender)
    {
        require(amount > 0, "Cannot stake 0");
        _totalSupply = _totalSupply + amount;
        _balances[msg.sender] = _balances[msg.sender] + amount;

        // transfer staking token in then hook stake, for hook to have access to collateral
        stakingToken.safeTransferFrom(msg.sender, address(this), amount);
        onStake(amount);
        emit Staked(msg.sender, amount);
    }

    /**
     * @notice Hook called in the stake function after transfering staking token in
     * @param amount The amount of staking token transferred in to the contract
     */
    function onStake(uint256 amount) internal virtual;

    /// @inheritdoc IMultiRewards
    function withdraw(uint256 amount)
        public
        nonReentrant
        updateReward(msg.sender)
    {
        require(amount > 0, "Cannot withdraw 0");
        _totalSupply = _totalSupply - amount;
        _balances[msg.sender] = _balances[msg.sender] - amount;

        // hook withdraw then transfer staking token out
        onWithdraw(amount);
        stakingToken.safeTransfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }

    /**
     * @notice Hook called in withdraw function before transferring staking token out
     * @param amount The amount of staking token to be transferred out of the contract
     */
    function onWithdraw(uint256 amount) internal virtual;

    /// @inheritdoc IMultiRewards
    function getRewardForUser(address _user)
        public
        nonReentrant
        updateReward(_user)
    {
        onReward();
        uint256 len = rewardTokens.length;
        for (uint256 i; i < len; i++) {
            address _rewardsToken = rewardTokens[i];
            uint256 reward = rewards[_user][_rewardsToken];
            if (reward > 0) {
                (bool success, bytes memory data) = _rewardsToken.call{
                    gas: 200000
                }(
                    abi.encodeWithSelector(
                        ERC20_0.transfer.selector, _user, reward
                    )
                );
                if (success && (data.length == 0 || abi.decode(data, (bool)))) {
                    rewards[_user][_rewardsToken] = 0;
                    emit RewardPaid(_user, _rewardsToken, reward);
                } else {
                    continue;
                }
            }
        }
    }

    /**
     * @notice Hook called in getRewardForUser function
     */
    function onReward() internal virtual;

    /// @inheritdoc IMultiRewards
    function getReward() public {
        getRewardForUser(msg.sender);
    }

    /// @inheritdoc IMultiRewards
    function exit() external {
        withdraw(_balances[msg.sender]);
        getReward();
    }

    /*//////////////////////////////////////////////////////////////
                            RESTRICTED
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Adds a reward token to the contract.
     * @param _rewardsToken       address The address of the reward token.
     * @param _rewardsDistributor address The address of the rewards distributor.
     * @param _rewardsDuration    uint256 The duration of the rewards period.
     */
    function _addReward(
        address _rewardsToken,
        address _rewardsDistributor,
        uint256 _rewardsDuration
    ) internal {
        require(rewardData[_rewardsToken].rewardsDuration == 0);
        rewardTokens.push(_rewardsToken);
        rewardData[_rewardsToken].rewardsDistributor = _rewardsDistributor;
        rewardData[_rewardsToken].rewardsDuration = _rewardsDuration;
        emit RewardStored(_rewardsToken, _rewardsDuration);
    }

    /**
     * @notice Removes a reward token from the contract.
     * @param _rewardsToken address The address of the reward token.
     */
    function _removeReward(address _rewardsToken) internal {
        require(block.timestamp >= rewardData[_rewardsToken].periodFinish);
        // Remove from the array
        for (uint256 i; i < rewardTokens.length; i++) {
            if (rewardTokens[i] == _rewardsToken) {
                rewardTokens[i] = rewardTokens[rewardTokens.length - 1];
                rewardTokens.pop();
                break;
            }
        }

        delete rewardData[_rewardsToken];
        emit RewardRemoved(_rewardsToken);
    }

    /**
     * @notice Notifies the contract that reward tokens is being sent to the contract.
     * @param _rewardsToken address The address of the reward token.
     * @param reward        uint256 The amount of reward tokens is being sent to the contract.
     */
    function _notifyRewardAmount(address _rewardsToken, uint256 reward)
        internal
        updateReward(address(0))
    {
        // handle the transfer of reward tokens via `transferFrom` to reduce the number
        // of transactions required and ensure correctness of the reward amount
        ERC20_0(_rewardsToken).safeTransferFrom(msg.sender, address(this), reward);
        // add in the prior residual amount and account for new residual
        // @dev residual used to account for precision loss when dividing reward by rewardsDuration
        reward = reward + rewardData[_rewardsToken].rewardResidual;
        rewardData[_rewardsToken].rewardResidual =
            reward % rewardData[_rewardsToken].rewardsDuration;
        reward = reward - rewardData[_rewardsToken].rewardResidual;

        if (block.timestamp >= rewardData[_rewardsToken].periodFinish) {
            rewardData[_rewardsToken].rewardRate =
                reward / rewardData[_rewardsToken].rewardsDuration;
        } else {
            uint256 remaining =
                rewardData[_rewardsToken].periodFinish - block.timestamp;
            uint256 leftover = remaining * rewardData[_rewardsToken].rewardRate;

            // Calculate total and its residual
            uint256 totalAmount =
                reward + leftover + rewardData[_rewardsToken].rewardResidual;
            rewardData[_rewardsToken].rewardResidual =
                totalAmount % rewardData[_rewardsToken].rewardsDuration;

            // Remove residual before setting rate
            totalAmount = totalAmount - rewardData[_rewardsToken].rewardResidual;
            rewardData[_rewardsToken].rewardRate =
                totalAmount / rewardData[_rewardsToken].rewardsDuration;
        }

        rewardData[_rewardsToken].lastUpdateTime = block.timestamp;
        rewardData[_rewardsToken].periodFinish =
            block.timestamp + rewardData[_rewardsToken].rewardsDuration;
        emit RewardAdded(_rewardsToken, reward);
    }

    /**
     * @notice Recovers ERC20 tokens sent to the contract.
     * @dev Added to support recovering LP Rewards from other systems such as BAL to be distributed to holders
     * @param to           address The address to send the tokens to.
     * @param tokenAddress address The address of the token to withdraw.
     * @param tokenAmount  uint256 The amount of tokens to withdraw.
     */
    function _recoverERC20(
        address to,
        address tokenAddress,
        uint256 tokenAmount
    ) internal {
        require(
            rewardData[tokenAddress].lastUpdateTime == 0,
            "Cannot withdraw reward token"
        );
        ERC20_0(tokenAddress).safeTransfer(to, tokenAmount);
        emit Recovered(tokenAddress, tokenAmount);
    }

    /**
     * @notice Updates the reward duration for a reward token.
     * @param _rewardsToken    address The address of the reward token.
     * @param _rewardsDuration uint256 The new duration of the rewards period.
     */
    function _setRewardsDuration(
        address _rewardsToken,
        uint256 _rewardsDuration
    ) internal {
        require(_rewardsDuration > 0, "Reward duration must be non-zero");

        if (block.timestamp < rewardData[_rewardsToken].periodFinish) {
            uint256 remaining =
                rewardData[_rewardsToken].periodFinish - block.timestamp;
            uint256 leftover = remaining * rewardData[_rewardsToken].rewardRate;

            // Calculate total and its residual
            uint256 totalAmount =
                leftover + rewardData[_rewardsToken].rewardResidual;
            rewardData[_rewardsToken].rewardResidual =
                totalAmount % _rewardsDuration;

            // Remove residual before setting rate
            totalAmount = totalAmount - rewardData[_rewardsToken].rewardResidual;
            rewardData[_rewardsToken].rewardRate =
                totalAmount / _rewardsDuration;
        }

        rewardData[_rewardsToken].lastUpdateTime = block.timestamp;
        rewardData[_rewardsToken].periodFinish =
            block.timestamp + _rewardsDuration;

        rewardData[_rewardsToken].rewardsDuration = _rewardsDuration;
        emit RewardsDurationUpdated(_rewardsToken, _rewardsDuration);
    }
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol

// OpenZeppelin Contracts (last updated v5.3.0) (utils/structs/EnumerableSet.sol)
// This file was procedurally generated from scripts/generate/templates/EnumerableSet.js.

/**
 * @dev Library for managing
 * https://en.wikipedia.org/wiki/Set_(abstract_data_type)[sets] of primitive
 * types.
 *
 * Sets have the following properties:
 *
 * - Elements are added, removed, and checked for existence in constant time
 * (O(1)).
 * - Elements are enumerated in O(n). No guarantees are made on the ordering.
 * - Set can be cleared (all elements removed) in O(n).
 *
 * ```solidity
 * contract Example {
 *     // Add the library methods
 *     using EnumerableSet for EnumerableSet.AddressSet;
 *
 *     // Declare a set state variable
 *     EnumerableSet.AddressSet private mySet;
 * }
 * ```
 *
 * The following types are supported:
 *
 * - `bytes32` (`Bytes32Set`) since v3.3.0
 * - `address` (`AddressSet`) since v3.3.0
 * - `uint256` (`UintSet`) since v3.3.0
 * - `string` (`StringSet`) since v5.4.0
 * - `bytes` (`BytesSet`) since v5.4.0
 *
 * [WARNING]
 * ====
 * Trying to delete such a structure from storage will likely result in data corruption, rendering the structure
 * unusable.
 * See https://github.com/ethereum/solidity/pull/11843[ethereum/solidity#11843] for more info.
 *
 * In order to clean an EnumerableSet, you can either remove all elements one by one or create a fresh instance using an
 * array of EnumerableSet.
 * ====
 */
library EnumerableSet {
    // To implement this library for multiple types with as little code
    // repetition as possible, we write it in terms of a generic Set type with
    // bytes32 values.
    // The Set implementation uses private functions, and user-facing
    // implementations (such as AddressSet) are just wrappers around the
    // underlying Set.
    // This means that we can only create new EnumerableSets for types that fit
    // in bytes32.

    struct Set {
        // Storage of set values
        bytes32[] _values;
        // Position is the index of the value in the `values` array plus 1.
        // Position 0 is used to mean a value is not in the set.
        mapping(bytes32 value => uint256) _positions;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function _add(Set storage set, bytes32 value) private returns (bool) {
        if (!_contains(set, value)) {
            set._values.push(value);
            // The value is stored at length-1, but we add 1 to all indexes
            // and use 0 as a sentinel value
            set._positions[value] = set._values.length;
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function _remove(Set storage set, bytes32 value) private returns (bool) {
        // We cache the value's position to prevent multiple reads from the same storage slot
        uint256 position = set._positions[value];

        if (position != 0) {
            // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 valueIndex = position - 1;
            uint256 lastIndex = set._values.length - 1;

            if (valueIndex != lastIndex) {
                bytes32 lastValue = set._values[lastIndex];

                // Move the lastValue to the index where the value to delete is
                set._values[valueIndex] = lastValue;
                // Update the tracked position of the lastValue (that was just moved)
                set._positions[lastValue] = position;
            }

            // Delete the slot where the moved value was stored
            set._values.pop();

            // Delete the tracked position for the deleted slot
            delete set._positions[value];

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes all the values from a set. O(n).
     *
     * WARNING: This function has an unbounded cost that scales with set size. Developers should keep in mind that
     * using it may render the function uncallable if the set grows to the point where clearing it consumes too much
     * gas to fit in a block.
     */
    function _clear(Set storage set) private {
        uint256 len = _length(set);
        for (uint256 i = 0; i < len; ++i) {
            delete set._positions[set._values[i]];
        }
        Arrays.unsafeSetLength(set._values, 0);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function _contains(Set storage set, bytes32 value) private view returns (bool) {
        return set._positions[value] != 0;
    }

    /**
     * @dev Returns the number of values on the set. O(1).
     */
    function _length(Set storage set) private view returns (uint256) {
        return set._values.length;
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function _at(Set storage set, uint256 index) private view returns (bytes32) {
        return set._values[index];
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function _values(Set storage set) private view returns (bytes32[] memory) {
        return set._values;
    }

    /**
     * @dev Return a slice of the set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function _values(Set storage set, uint256 start, uint256 end) private view returns (bytes32[] memory) {
        unchecked {
            end = Math.min(end, _length(set));
            start = Math.min(start, end);

            uint256 len = end - start;
            bytes32[] memory result = new bytes32[](len);
            for (uint256 i = 0; i < len; ++i) {
                result[i] = Arrays.unsafeAccess(set._values, start + i).value;
            }
            return result;
        }
    }

    // Bytes32Set

    struct Bytes32Set {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _add(set._inner, value);
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _remove(set._inner, value);
    }

    /**
     * @dev Removes all the values from a set. O(n).
     *
     * WARNING: Developers should keep in mind that this function has an unbounded cost and using it may render the
     * function uncallable if the set grows to the point where clearing it consumes too much gas to fit in a block.
     */
    function clear(Bytes32Set storage set) internal {
        _clear(set._inner);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(Bytes32Set storage set, bytes32 value) internal view returns (bool) {
        return _contains(set._inner, value);
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(Bytes32Set storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(Bytes32Set storage set, uint256 index) internal view returns (bytes32) {
        return _at(set._inner, index);
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(Bytes32Set storage set) internal view returns (bytes32[] memory) {
        bytes32[] memory store = _values(set._inner);
        bytes32[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    /**
     * @dev Return a slice of the set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(Bytes32Set storage set, uint256 start, uint256 end) internal view returns (bytes32[] memory) {
        bytes32[] memory store = _values(set._inner, start, end);
        bytes32[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    // AddressSet

    struct AddressSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(AddressSet storage set, address value) internal returns (bool) {
        return _add(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(AddressSet storage set, address value) internal returns (bool) {
        return _remove(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Removes all the values from a set. O(n).
     *
     * WARNING: Developers should keep in mind that this function has an unbounded cost and using it may render the
     * function uncallable if the set grows to the point where clearing it consumes too much gas to fit in a block.
     */
    function clear(AddressSet storage set) internal {
        _clear(set._inner);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(AddressSet storage set, address value) internal view returns (bool) {
        return _contains(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(AddressSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(AddressSet storage set, uint256 index) internal view returns (address) {
        return address(uint160(uint256(_at(set._inner, index))));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(AddressSet storage set) internal view returns (address[] memory) {
        bytes32[] memory store = _values(set._inner);
        address[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    /**
     * @dev Return a slice of the set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(AddressSet storage set, uint256 start, uint256 end) internal view returns (address[] memory) {
        bytes32[] memory store = _values(set._inner, start, end);
        address[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    // UintSet

    struct UintSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(UintSet storage set, uint256 value) internal returns (bool) {
        return _add(set._inner, bytes32(value));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(UintSet storage set, uint256 value) internal returns (bool) {
        return _remove(set._inner, bytes32(value));
    }

    /**
     * @dev Removes all the values from a set. O(n).
     *
     * WARNING: Developers should keep in mind that this function has an unbounded cost and using it may render the
     * function uncallable if the set grows to the point where clearing it consumes too much gas to fit in a block.
     */
    function clear(UintSet storage set) internal {
        _clear(set._inner);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(UintSet storage set, uint256 value) internal view returns (bool) {
        return _contains(set._inner, bytes32(value));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(UintSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(UintSet storage set, uint256 index) internal view returns (uint256) {
        return uint256(_at(set._inner, index));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(UintSet storage set) internal view returns (uint256[] memory) {
        bytes32[] memory store = _values(set._inner);
        uint256[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    /**
     * @dev Return a slice of the set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(UintSet storage set, uint256 start, uint256 end) internal view returns (uint256[] memory) {
        bytes32[] memory store = _values(set._inner, start, end);
        uint256[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    struct StringSet {
        // Storage of set values
        string[] _values;
        // Position is the index of the value in the `values` array plus 1.
        // Position 0 is used to mean a value is not in the set.
        mapping(string value => uint256) _positions;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(StringSet storage set, string memory value) internal returns (bool) {
        if (!contains(set, value)) {
            set._values.push(value);
            // The value is stored at length-1, but we add 1 to all indexes
            // and use 0 as a sentinel value
            set._positions[value] = set._values.length;
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(StringSet storage set, string memory value) internal returns (bool) {
        // We cache the value's position to prevent multiple reads from the same storage slot
        uint256 position = set._positions[value];

        if (position != 0) {
            // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 valueIndex = position - 1;
            uint256 lastIndex = set._values.length - 1;

            if (valueIndex != lastIndex) {
                string memory lastValue = set._values[lastIndex];

                // Move the lastValue to the index where the value to delete is
                set._values[valueIndex] = lastValue;
                // Update the tracked position of the lastValue (that was just moved)
                set._positions[lastValue] = position;
            }

            // Delete the slot where the moved value was stored
            set._values.pop();

            // Delete the tracked position for the deleted slot
            delete set._positions[value];

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes all the values from a set. O(n).
     *
     * WARNING: Developers should keep in mind that this function has an unbounded cost and using it may render the
     * function uncallable if the set grows to the point where clearing it consumes too much gas to fit in a block.
     */
    function clear(StringSet storage set) internal {
        uint256 len = length(set);
        for (uint256 i = 0; i < len; ++i) {
            delete set._positions[set._values[i]];
        }
        Arrays.unsafeSetLength(set._values, 0);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(StringSet storage set, string memory value) internal view returns (bool) {
        return set._positions[value] != 0;
    }

    /**
     * @dev Returns the number of values on the set. O(1).
     */
    function length(StringSet storage set) internal view returns (uint256) {
        return set._values.length;
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(StringSet storage set, uint256 index) internal view returns (string memory) {
        return set._values[index];
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(StringSet storage set) internal view returns (string[] memory) {
        return set._values;
    }

    /**
     * @dev Return a slice of the set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(StringSet storage set, uint256 start, uint256 end) internal view returns (string[] memory) {
        unchecked {
            end = Math.min(end, length(set));
            start = Math.min(start, end);

            uint256 len = end - start;
            string[] memory result = new string[](len);
            for (uint256 i = 0; i < len; ++i) {
                result[i] = Arrays.unsafeAccess(set._values, start + i).value;
            }
            return result;
        }
    }

    struct BytesSet {
        // Storage of set values
        bytes[] _values;
        // Position is the index of the value in the `values` array plus 1.
        // Position 0 is used to mean a value is not in the set.
        mapping(bytes value => uint256) _positions;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(BytesSet storage set, bytes memory value) internal returns (bool) {
        if (!contains(set, value)) {
            set._values.push(value);
            // The value is stored at length-1, but we add 1 to all indexes
            // and use 0 as a sentinel value
            set._positions[value] = set._values.length;
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(BytesSet storage set, bytes memory value) internal returns (bool) {
        // We cache the value's position to prevent multiple reads from the same storage slot
        uint256 position = set._positions[value];

        if (position != 0) {
            // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 valueIndex = position - 1;
            uint256 lastIndex = set._values.length - 1;

            if (valueIndex != lastIndex) {
                bytes memory lastValue = set._values[lastIndex];

                // Move the lastValue to the index where the value to delete is
                set._values[valueIndex] = lastValue;
                // Update the tracked position of the lastValue (that was just moved)
                set._positions[lastValue] = position;
            }

            // Delete the slot where the moved value was stored
            set._values.pop();

            // Delete the tracked position for the deleted slot
            delete set._positions[value];

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes all the values from a set. O(n).
     *
     * WARNING: Developers should keep in mind that this function has an unbounded cost and using it may render the
     * function uncallable if the set grows to the point where clearing it consumes too much gas to fit in a block.
     */
    function clear(BytesSet storage set) internal {
        uint256 len = length(set);
        for (uint256 i = 0; i < len; ++i) {
            delete set._positions[set._values[i]];
        }
        Arrays.unsafeSetLength(set._values, 0);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(BytesSet storage set, bytes memory value) internal view returns (bool) {
        return set._positions[value] != 0;
    }

    /**
     * @dev Returns the number of values on the set. O(1).
     */
    function length(BytesSet storage set) internal view returns (uint256) {
        return set._values.length;
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(BytesSet storage set, uint256 index) internal view returns (bytes memory) {
        return set._values[index];
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(BytesSet storage set) internal view returns (bytes[] memory) {
        return set._values;
    }

    /**
     * @dev Return a slice of the set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(BytesSet storage set, uint256 start, uint256 end) internal view returns (bytes[] memory) {
        unchecked {
            end = Math.min(end, length(set));
            start = Math.min(start, end);

            uint256 len = end - start;
            bytes[] memory result = new bytes[](len);
            for (uint256 i = 0; i < len; ++i) {
                result[i] = Arrays.unsafeAccess(set._values, start + i).value;
            }
            return result;
        }
    }
}

// lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/access/extensions/AccessControlEnumerable.sol

// OpenZeppelin Contracts (last updated v5.1.0) (access/extensions/AccessControlEnumerable.sol)

/**
 * @dev Extension of {AccessControl} that allows enumerating the members of each role.
 */
abstract contract AccessControlEnumerable is IAccessControlEnumerable, AccessControl {
    using EnumerableSet for EnumerableSet.AddressSet;

    mapping(bytes32 role => EnumerableSet.AddressSet) private _roleMembers;

    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControlEnumerable).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns one of the accounts that have `role`. `index` must be a
     * value between 0 and {getRoleMemberCount}, non-inclusive.
     *
     * Role bearers are not sorted in any particular way, and their ordering may
     * change at any point.
     *
     * WARNING: When using {getRoleMember} and {getRoleMemberCount}, make sure
     * you perform all queries on the same block. See the following
     * https://forum.openzeppelin.com/t/iterating-over-elements-on-enumerableset-in-openzeppelin-contracts/2296[forum post]
     * for more information.
     */
    function getRoleMember(bytes32 role, uint256 index) public view virtual returns (address) {
        return _roleMembers[role].at(index);
    }

    /**
     * @dev Returns the number of accounts that have `role`. Can be used
     * together with {getRoleMember} to enumerate all bearers of a role.
     */
    function getRoleMemberCount(bytes32 role) public view virtual returns (uint256) {
        return _roleMembers[role].length();
    }

    /**
     * @dev Return all accounts that have `role`
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function getRoleMembers(bytes32 role) public view virtual returns (address[] memory) {
        return _roleMembers[role].values();
    }

    /**
     * @dev Overload {AccessControl-_grantRole} to track enumerable memberships
     */
    function _grantRole(bytes32 role, address account) internal virtual override returns (bool) {
        bool granted = super._grantRole(role, account);
        if (granted) {
            _roleMembers[role].add(account);
        }
        return granted;
    }

    /**
     * @dev Overload {AccessControl-_revokeRole} to track enumerable memberships
     */
    function _revokeRole(bytes32 role, address account) internal virtual override returns (bool) {
        bool revoked = super._revokeRole(role, account);
        if (revoked) {
            _roleMembers[role].remove(account);
        }
        return revoked;
    }
}

// src/vendors/ERC20PresetMinterPauser.sol

// OpenZeppelin Contracts (last updated v4.5.0)
// (token/ERC20/presets/ERC20PresetMinterPauser.sol)

/* solhint-disable */

/**
 * @dev {ERC20} token, including:
 *
 *  - ability for holders to burn (destroy) their tokens
 *  - a minter role that allows for token minting (creation)
 *  - a pauser role that allows to stop all token transfers
 *
 * This contract uses {AccessControl} to lock permissioned functions using the
 * different roles - head to its documentation for details.
 *
 * The account that deploys the contract will be granted the minter and pauser
 * roles, as well as the default admin role, which will let it grant both minter
 * and pauser roles to other accounts.
 *
 * _Deprecated in favor of https://wizard.openzeppelin.com/[Contracts Wizard]._
 */
contract ERC20PresetMinterPauser is
    Context,
    AccessControlEnumerable,
    CustomPausable
{
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    /**
     * @dev Grants `DEFAULT_ADMIN_ROLE`, `MINTER_ROLE` and `PAUSER_ROLE` to the
     * account that deploys the contract.
     *
     * See {ERC20-constructor}.
     */
    constructor(
        string memory name,
        string memory symbol,
        address _admin,
        address _minter,
        address _pauser,
        address _burner
    ) ERC20_1(name, symbol) {
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);

        _grantRole(MINTER_ROLE, _minter);
        _grantRole(PAUSER_ROLE, _pauser);
        if (_burner != address(0)) {
            _grantRole(BURNER_ROLE, _burner);
        }
    }

    /**
     * @dev Creates `amount` new tokens for `to`.
     *
     * See {ERC20-_mint}.
     *
     * Requirements:
     *
     * - the caller must have the `MINTER_ROLE`.
     */
    function mint(address to, uint256 amount) public virtual whenNotPaused {
        require(
            hasRole(MINTER_ROLE, _msgSender()),
            "ERC20PresetMinterPauser: must have minter role to mint"
        );
        _mint(to, amount);
    }

    /**
     * @dev Burn `amount` new tokens from `from`.
     *
     * See {ERC20-_burn}.
     *
     * Requirements:
     *
     * - the caller must have the `BURNER_ROLE`.
     */
    function burn(uint256 amount) public virtual whenNotPaused {
        require(
            hasRole(BURNER_ROLE, _msgSender()),
            "ERC20PresetMinterPauser: must have burner role to burn"
        );
        _burn(msg.sender, amount);
    }

    /**
     * @dev Pauses all token transfers.
     *
     * See {ERC20Pausable} and {Pausable-_pause}.
     *
     * Requirements:
     *
     * - the caller must have the `PAUSER_ROLE`.
     */
    function pause() public virtual {
        require(
            hasRole(PAUSER_ROLE, _msgSender()),
            "ERC20PresetMinterPauser: must have pauser role to pause"
        );
        _pause();
    }

    /**
     * @dev Unpauses all token transfers.
     *
     * See {ERC20Pausable} and {Pausable-_unpause}.
     *
     * Requirements:
     *
     * - the caller must have the `PAUSER_ROLE`.
     */
    function unpause() public virtual {
        require(
            hasRole(PAUSER_ROLE, _msgSender()),
            "ERC20PresetMinterPauser: must have pauser role to unpause"
        );
        _unpause();
    }

    function _update(address from, address to, uint256 value)
        internal
        virtual
        override(CustomPausable)
    {
        super._update(from, to, value);
    }
}

// src/core/InfraredBGT.sol

/**
 * @title InfraredBGT
 * @notice This contract is the InfraredBGT token.
 */
contract InfraredBGT is ERC20PresetMinterPauser {
    /**
     * @notice Constructor for InfraredBGT
     * @param _admin The admin address to controll the roles of the contract
     * @param _minter The minter address of the contract
     * @param _pauser The pauser address of the contract
     * @param _burner The burner address of the contract
     */
    constructor(
        address _admin,
        address _minter,
        address _pauser,
        address _burner
    )
        ERC20PresetMinterPauser(
            "Infrared BGT",
            "iBGT",
            _admin,
            _minter,
            _pauser,
            _burner
        )
    {}
}

// src/interfaces/IInfrared.sol

interface IInfrared {
    /**
     * @notice Checks if a token is a whitelisted reward token
     * @param _token The address of the token to check
     * @return bool True if the token is whitelisted, false otherwise
     */
    function whitelistedRewardTokens(address _token)
        external
        view
        returns (bool);

    /**
     * @notice Returns the infrared vault address for a given staking token
     * @param _asset The address of the staking asset
     * @return IInfraredVault The vault associated with the asset
     */
    function vaultRegistry(address _asset)
        external
        view
        returns (IInfraredVault);

    /**
     * @notice The InfraredBGT liquid staked token
     * @return IInfraredBGT The InfraredBGT token contract address
     */
    function ibgt() external view returns (InfraredBGT);

    /**
     * @notice The Berachain rewards vault factory address
     * @return IBerachainRewardsVaultFactory instance of the rewards factory contract address
     */
    function rewardsFactory()
        external
        view
        returns (IRewardVaultFactory);

    /**
     * @notice The Berachain chef contract for distributing validator rewards
     * @return IBeraChef instance of the BeraChef contract address
     */
    function chef() external view returns (IBeraChef);

    /**
     * @notice The InfraredBGT vault
     * @return IInfraredVault instance of the iBGT vault contract address
     */
    function ibgtVault() external view returns (IInfraredVault);

    /**
     * @notice The unclaimed Infrared protocol fees of token accumulated by contract
     * @param token address The token address for the accumulated fees
     * @return uint256 The amount of accumulated fees
     */
    function protocolFeeAmounts(address token)
        external
        view
        returns (uint256);

    /**
     * @notice Protocol fee rates to charge for various harvest function distributions
     * @param i The index of the fee rate
     * @return uint256 The fee rate
     */
    function fees(uint256 i) external view returns (uint256);

    /**
     * @notice Wrapped bera
     * @return IWBERA The wbera token contract address
     */
    function wbera() external view returns (IWBERA);

    /**
     * @notice Honey ERC20 token
     * @return ERC20 The honey token contract address
     */
    function honey() external view returns (ERC20_0);

    /**
     * @notice bribe collector contract
     * @return IBribeCollector The bribe collector contract address
     */
    function collector() external view returns (IBribeCollector);

    /**
     * @notice Infrared distributor for BGT rewards to validators
     * @return IInfraredDistributor instance of the distributor contract address
     */
    function distributor() external view returns (IInfraredDistributor);

    /**
     * @notice IR voter
     * @return IVoter instance of the voter contract address
     */
    function voter() external view returns (IVoter);

    /**
     * @notice collects all iBERA realted fees and revenue
     * @return returns IInfraredBERAFeeReceivor instanace of iBeraFeeReceivor
     */
    function ibera() external view returns (IInfraredBERA);

    /**
     * @notice The IR token
     * @return IR instance of the IR token contract address
     */
    function ir() external view returns (IInfraredGovernanceToken);

    /**
     * @notice The rewards duration
     * @dev Used as gloabl variabel to set the rewards duration for all new reward tokens on InfraredVaults
     * @return uint256 The reward duration period, in seconds
     */
    function rewardsDuration() external view returns (uint256);

    /**
     * @notice Registers a new vault for a given asset
     * @dev Infrared.sol must be admin over MINTER_ROLE on InfraredBGT to grant minter role to deployed vault
     * @param _asset The address of the asset, such as a specific LP token
     * @return vault The address of the newly created InfraredVault contract
     * @custom:emits NewVault with the caller, asset address, and new vault address.
     */
    function registerVault(address _asset)
        external
        returns (IInfraredVault vault);

    /**
     * @notice Adds a new reward token to a specific staking vault
     * @dev Only callable by governance when contract is initialized
     * @param _stakingToken The address of the staking token associated with the vault
     * @param _rewardsToken The address of the token to be added as a reward
     * @param _rewardsDuration The duration period for the rewards distribution, in seconds
     * @custom:error ZeroAmount if _rewardsDuration is 0
     * @custom:error RewardTokenNotWhitelisted if _rewardsToken is not whitelisted
     * @custom:error NoRewardsVault if vault doesn't exist for _stakingToken
     */
    function addReward(
        address _stakingToken,
        address _rewardsToken,
        uint256 _rewardsDuration
    ) external;

    /**
     * @notice Adds reward incentives to a specific staking vault
     * @dev Transfers reward tokens from caller to this contract, then notifies vault of new rewards
     * @param _stakingToken The address of the staking token associated with the vault
     * @param _rewardsToken The address of the token being added as incentives
     * @param _amount The amount of reward tokens to add as incentives
     * @custom:error ZeroAmount if _amount is 0
     * @custom:error NoRewardsVault if vault doesn't exist for _stakingToken
     * @custom:error RewardTokenNotWhitelisted if reward token hasn't been configured for the vault
     * @custom:access Callable when contract is initialized
     * @custom:security Requires caller to have approved this contract to spend _rewardsToken
     */
    function addIncentives(
        address _stakingToken,
        address _rewardsToken,
        uint256 _amount
    ) external;

    /**
     * @notice Updates the whitelist status of a reward token
     * @param _token The address of the token to whitelist or remove from whitelist
     * @param _whitelisted A boolean indicating if the token should be whitelisted
     */
    function updateWhiteListedRewardTokens(address _token, bool _whitelisted)
        external;

    /**
     * @notice Sets the new duration for reward distributions in InfraredVaults
     * @param _rewardsDuration The new reward duration period, in seconds
     * @dev Only callable by governance
     */
    function updateRewardsDuration(uint256 _rewardsDuration) external;

    /**
     * @notice Updates the rewards duration for a specific reward token on a specific vault
     * @param _stakingToken The address of the staking asset associated with the vault
     * @param _rewardsToken The address of the reward token to update the duration for
     * @param _rewardsDuration The new reward duration period, in seconds
     * @dev Only callable by governance
     */
    function updateRewardsDurationForVault(
        address _stakingToken,
        address _rewardsToken,
        uint256 _rewardsDuration
    ) external;

    /**
     * @notice Pauses staking functionality on a specific vault
     * @param _asset The address of the staking asset associated with the vault to pause
     * @dev Only callable by pauser or governance, will revert if vault doesn't exist
     */
    function pauseStaking(address _asset) external;

    /**
     * @notice Un-pauses staking functionality on a specific vault
     * @param _asset The address of the staking asset associated with the vault to pause
     * @dev Only callable by gov, will revert if vault doesn't exist
     */
    function unpauseStaking(address _asset) external;

    /**
     * @notice Claims lost rewards on a specific vault
     * @param _asset The address of the staking asset associated with the vault to claim lost rewards on
     * @dev Only callable by governance, will revert if vault doesn't exist
     */
    function claimLostRewardsOnVault(address _asset) external;

    /**
     * @notice Recovers ERC20 tokens sent accidentally to the contract
     * @param _to The address to receive the recovered tokens
     * @param _token The address of the token to recover
     * @param _amount The amount of the token to recover
     */
    function recoverERC20(address _to, address _token, uint256 _amount)
        external;

    /**
     * @notice Recover ERC20 tokens from a vault.
     * @param _asset  address The address of the staking asset that the vault is for.
     * @param _to     address The address to send the tokens to.
     * @param _token  address The address of the token to recover.
     * @param _amount uint256 The amount of the token to recover.
     */
    function recoverERC20FromVault(
        address _asset,
        address _to,
        address _token,
        uint256 _amount
    ) external;

    /**
     * @notice Delegates BGT votes to `_delegatee` address.
     * @param _delegatee  address The address to delegate votes to
     */
    function delegateBGT(address _delegatee) external;

    /**
     * @notice Updates the weight for iBERA bribes
     * @param _weight uint256 The weight value
     */
    function updateInfraredBERABribeSplit(uint256 _weight) external;

    /**
     * @notice Updates the fee rate charged on different harvest functions
     * @notice Please harvest all assosiated rewards for a given type before updating
     * @dev Fee rate in units of 1e6 or hundredths of 1 bip
     * @param _t   FeeType The fee type
     * @param _fee uint256 The fee rate to update to
     */
    function updateFee(ConfigTypes.FeeType _t, uint256 _fee) external;

    /**
     * @notice Sets the address of the IR contract
     * @dev Infrared must be granted MINTER_ROLE on IR to set the address
     * @param _IR The address of the IR contract
     */
    function setIR(address _IR) external;

    /**
     * @notice Sets the address of the iBGT contract
     * @dev Infrared must be granted MINTER_ROLE on IBGT to set the address
     * @param _ibgt The address of the iBGT contract
     */
    function setIBGT(address _ibgt) external;

    /**
     * @notice Updates the mint rate for IR
     * @param _IRMintRate The new mint rate for IR
     */
    function updateIRMintRate(uint256 _IRMintRate) external;

    /**
     * @notice Claims accumulated protocol fees in contract
     * @param _to     address The recipient of the fees
     * @param _token  address The token to claim fees in
     */
    function claimProtocolFees(address _to, address _token) external;

    /**
     * @notice Claims all the BGT base and commission rewards minted to this contract for validators.
     */
    function harvestBase() external;

    /**
     * @notice Credits all accumulated rewards to the operator
     */
    function harvestOperatorRewards() external;

    /**
     * @notice Claims all the BGT rewards for the vault associated with the given staking token.
     * @param _asset address The address of the staking asset that the vault is for.
     */
    function harvestVault(address _asset) external;

    /**
     * @notice Claims all the bribes rewards in the contract forwarded from Berachain POL.
     * @param _tokens address[] memory The addresses of the tokens to harvest in the contract.
     */
    function harvestBribes(address[] memory _tokens) external;

    /**
     * @notice Collects bribes from bribe collector and distributes to wiBERA and iBGT Infrared vaults.
     * @notice _token The payout token for the bribe collector.
     * @notice _amount The amount of payout received from bribe collector.
     */
    function collectBribes(address _token, uint256 _amount) external;

    /**
     * @notice Claims all the BGT staker rewards from boosting validators.
     * @dev Sends rewards to iBGT vault.
     */
    function harvestBoostRewards() external;

    /**
     * @notice Adds validators to the set of `InfraredValidators`.
     * @param _validators Validator[] memory The validators to add.
     */
    function addValidators(ValidatorTypes.Validator[] memory _validators)
        external;

    /**
     * @notice Removes validators from the set of `InfraredValidators`.
     * @param _pubkeys bytes[] memory The pubkeys of the validators to remove.
     */
    function removeValidators(bytes[] memory _pubkeys) external;

    /**
     * @notice Replaces a validator in the set of `InfraredValidators`.
     * @param _current bytes The pubkey of the validator to replace.
     * @param _new     bytes The new validator pubkey.
     */
    function replaceValidator(bytes calldata _current, bytes calldata _new)
        external;

    /**
     * @notice Queue `_amts` of tokens to `_validators` for boosts.
     * @param _pubkeys     bytes[] memory The pubkeys of the validators to queue boosts for.
     * @param _amts        uint128[] memory The amount of BGT to boost with.
     */
    function queueBoosts(bytes[] memory _pubkeys, uint128[] memory _amts)
        external;

    /**
     * @notice Removes `_amts` from previously queued boosts to `_validators`.
     * @dev `_pubkeys` need not be in the current validator set in case just removed but need to cancel.
     * @param _pubkeys     bytes[] memory The pubkeys of the validators to remove boosts for.
     * @param _amts        uint128[] memory The amounts of BGT to remove from the queued boosts.
     */
    function cancelBoosts(bytes[] memory _pubkeys, uint128[] memory _amts)
        external;

    /**
     * @notice Activates queued boosts for `_pubkeys`.
     * @param _pubkeys   bytes[] memory The pubkeys of the validators to activate boosts for.
     */
    function activateBoosts(bytes[] memory _pubkeys) external;

    /**
     * @notice Queues a drop boost of the validators removing an amount of BGT for sender.
     * @dev Reverts if `user` does not have enough boosted balance to cover amount.
     * @param pubkeys     bytes[] memory The pubkeys of the validators to remove boost from.
     * @param amounts Amounts of BGT to remove from the queued drop boosts.
     */
    function queueDropBoosts(
        bytes[] calldata pubkeys,
        uint128[] calldata amounts
    ) external;

    /**
     * @notice Cancels a queued drop boost of the validator removing an amount of BGT for sender.
     * @param pubkeys     bytes[] memory The pubkeys of the validators to remove boost from.
     * @param amounts Amounts of BGT to remove from the queued drop boosts.
     */
    function cancelDropBoosts(
        bytes[] calldata pubkeys,
        uint128[] calldata amounts
    ) external;

    /**
     * @notice Drops an amount of BGT from an existing boost of validators by user.
     * @param pubkeys     bytes[] memory The pubkeys of the validators to remove boost from.
     */
    function dropBoosts(bytes[] calldata pubkeys) external;

    /**
     * @notice Queues a new cutting board on BeraChef for reward weight distribution for validator
     * @param _pubkey             bytes                         The pubkey of the validator to queue the cutting board for
     * @param _startBlock         uint64                        The start block for reward weightings
     * @param _weights            IBeraChef.Weight[] calldata   The weightings used when distributor calls chef to distribute validator rewards
     */
    function queueNewCuttingBoard(
        bytes calldata _pubkey,
        uint64 _startBlock,
        IBeraChef.Weight[] calldata _weights
    ) external;

    /**
     * @notice Gets the set of infrared validator pubkeys.
     * @return validators Validator[] memory The set of infrared validators.
     */
    function infraredValidators()
        external
        view
        returns (ValidatorTypes.Validator[] memory validators);

    /**
     * @notice Gets the number of infrared validators in validator set.
     * @return num uint256 The number of infrared validators in validator set.
     */
    function numInfraredValidators() external view returns (uint256);

    /**
     * @notice Checks if a validator is an infrared validator.
     * @param _pubkey    bytes      The pubkey of the validator to check.
     * @return _isValidator bool       Whether the validator is an infrared validator.
     */
    function isInfraredValidator(bytes memory _pubkey)
        external
        view
        returns (bool);

    /**
     * @notice Gets the BGT balance for this contract
     * @return bgtBalance The BGT balance held by this address
     */
    function getBGTBalance() external view returns (uint256 bgtBalance);

    /**
     * @notice Emitted when a new vault is registered
     * @param _sender The address that initiated the vault registration
     * @param _asset The address of the asset for which the vault is registered
     * @param _vault The address of the newly created vault
     */
    event NewVault(
        address _sender, address indexed _asset, address indexed _vault
    );

    /**
     * @notice Emitted when pause status for new vault registration has changed
     * @param pause True if new vault creation is paused
     */
    event VaultRegistrationPauseStatus(bool pause);

    /**
     * @notice Emitted when InfraredBGT tokens are supplied to distributor.
     * @param _ibera token the rewards are denominated in
     * @param _distributor The address of the distributor receiving the InfraredBGT tokens.
     * @param _amt The amount of WBERA tokens supplied to distributor.
     */
    event OperatorRewardsDistributed(
        address indexed _ibera, address indexed _distributor, uint256 _amt
    );

    /**
     * @notice Emitted when InfraredBGT tokens are supplied to a vault.
     * @param _vault The address of the vault receiving the InfraredBGT and IR tokens.
     * @param _ibgtAmt The amount of InfraredBGT tokens supplied to vault.
     * @param _iredAmt The amount of IR tokens supplied to vault as additional reward from protocol.
     */
    event InfraredBGTSupplied(
        address indexed _vault, uint256 _ibgtAmt, uint256 _iredAmt
    );

    /**
     * @notice Emitted when rewards are supplied to a vault.
     * @param _vault The address of the vault receiving the reward.
     * @param _token The address of the token being supplied as a reward.
     * @param _amt The amount of the reward token supplied.
     */
    event RewardSupplied(
        address indexed _vault, address indexed _token, uint256 _amt
    );

    /**
     * @notice Emitted when rewards are supplied to a vault.
     * @param _recipient The address receiving the bribe.
     * @param _token The address of the token being supplied as a bribe reward.
     * @param _amt The amount of the bribe reward token supplied.
     */
    event BribeSupplied(
        address indexed _recipient, address indexed _token, uint256 _amt
    );

    /**
     * @notice Emitted when tokens are recovered from the contract.
     * @param _sender The address that initiated the recovery.
     * @param _token The address of the token being recovered.
     * @param _amount The amount of the token recovered.
     */
    event Recovered(address _sender, address indexed _token, uint256 _amount);

    /**
     * @notice Emitted when a reward token is marked as unsupported.
     * @param _token The address of the reward token.
     */
    event RewardTokenNotSupported(address _token);

    /**
     * @notice Emitted when the InfraredBGT token address is updated.
     * @param _sender The address that initiated the update.
     * @param _oldIbgt The previous address of the InfraredBGT token.
     * @param _newIbgt The new address of the InfraredBGT token.
     */
    event InfraredBGTUpdated(
        address _sender, address _oldIbgt, address _newIbgt
    );

    /**
     * @notice Emitted when the InfraredBGT vault address is updated.
     * @param _sender The address that initiated the update.
     * @param _oldIbgtVault The previous address of the InfraredBGT vault.
     * @param _newIbgtVault The new address of the InfraredBGT vault.
     */
    event InfraredBGTVaultUpdated(
        address _sender, address _oldIbgtVault, address _newIbgtVault
    );

    /**
     * @notice Emitted when reward tokens are whitelisted or unwhitelisted.
     * @param _sender The address that initiated the update.
     * @param _token The address of the token being updated.
     * @param _wasWhitelisted The previous whitelist status of the token.
     * @param _isWhitelisted The new whitelist status of the token.
     */
    event WhiteListedRewardTokensUpdated(
        address _sender,
        address indexed _token,
        bool _wasWhitelisted,
        bool _isWhitelisted
    );

    /**
     * @notice Emitted when the rewards duration is updated
     * @param _sender The address that initiated the update
     * @param _oldDuration The previous rewards duration
     * @param _newDuration The new rewards duration
     */
    event RewardsDurationUpdated(
        address _sender, uint256 _oldDuration, uint256 _newDuration
    );

    /**
     * @notice Emitted when a weight is updated.
     * @param _sender The address that initiated the update.
     * @param _oldWeight The old value of the weight.
     * @param _newWeight The new value of the weight.
     */
    event InfraredBERABribeSplitUpdated(
        address _sender, uint256 _oldWeight, uint256 _newWeight
    );

    /**
     * @notice Emitted when protocol fee rate is updated.
     * @param _sender The address that initiated the update.
     * @param _feeType The fee type updated.
     * @param _oldFeeRate The old protocol fee rate.
     * @param _newFeeRate The new protocol fee rate.
     */
    event FeeUpdated(
        address _sender,
        ConfigTypes.FeeType _feeType,
        uint256 _oldFeeRate,
        uint256 _newFeeRate
    );

    /**
     * @notice Emitted when protocol fees claimed.
     * @param _sender The address that initiated the claim.
     * @param _to The address to send protocol fees to.
     * @param _token The address of the token protocol fees in.
     * @param _amount The amount of protocol fees claimed.
     */
    event ProtocolFeesClaimed(
        address _sender, address _to, address _token, uint256 _amount
    );

    /**
     * @notice Emitted when protocol fees are received.
     * @param _token The address of the token protocol fees in.
     * @param _amt The amount of protocol fees received.
     * @param _voterAmt The amount of protocol fees received by the voter.
     */
    event ProtocolFees(address indexed _token, uint256 _amt, uint256 _voterAmt);

    /**
     * @notice Emitted when base + commission rewards are harvested.
     * @param _sender The address that initiated the harvest.
     * @param _bgtAmt The amount of BGT harvested.
     */
    event BaseHarvested(address _sender, uint256 _bgtAmt);

    /**
     * @notice Emitted when a vault harvests its rewards.
     * @param _sender The address that initiated the harvest.
     * @param _asset The asset associated with the vault being harvested.
     * @param _vault The address of the vault being harvested.
     * @param _bgtAmt The amount of BGT harvested.
     */
    event VaultHarvested(
        address _sender,
        address indexed _asset,
        address indexed _vault,
        uint256 _bgtAmt
    );

    /**
     * @notice Emitted when bribes are harvested then collected by collector.
     * @param _sender The address that initiated the bribe collection.
     * @param _token The payout token from bribe collection.
     * @param _amtWiberaVault The amount of collected bribe sent to the wrapped iBERA vault.
     * @param _amtIbgtVault The amount of collected bribe sent to the iBGT vault.
     */
    event BribesCollected(
        address _sender,
        address _token,
        uint256 _amtWiberaVault,
        uint256 _amtIbgtVault
    );

    /**
     * @notice Emitted when a validator harvests its rewards.
     * @param _sender The address that initiated the harvest.
     * @param _validator The public key of the validator.
     * @param _rewards An array of tokens and amounts harvested.
     * @param _bgtAmt The amount of BGT included in the rewards.
     */
    event ValidatorHarvested(
        address _sender,
        bytes indexed _validator,
        DataTypes.Token[] _rewards,
        uint256 _bgtAmt
    );

    /**
     * @notice Emitted when validators are added.
     * @param _sender The address that initiated the addition.
     * @param _validators An array of validators that were added.
     */
    event ValidatorsAdded(
        address _sender, ValidatorTypes.Validator[] _validators
    );

    /**
     * @notice Emitted when validators are removed from validator set.
     * @param _sender The address that initiated the removal.
     * @param _pubkeys An array of validators' pubkeys that were removed.
     */
    event ValidatorsRemoved(address _sender, bytes[] _pubkeys);

    /**
     * @notice Emitted when a validator is replaced with a new validator.
     * @param _sender The address that initiated the replacement.
     * @param _current The pubkey of the current validator being replaced.
     * @param _new The pubkey of the new validator.
     */
    event ValidatorReplaced(address _sender, bytes _current, bytes _new);

    /**
     * @notice Emitted when BGT tokens are queued for boosts to validators.
     * @param _sender The address that initiated the boost.
     * @param _pubkeys The addresses of the validators to which tokens are queued for boosts.
     * @param _amts The amounts of tokens that were queued.
     */
    event QueuedBoosts(address _sender, bytes[] _pubkeys, uint128[] _amts);

    /**
     * @notice Emitted when existing queued boosts to validators are cancelled.
     * @param _sender The address that initiated the cancellation.
     * @param _pubkeys The pubkeys of the validators to which tokens were queued for boosts.
     * @param _amts The amounts of tokens to remove from boosts.
     */
    event CancelledBoosts(address _sender, bytes[] _pubkeys, uint128[] _amts);

    /**
     * @notice Emitted when an existing boost to a validator is activated.
     * @param _sender The address that initiated the activation.
     * @param _pubkeys The addresses of the validators which were boosted.
     */
    event ActivatedBoosts(address _sender, bytes[] _pubkeys);

    /**
     * @notice Emitted when an user queues a drop boost for a validator.
     * @param user The address of the user.
     * @param pubkeys The addresses of the validators to which tokens were queued for boosts.
     * @param amounts The amounts of tokens to remove from boosts.
     */
    event QueueDropBoosts(
        address indexed user, bytes[] indexed pubkeys, uint128[] amounts
    );

    /**
     * @notice Emitted when an user cancels a queued drop boost for a validator.
     * @param user The address of the user.
     * @param pubkeys The addresses of the validators to which tokens were queued for boosts.
     * @param amounts The amounts of tokens to remove from boosts.
     */
    event CancelDropBoosts(
        address indexed user, bytes[] indexed pubkeys, uint128[] amounts
    );

    /**
     * @notice Emitted when sender removes an amount of BGT boost from a validator
     * @param _sender The address that initiated the cancellation.
     * @param _pubkeys The addresses of the validators to which tokens were queued for boosts.
     */
    event DroppedBoosts(address indexed _sender, bytes[] _pubkeys);

    /**
     * @notice Emitted when tokens are undelegated from a validator.
     * @param _sender The address that initiated the undelegation.
     * @param _pubkey The pubkey of the validator from which tokens are undelegated.
     * @param _amt The amount of tokens that were undelegated.
     */
    event Undelegated(address _sender, bytes _pubkey, uint256 _amt);

    /**
     * @notice Emitted when tokens are redelegated from one validator to another.
     * @param _sender The address that initiated the redelegation.
     * @param _from The public key of the validator from which tokens are redelegated.
     * @param _to The public key of the validator to which tokens are redelegated.
     * @param _amt The amount of tokens that were redelegated.
     */
    event Redelegated(address _sender, bytes _from, bytes _to, uint256 _amt);

    /**
     * @notice Emitted when the IR token is set.
     * @param _sender The address that initiated the update.
     * @param _IR The address of the IRdd token.
     */
    event IRSet(address _sender, address _IR);

    /**
     *
     * @param oldMintRate The old mint rate for IR
     * @param newMintRate The new mint rate for IR
     * @param sender The address that initiated the update
     */
    event UpdatedIRMintRate(
        uint256 oldMintRate, uint256 newMintRate, address sender
    );

    /**
     * @notice Emitted when the iBGT token is set.
     * @param _sender The address that initiated the update.
     * @param _ibgt The address of the iBGT token.
     */
    event IBGTSet(address _sender, address _ibgt);

    /**
     * @notice Emitted when the voter contract is set.
     * @param _sender The address that initiated the update.
     * @param _voter The address of the voter contract.
     */
    event VoterSet(address _sender, address _voter);
}

// src/core/InfraredVault.sol

/**
 * @title InfraredVault
 * @notice This contract is the vault for staking tokens, and receiving rewards from the Proof of Liquidity protocol.
 * @dev This contract uses the MultiRewards contract to distribute rewards to vault stakers, this is taken from curve.fi. (inspired by Synthetix).
 * @dev Does not support staking tokens with non-standard ERC20 transfer tax behavior.
 */
contract InfraredVault is MultiRewards, IInfraredVault {
    using SafeTransferLib for ERC20_0;

    /// @notice Maximum number of reward tokens that can be supported
    /// @dev Limited to prevent gas issues with reward calculations
    uint256 public constant MAX_NUM_REWARD_TOKENS = 10;

    /// @notice The infrared contract address acts a vault factory and coordinator
    address public immutable infrared;

    // The address of the berachain rewards vault
    IRewardVault public immutable rewardsVault;

    /// Modifier to check that the caller is infrared contract
    modifier onlyInfrared() {
        if (msg.sender != infrared) revert Errors.Unauthorized(msg.sender);
        _;
    }

    constructor(address _stakingToken, uint256 _rewardsDuration)
        MultiRewards(_stakingToken)
    {
        // infrared factory/coordinator
        infrared = msg.sender;

        if (_stakingToken == address(0)) revert Errors.ZeroAddress();
        if (_rewardsDuration == 0) revert Errors.ZeroAmount();

        // set the berachain rewards vault and operator as infrared
        rewardsVault = _createRewardsVaultIfNecessary(infrared, _stakingToken);
        rewardsVault.setOperator(infrared);

        address _ibgt = address(IInfrared(infrared).ibgt());

        _addReward(_ibgt, infrared, _rewardsDuration);

        // to be able to recover rewards which where distributed during periods where there was no stake
        // infrared will have a stake of 1 wei in the vault
        _totalSupply = _totalSupply + 1;
        _balances[msg.sender] = _balances[msg.sender] + 1;
    }

    /**
     * @notice Gets or creates the berachain rewards vault for given staking token
     * @param _infrared The address of Infrared
     * @param _stakingToken The address of the staking token for this vault
     * @return The address of the berachain rewards vault
     */
    function _createRewardsVaultIfNecessary(
        address _infrared,
        address _stakingToken
    ) private returns (IRewardVault) {
        IRewardVaultFactory rewardsFactory =
            IInfrared(_infrared).rewardsFactory();
        address rewardsVaultAddress = rewardsFactory.getVault(_stakingToken);
        if (rewardsVaultAddress == address(0)) {
            rewardsVaultAddress =
                rewardsFactory.createRewardVault(_stakingToken);
        }
        return IRewardVault(rewardsVaultAddress);
    }

    /*//////////////////////////////////////////////////////////////
                            STAKE/WITHDRAW/CLAIM
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Transfers to berachain low level module on staking of LP tokens with the vault after transferring tokens in
     * @param amount The amount of staking token transferred in to the contract
     */
    function onStake(uint256 amount) internal override {
        stakingToken.safeApprove(address(rewardsVault), amount);
        rewardsVault.stake(amount);
    }

    /**
     * @notice Redeems from berachain low level module on withdraw of LP tokens from the vault before transferring tokens out
     * @param amount The amount of staking token transferred out of the contract
     */
    function onWithdraw(uint256 amount) internal override {
        rewardsVault.withdraw(amount);
    }

    /**
     * @notice hook called after the reward is claimed to harvest the rewards from the berachain rewards vault
     */
    function onReward() internal override {
        IInfrared(infrared).harvestVault(address(stakingToken));
    }

    /*//////////////////////////////////////////////////////////////
                            INFRARED ONLY
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IInfraredVault
    function updateRewardsDuration(
        address _rewardsToken,
        uint256 _rewardsDuration
    ) external onlyInfrared {
        if (_rewardsToken == address(0)) revert Errors.ZeroAddress();
        if (_rewardsDuration == 0) revert Errors.ZeroAmount();
        _setRewardsDuration(_rewardsToken, _rewardsDuration);
    }

    /// @inheritdoc IInfraredVault
    function unpauseStaking() external onlyInfrared {
        if (!paused()) return;
        _unpause();
    }

    /// @inheritdoc IInfraredVault
    function pauseStaking() external onlyInfrared {
        if (paused()) return;
        _pause();
    }

    /// @inheritdoc IInfraredVault
    function addReward(address _rewardsToken, uint256 _rewardsDuration)
        external
        onlyInfrared
    {
        if (_rewardsToken == address(0)) revert Errors.ZeroAddress();
        if (_rewardsDuration == 0) revert Errors.ZeroAmount();
        if (
            rewardTokens.length == MAX_NUM_REWARD_TOKENS
                && _rewardsToken != address(IInfrared(infrared).ir())
        ) {
            revert Errors.MaxNumberOfRewards();
        }
        _addReward(_rewardsToken, infrared, _rewardsDuration);
    }

    /// @inheritdoc IInfraredVault
    function removeReward(address _rewardsToken) external onlyInfrared {
        if (_rewardsToken == address(0)) revert Errors.ZeroAddress();
        _removeReward(_rewardsToken);
    }

    /// @inheritdoc IInfraredVault
    function notifyRewardAmount(address _rewardToken, uint256 _reward)
        external
        onlyInfrared
    {
        if (_rewardToken == address(0)) revert Errors.ZeroAddress();
        if (_reward == 0) revert Errors.ZeroAmount();
        _notifyRewardAmount(_rewardToken, _reward);
    }

    /// @inheritdoc IInfraredVault
    function recoverERC20(address _to, address _token, uint256 _amount)
        external
        onlyInfrared
    {
        if (_to == address(0) || _token == address(0)) {
            revert Errors.ZeroAddress();
        }
        if (_amount == 0) revert Errors.ZeroAmount();
        _recoverERC20(_to, _token, _amount);
    }

    /*//////////////////////////////////////////////////////////////
                            Getters
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IInfraredVault
    function getAllRewardTokens() external view returns (address[] memory) {
        return rewardTokens;
    }

    /// @inheritdoc IInfraredVault
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
}
