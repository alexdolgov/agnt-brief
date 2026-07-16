// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

interface IMetaCore {
    // ---------------------------------
    // Structures
    // ---------------------------------
    struct FeeInfo {
        bool existsForDebtToken;
        uint16 debtTokenFee;
    }

    struct RebalancerFeeInfo {
        bool exists;
        uint16 entryFee;
        uint16 exitFee;
    }

    // ---------------------------------
    // Public constants
    // ---------------------------------
    function OWNERSHIP_TRANSFER_DELAY() external view returns (uint256);
    function DEFAULT_FLASH_LOAN_FEE() external view returns (uint16);

    // ---------------------------------
    // Public state variables
    // ---------------------------------
    function debtToken() external view returns (address);
    function lspEntryFee() external view returns (uint16);
    function lspExitFee() external view returns (uint16);
    function interestProtocolShare() external view returns (uint16);
    /// @dev Default interest receiver for all PositionManagers, unless overriden in the respective PM
    function defaultInterestReceiver() external view returns (address);

    function feeReceiver() external view returns (address);
    function priceFeed() external view returns (address);
    function owner() external view returns (address);
    function pendingOwner() external view returns (address);
    function ownershipTransferDeadline() external view returns (uint256);
    function guardian() external view returns (address);
    function paused() external view returns (bool);
    function lspBootstrapPeriod() external view returns (uint64);

    // ---------------------------------
    // External functions
    // ---------------------------------
    function setFeeReceiver(address _feeReceiver) external;
    function setPriceFeed(address _priceFeed) external;
    function setGuardian(address _guardian) external;

    /**
     * @notice Global pause/unpause
     *         Pausing halts new deposits/borrowing across the protocol
     */
    function setPaused(bool _paused) external;

    /**
     * @notice Extend or change the LSP bootstrap period,
     *         after which certain protocol mechanics change
     */
    function setLspBootstrapPeriod(uint64 _bootstrapPeriod) external;

    /**
     * @notice Set a custom flash-loan fee for a given periphery contract
     * @param _periphery Target contract that will get this custom fee
     * @param _debtTokenFee Fee in basis points (bp)
     * @param _existsForDebtToken Whether this custom fee is used when the caller = `debtToken`
     */
    function setPeripheryFlashLoanFee(address _periphery, uint16 _debtTokenFee, bool _existsForDebtToken) external;

    /**
     * @notice Begin the ownership transfer process
     * @param newOwner The address proposed to be the new owner
     */
    function commitTransferOwnership(address newOwner) external;

    /**
     * @notice Finish the ownership transfer, after the mandatory delay
     */
    function acceptTransferOwnership() external;

    /**
     * @notice Revoke a pending ownership transfer
     */
    function revokeTransferOwnership() external;

    /**
     * @notice Look up a custom flash-loan fee for a specific periphery contract
     * @param peripheryContract The contract that might have a custom fee
     * @return The flash-loan fee in basis points
     */
    function getPeripheryFlashLoanFee(address peripheryContract) external view returns (uint16);

    /**
     * @notice Set / override entry & exit fees for a special rebalancer contract
     */
    function setRebalancerFee(address _rebalancer, uint16 _entryFee, uint16 _exitFee) external;

    /**
     * @notice Set the LSP entry fee globally
     * @param _fee Fee in basis points
     */
    function setEntryFee(uint16 _fee) external;

    /**
     * @notice Set the LSP exit fee globally
     * @param _fee Fee in basis points
     */
    function setExitFee(uint16 _fee) external;

    /**
     * @notice Set the interest protocol share globally to all PositionManagers
     * @param _interestProtocolShare Share in basis points
     */
    function setInterestProtocolShare(uint16 _interestProtocolShare) external;

    /**
     * @notice Look up the LSP entry fee for a rebalancer
     * @param rebalancer Possibly has a special fee
     * @return The entry fee in basis points
     */
    function getLspEntryFee(address rebalancer) external view returns (uint16);

    /**
     * @notice Look up the LSP exit fee for a rebalancer
     * @param rebalancer Possibly has a special fee
     * @return The exit fee in basis points
     */
    function getLspExitFee(address rebalancer) external view returns (uint16);

    // ---------------------------------
    // Events
    // ---------------------------------
    event NewOwnerCommitted(address indexed owner, address indexed pendingOwner, uint256 deadline);
    event NewOwnerAccepted(address indexed oldOwner, address indexed newOwner);
    event NewOwnerRevoked(address indexed owner, address indexed revokedOwner);

    event FeeReceiverSet(address indexed feeReceiver);
    event PriceFeedSet(address indexed priceFeed);
    event GuardianSet(address indexed guardian);
    event PeripheryFlashLoanFee(address indexed periphery, uint16 debtTokenFee);
    event LSPBootstrapPeriodSet(uint64 bootstrapPeriod);
    event RebalancerFees(address indexed rebalancer, uint16 entryFee, uint16 exitFee);
    event EntryFeeSet(uint16 fee);
    event ExitFeeSet(uint16 fee);
    event InterestProtocolShareSet(uint16 interestProtocolShare);
    event DefaultInterestReceiverSet(address indexed defaultInterestReceiver);
    event Paused();
    event Unpaused();
}
