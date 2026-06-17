// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.28;

interface IJuniorBoostHelperFactory {
    // Events

    /// @notice Emitted when a new proxy is created
    /// @param owner The address of the owner of the proxy
    /// @param proxy The address of the created proxy
    event CreateProxy(address indexed owner, address indexed proxy);

    /// @notice Emitted when the proxy implementation is set
    /// @param implementation The address of the new proxy implementation
    event SetProxyImplementation(address indexed implementation);

    /// @notice Emitted when the Morpho address is set.
    /// @param morpho The address of the Morpho contract.
    event SetMorpho(address morpho);

    /// @notice Emitted when the OrderBook address is set.
    /// @param orderBook The address of the OrderBook contract.
    event SetOrderBook(address orderBook);

    // Functions

    /// @notice Pauses the contract, disabling certain functions
    function pause() external;

    /// @notice Unpauses the contract, enabling certain functions
    function unpause() external;

    /// @notice Sets the address of the proxy implementation
    /// @param proxyImplementation_ The address of the new proxy implementation
    function setProxyImplementation(address proxyImplementation_) external;

    /// @notice Sets the address of the Morpho contract
    /// @param morpho_ The address of the Morpho contract
    function setMorpho(address morpho_) external;

    /// @notice Sets the address of the order book
    /// @param orderBook_ The address of the order book
    function setOrderBook(address orderBook_) external;

    /// @notice Creates a new proxy
    /// @return proxy The address of the created proxy
    function create() external returns (address proxy);
}
