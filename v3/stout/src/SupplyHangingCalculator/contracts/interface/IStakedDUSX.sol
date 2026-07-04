// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

/**
 * @title IStakedDUSX
 * @dev Interface for staked DUSX token operations and reward distribution
 * @notice Defines functionality for:
 * 1. DUSX token staking
 * 2. Reward distribution
 * 3. Position management
 */
interface IStakedDUSX {
    /*//////////////////////////////////////////////////////////////
                        REWARD DISTRIBUTION
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Distributes protocol fees as staking rewards
     * @param amount Amount of fees to distribute in base units
     * @dev Handles:
     * · Pro-rata distribution
     * · Reward accounting
     * · Distribution events
     *
     * Rewards are:
     * · Automatically calculated
     * · Immediately available
     * · Proportional to stake
     */
    function distributeFees(uint256 amount) external;

    /**
     * @notice Claims pending fee rewards for the caller
     * @return claimedAmount Amount of fees claimed
     * @dev Allows users to manually claim their accumulated fees
     */
    function claimFees() external returns (uint256 claimedAmount);

    /*//////////////////////////////////////////////////////////////
                        STAKING OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Processes DUSX token deposits for staking
     * @param from Address providing the tokens
     * @param to Address receiving the staked position
     * @param amount Quantity of tokens to stake in base units
     * @dev Manages:
     * · Token transfers
     * · Position creation
     * · Reward calculations
     *
     * Supports:
     * · Direct deposits
     * · Delegated deposits
     * · Position tracking
     */
    function deposit(address from, address to, uint256 amount) external;

    /**
     * @notice Initiates a withdrawal from staked DUSX
     * @param amount Amount of tokens to withdraw
     */
    function beginWithdrawal(uint256 amount) external;

    /**
     * @notice Processes withdrawal of staked DUSX tokens
     * @param account Address withdrawing tokens
     * @dev Handles:
     * · Position updates
     * · Reward claims
     * · Token transfers
     *
     * Ensures:
     * · Sufficient balance
     * · Reward distribution
     * · Clean exit
     */
    function withdraw(address account) external;

    /**
     * @notice Views pending unclaimed fees for an account
     * @param account Address to check for pending fees
     * @return pendingAmount Amount of pending fees available to claim
     * @dev Calculates based on the fee accumulator and account's last claimed value
     */
    function pendingFees(
        address account
    ) external view returns (uint256 pendingAmount);
}
