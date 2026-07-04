// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

/**
 * @title IICOVault
 * @notice Interface for ICO Vault
 * @author USD.AI Foundation
 */
interface IICOVault {
    /*------------------------------------------------------------------------*/
    /* Errors                                                                 */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Invalid decimals
     */
    error InvalidDecimals();

    /**
     * @notice Invalid yield token
     */
    error InvalidYieldToken();

    /**
     * @notice Invalid amount
     */
    error InvalidAmount();

    /**
     * @notice Invalid window
     */
    error InvalidWindow();

    /**
     * @notice Invalid expiry
     */
    error InvalidExpiry();

    /**
     * @notice Blacklisted address
     * @param account Address
     */
    error BlacklistedAddress(address account);

    /*------------------------------------------------------------------------*/
    /* Events                                                                 */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Deposited yield token event
     * @param depositor Depositor address
     * @param yieldToken Yield token address
     * @param amount Amount deposited
     */
    event Deposited(address indexed depositor, address indexed yieldToken, uint256 amount);

    /**
     * @notice Claimed event
     * @param depositor Depositor address
     * @param amount Amount claimed
     */
    event Claimed(address indexed depositor, uint256 amount);

    /**
     * @notice Withrawn refund event
     * @param depositor Depositor address
     * @param chipAmount Amount of CHIP relinquished
     * @param refundAmount Amount of reward token refunded
     */
    event RefundWithdrawn(address indexed depositor, uint256 chipAmount, uint256 refundAmount);

    /**
     * @notice Withdrawn chip event
     * @param depositor Depositor address
     * @param chipAmount Amount of CHIP withdrawn
     */
    event ChipWithdrawn(address indexed depositor, uint256 chipAmount);

    /**
     * @notice Withdrawn chip and reward event
     * @param depositor Depositor address
     * @param chipAmount Amount of CHIP withdrawn
     * @param rewardAmount Amount of reward token received
     */
    event ChipAndRewardWithdrawn(address indexed depositor, uint256 chipAmount, uint256 rewardAmount);

    /**
     * @notice Reward deposited event
     * @param amount Amount of reward token deposited
     */
    event RewardDeposited(uint256 amount);

    /**
     * @notice Reward withdrawn event
     * @param amount Amount of reward token withdrawn
     */
    event RewardWithdrawn(uint256 amount);

    /**
     * @notice Yield claimed event
     * @param recipient Recipient of the claimed yield
     * @param yieldToken Yield token address
     * @param interestToken Interest token address
     * @param amount Amount of interest claimed
     */
    event YieldClaimed(
        address indexed recipient, address indexed yieldToken, address indexed interestToken, uint256 amount
    );

    /*------------------------------------------------------------------------*/
    /* Getters                                                                */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Get implementation version
     * @return Version string
     */
    function IMPLEMENTATION_VERSION() external pure returns (string memory);

    /**
     * @notice Get vault name
     * @return Vault name string
     */
    function VAULT_NAME() external view returns (string memory);

    /**
     * @notice Yield token
     * @return Yield token 1 address
     * @return Yield token 2 address
     */
    function yieldTokens() external view returns (address, address);

    /**
     * @notice Reward token
     * @return Reward token address
     */
    function rewardToken() external view returns (address);

    /**
     * @notice Window
     * @return Window start timestamp
     * @return Window end timestamp
     */
    function window() external view returns (uint64, uint64);

    /**
     * @notice Vault expiry
     * @return Vault expiry timestamp
     */
    function expiry() external view returns (uint256);

    /**
     * @notice Total yield token amount
     * @return Total yield token 1 amount
     * @return Total yield token 2 amount
     */
    function totalYieldTokenAmounts() external view returns (uint256, uint256);

    /**
     * @notice Yield token amount
     * @param depositor Depositor address
     * @return Yield token 1 amount
     * @return Yield token 2 amount
     */
    function yieldTokenAmounts(
        address depositor
    ) external view returns (uint256, uint256);

    /**
     * @notice Reward ratio
     * @return Reward ratio
     */
    function rewardRatio() external view returns (uint256);

    /*------------------------------------------------------------------------*/
    /* Public API                                                             */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Deposit yield token
     * @param yieldToken Yield token address
     * @param amount Amount to deposit
     */
    function deposit(
        address yieldToken,
        uint256 amount
    ) external;

    /**
     * @notice Claim CHIP
     * @param merkleProof Merkle proof
     * @param amount Amount to claim
     */
    function claim(
        bytes32[] calldata merkleProof,
        uint256 amount
    ) external;

    /**
     * @notice Withdraw refund
     * @return Amount of CHIP relinquished
     * @return Amount of reward token refunded
     */
    function withdrawRefund() external returns (uint256, uint256);

    /**
     * @notice Withdraw CHIP
     * @return Amount of CHIP withdrawn
     */
    function withdrawChip() external returns (uint256);

    /**
     * @notice Withdraw CHIP and reward
     * @return Amount of CHIP withdrawn
     * @return Amount of reward token received
     */
    function withdrawChipAndReward() external returns (uint256, uint256);

    /*------------------------------------------------------------------------*/
    /* Permissioned API                                                       */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Claim accrued yield to recipient
     * @param recipient Address to receive the claimed yield
     */
    function claimYield(
        address recipient
    ) external;

    /**
     * @notice Deposit reward token
     * @param amount Amount to deposit
     */
    function depositReward(
        uint256 amount
    ) external;

    /**
     * @notice Withdraw reward token
     * @param amount Amount to withdraw
     */
    function withdrawReward(
        uint256 amount
    ) external;
}
