// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.33;

/**
 * @title IAirdropVault
 * @notice Interface for Airdrop Vault
 * @author Permian Labs
 */
interface IAirdropVault {
    /*------------------------------------------------------------------------*/
    /* Errors                                                                 */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Invalid amount
     */
    error InvalidAmount();

    /**
     * @notice Invalid yield token
     */
    error InvalidYieldToken();

    /**
     * @notice Invalid window
     */
    error InvalidWindow();

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
     * @notice Window set event
     * @param windowStart Window start timestamp
     * @param windowEnd Window end timestamp
     */
    event WindowSet(uint64 windowStart, uint64 windowEnd);

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
     * @notice Yield tokens
     * @return Yield token 1 address
     * @return Yield token 2 address
     */
    function yieldTokens() external view returns (address, address);

    /**
     * @notice Window
     * @return Window start timestamp
     * @return Window end timestamp
     */
    function window() external view returns (uint64, uint64);

    /**
     * @notice Total yield token amounts
     * @return Total yield token 1 amount
     * @return Total yield token 2 amount
     */
    function totalYieldTokenAmounts() external view returns (uint256, uint256);

    /**
     * @notice Yield token amounts
     * @param depositor Depositor address
     * @return Yield token 1 amount
     * @return Yield token 2 amount
     */
    function yieldTokenAmounts(
        address depositor
    ) external view returns (uint256, uint256);

    /*------------------------------------------------------------------------*/
    /* Public API                                                             */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Deposit
     * @param yieldToken Yield token address
     * @param amount Amount to deposit
     */
    function deposit(
        address yieldToken,
        uint256 amount
    ) external;

    /*------------------------------------------------------------------------*/
    /* Admin API                                                              */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Claim accrued yield to recipient
     * @param recipient Address to receive the claimed yield
     */
    function claimYield(
        address recipient
    ) external;
}
