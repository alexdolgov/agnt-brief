// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

/// @title IDVNPublisherFactory
/// @notice Interface for creating DVN publishers
interface IDVNPublisherFactory {
    /// @notice Emitted when a new DVN publisher is created
    /// @param publisher The address of the created publisher
    event DVNPublisherCreated(address indexed publisher);

    /// @notice Emitted when the implementation address is set
    /// @param oldImplementation The old implementation address
    /// @param newImplementation The new implementation address
    event ImplementationSet(address oldImplementation, address newImplementation);

    /// @notice Sets the implementation address of the DVN publisher
    /// @param implementation The implementation address of the DVN publisher
    function setImplementation(address implementation) external;

    /// @notice Creates a new DVN publisher
    /// @param strategy The strategy address
    /// @param threshold The threshold for the publisher
    /// @return The address of the created publisher
    function createDVNPublisher(address strategy, uint256 threshold) external returns (address);

    /// @notice Get the implementation address of the DVN publisher
    function implementation() external view returns (address);
}
