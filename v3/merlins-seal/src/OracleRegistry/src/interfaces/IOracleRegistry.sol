// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

/// @title IOracleRegistry
/// @author luoyhang003
/// @notice Interface for Oracle Registry contract to manage token oracles and price updates
/// @dev Handles addition, removal, and updates of token oracles. Stores historical prices and cut-off prices.
///      Includes role-based access control: PRICE_UPDATE_ROLE for price updates, ORACLE_MANAGE_ROLE for oracle management.
interface IOracleRegistry {
    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when a new token oracle is added
    /// @param token The token address associated with the oracle
    /// @param oracle The oracle address providing price feeds
    /// @dev Only callable via OracleRegistry contract functions that manage oracles
    event OracleAdded(address indexed token, address indexed oracle);

    /// @notice Emitted when a token oracle is removed
    /// @param token The token address whose oracle is removed
    /// @dev Only callable via OracleRegistry contract functions that manage oracles
    event OracleRemoved(address indexed token);

    /// @notice Emitted when a token oracle is updated
    /// @param token The token address whose oracle is updated
    /// @param oracle The new oracle address
    /// @dev Only callable via OracleRegistry contract functions that manage oracles
    event OracleUpdated(address indexed token, address indexed oracle);

    /// @notice Emitted when a token price is updated
    /// @param token The token address
    /// @param price The new price
    /// @param updatedAt Timestamp when the price is updated
    /// @param isCutOffPrice Whether this price is a cut-off price
    /// @dev Only callable by addresses with PRICE_UPDATE_ROLE
    event PriceUpdated(
        address indexed token,
        uint256 price,
        uint256 updatedAt,
        bool isCutOffPrice
    );

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the oracle feed address for a given token
    /// @param _token Token address to query
    /// @return oracle_ Address of the oracle feed
    /// @dev Returns zero address if token is not registered
    function getOracle(address _token) external view returns (address oracle_);

    /// @notice Returns all registered token addresses
    /// @return tokens_ Array of token addresses
    /// @dev Useful for iterating over all tokens to fetch historical prices
    function getTokens() external view returns (address[] memory tokens_);

    /// @notice Returns the timestamp of the latest common price update
    /// @return timestamp_ Timestamp of latest update
    /// @dev Reverts if no updates exist
    function latestPricesUpdatedAt() external view returns (uint256 timestamp_);

    /// @notice Returns the timestamp of the latest cut-off price update
    /// @return timestamp_ Timestamp of latest cut-off update
    /// @dev Reverts if no cut-off updates exist
    function latestCutOffPriceUpdatedAt()
        external
        view
        returns (uint256 timestamp_);

    /// @notice Returns the latest price of a token from its oracle
    /// @param _token Token address
    /// @return price_ Latest price from oracle
    /// @dev Performs deviation check to prevent extreme values
    function peek(address _token) external view returns (uint256 price_);

    /// @notice Returns historical price for a token at a given index
    /// @param _token Token address
    /// @param _index Index (0 = latest)
    /// @return price_ Historical price
    /// @dev Checks price validity (time not expired)
    function peekAt(
        address _token,
        uint256 _index
    ) external view returns (uint256 price_);

    /// @notice Returns historical price without validity check
    /// @param _token Token address
    /// @param _index Index (0 = latest)
    /// @return price_ Historical price
    /// @dev Useful for auditing or internal calculations
    function onlyPeekAt(
        address _token,
        uint256 _index
    ) external view returns (uint256 price_);

    /// @notice Returns the historical price of the vault token at a given index
    /// @param _index Index (0 = latest)
    /// @return price_ Vault token price
    /// @dev Checks price validity
    function getVaultTokenPrice(
        uint256 _index
    ) external view returns (uint256 price_);

    /// @notice Returns the historical price of the vault token without validity check
    /// @param _index Index (0 = latest)
    /// @return price_ Vault token price
    /// @dev Useful for internal calculations
    function onlyGetVaultTokenPrice(
        uint256 _index
    ) external view returns (uint256 price_);

    /// @notice Returns token price at a cut-off update
    /// @param _token Token address
    /// @param _index Index of cut-off update (0 = latest)
    /// @return price_ The cut-off price for the token
    /// @dev Reverts if price is expired or index out of bounds
    function getCutOffPrice(
        address _token,
        uint256 _index
    ) external view returns (uint256 price_);

    /// @notice Returns token addresses and prices at a cut-off update
    /// @param _index Index of cut-off update (0 = latest)
    /// @return tokens_ Array of token addresses
    /// @return prices_ Array of prices for each token
    /// @dev Reverts if price is expired or index out of bounds
    function getCutOffPrices(
        uint256 _index
    )
        external
        view
        returns (address[] memory tokens_, uint256[] memory prices_);

    /// @notice Same as `getCutOffPrices` but does not check validity
    /// @param _index Index of cut-off update (0 = latest)
    /// @return tokens_ Array of token addresses
    /// @return prices_ Array of prices for each token
    /// @dev Useful for internal auditing or calculation
    function onlyGetCutOffPrices(
        uint256 _index
    )
        external
        view
        returns (address[] memory tokens_, uint256[] memory prices_);

    /// @notice Returns the vault token cut-off price at a given index
    /// @param _index Index of cut-off update (0 = latest)
    /// @return price_ Vault token price
    /// @dev Checks validity
    function getVaultTokenCutOffPrice(
        uint256 _index
    ) external view returns (uint256 price_);

    /// @notice Returns the vault token cut-off price without validity check
    /// @param _index Index of cut-off update (0 = latest)
    /// @return price_ Vault token price
    /// @dev Useful for internal calculations
    function onlyGetVaultTokenCutOffPrice(
        uint256 _index
    ) external view returns (uint256 price_);
}
