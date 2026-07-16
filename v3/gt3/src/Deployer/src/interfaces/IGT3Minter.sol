// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

/// @title IGT3Minter Interface
/// @notice Interface for the GT3Minter contract that handles token emissions and rebases
interface IGT3Minter {
    /// @dev Reverts when GT3 address is zero during initialization
    error MinterInitZeroGT3();

    /// @dev Reverts when xGT3 address is zero during initialization
    error MinterInitZeroXGT3();

    /// @dev Reverts when attempting to set the voter more than once
    error MinterVoterAlreadySetted();

    /// @dev Reverts when a zero address is provided where it is not allowed
    error MinterZeroAddress();

    /// @notice Emitted when the voter address is updated
    /// @param voter The new voter address
    event UpdateVoter(address indexed voter);

    /// @notice Initializes the minter contract
    /// @dev Sets up initial configuration and connections to other protocol contracts
    /// @param owner_ Address that will own the contract
    /// @param gt3_ Address of the GT3 token contract
    /// @param xGt3_ Address of the xGT3 token contract
    /// @param rebase_ Address of the rebase contract
    function initialize(address owner_, address gt3_, address xGt3_, address rebase_) external;

    /// @notice Returns the duration of an epoch
    /// @return The duration in seconds
    function duration() external view returns (uint256);

    /// @notice Returns the current active period
    /// @return The timestamp of the current period start
    function activePeriod() external view returns (uint256);

    /// @notice Updates the current period if necessary, minting and distributing new tokens
    /// @dev Can be called by anyone, but will only execute if a new period has started
    function updatePeriod() external;

    /// @notice Sets the initial voter address
    /// @dev Can only be called once when voter is not set
    /// @param voter_ The address to be set as voter
    function setVoter(address voter_) external;

    /// @notice The monthly emission rate
    /// @return The current monthly emission amount
    function monthly() external view returns (uint256);

    /// @notice The voter contract
    /// @return The address of the voter contract
    function voter() external view returns (address);

    /// @dev Returns the rebase amount based on current emission and locked tokens
    /// @return rebase Amount of tokens to be rebased
    function calculateRebase() external view returns (uint256 rebase);
}
