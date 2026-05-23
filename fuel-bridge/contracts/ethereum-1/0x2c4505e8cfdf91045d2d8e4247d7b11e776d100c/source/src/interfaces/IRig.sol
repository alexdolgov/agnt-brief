// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title Interface for the Rig contract
/// @notice This interface defines the external functions and errors for the Rig contract
interface IRig {
    /// @notice Rig Treasury is not set.
    error RigTreasuryNotSet();

    /// @notice Invalid Sequencer Interface.
    error InvalidSequencerInterface();

    /// @notice Invalid Fuel Token.
    error InvalidFuelToken();

    /// @notice Invalid Rig Treasury.
    error InvalidRigTreasury();

    /// @notice Emitted when the Rig Treasury address is set
    /// @param treasury The new treasury address
    event RigTreasurySet(address indexed treasury);

    /// @notice Returns the version of the contract
    /// @return The version string
    function VERSION() external pure returns (string memory);
    
    /// @notice Sets the Rig Treasury address
    /// @param treasury The address of the treasury
    function setRigTreasury(address treasury) external;
    
    /// @notice Freezes all contract functionality
    function pause() external;
    
    /// @notice Unfreezes all contract functionality
    function unpause() external;
    
    /// @notice Deposits tokens into the Sequencer chain
    /// @param amount The amount of tokens to deposit
    function deposit(uint256 amount) external;
    
    /// @notice Delegates tokens to a validator in the Sequencer chain
    /// @param amount The amount of tokens to delegate
    /// @param validator The address of the validator
    function delegate(uint256 amount, address validator) external;

    /// @notice Deposits and delegates a specified amount of tokens found in the sequencer chain to a validator.
    /// @param amount The amount of tokens to delegate
    /// @param validator The address of the validator
    function depositAndDelegate(uint256 amount, address validator) external;

    /// @notice Undelegates tokens from a validator and initiates the unbonding period
    /// @param amount The amount of tokens to unbond
    /// @param validator The Sequencer Validator Address to unbond from
    function unbond(uint256 amount, address validator) external;
    
    /// @notice Claims rewards earned through staking with a validator
    /// @param validator The Sequencer Validator Address to claim rewards from
    function claimRewards(address validator) external;

    /// @notice Transfers funds in the sequencer to the treasury
    /// @param amount The amount of tokens to transfer
    function transfer(uint256 amount) external;
}
