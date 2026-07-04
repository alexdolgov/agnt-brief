// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

/// @title IPairFeesFactory
/// @notice Interface for the factory contract that creates and manages PairFees instances
interface IPairFeesFactory {
    /// @notice Error thrown when attempting to use zero address
    error PairFeesFactoryZeroAddress();

    /// @notice Error thrown when attempting to create a PairFees that already exists
    error PairFeesFactoryPairFeesAlreadyExists();

    /// @notice Emitted when a new PairFees instance is created
    /// @param token0 The first token of the pair (sorted by address)
    /// @param token1 The second token of the pair (sorted by address)
    /// @param pair The address of the pair contract
    /// @param pairFees The address of the created PairFees contract
    event PairFeesFactoryPairFeesCreated(
        address indexed token0, address indexed token1, address pair, address pairFees
    );

    /// @notice Emitted when the pair factory address is set
    /// @param pairFactory The address of the pair factory
    event SetPairFactory(address indexed pairFactory);

    /// @notice Initializes a new PairFeesFactory
    /// @dev Sets up the owner and implementation
    /// @param owner_ The address that will own this contract
    /// @param implementation_ The implementation address for PairFees
    function initialize(address owner_, address implementation_) external;

    /// @notice Creates a new PairFees instance for a token pair
    /// @dev Only callable by valid pairs, tokens are sorted by address
    /// @param token0 The first token of the pair
    /// @param token1 The second token of the pair
    /// @return pairFees The address of the created PairFees contract
    function createPairFees(address token0, address token1) external returns (address pairFees);
}
