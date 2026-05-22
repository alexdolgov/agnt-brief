// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

import {IOracleFeed} from "../interfaces/IOracleFeed.sol";
import {IOracleRegistry} from "../interfaces/IOracleRegistry.sol";
import {IParamRegistry} from "../interfaces/IParamRegistry.sol";

import {Constants} from "../common/Constants.sol";
import {Errors} from "../libraries/Errors.sol";

/// @title OracleRegistry
/// @author luoyhang003
/// @notice Manages prices for vaultToken and other registered tokens, including updates from oracles and cut-off prices.
/// @dev Uses OpenZeppelin AccessControl for role-based permissioning
/// @dev Stores historical prices and supports both common and cut-off price updates
/// @dev Performs deviation checks to prevent extreme price manipulations
contract OracleRegistry is AccessControl, Constants, IOracleRegistry {
    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Role allowed to update prices
    /// @dev Only addresses with this role can call `updatePrices`
    /// @dev Calculated as keccak256("PRICE_UPDATE_ROLE").
    bytes32 public constant PRICE_UPDATE_ROLE = keccak256("PRICE_UPDATE_ROLE");

    /// @notice Role allowed to manage oracles
    /// @dev Only addresses with this role can call `addTokenOracle`, `removeTokenOracle`, `updateTokenOracle`
    /// @dev Calculated as keccak256("ORACLE_MANAGE_ROLE").
    bytes32 public constant ORACLE_MANAGE_ROLE =
        keccak256("ORACLE_MANAGE_ROLE");

    /// @notice Parameter registry contract
    /// @dev Used to fetch tolerances, price update intervals, and validity durations
    IParamRegistry public paramRegistry;

    /// @notice Vault token address
    /// @dev Core token whose price is specially managed and checked against exchange rate tolerances
    address public immutable vaultToken;

    /// @notice List of all registered tokens
    /// @dev Used for iteration during price updates and retrieving historical prices
    address[] public tokens;

    /// @notice Timestamps of common price updates
    /// @dev Index corresponds to historical versions of price updates
    uint256[] public commonPriceUpdatedAt;

    /// @notice Timestamps of cut-off price updates
    /// @dev Only updated when `_isCutOffPrice` is true during `updatePrices`
    uint256[] public cutOffPriceUpdateAt;

    /// @notice Token => Timestamp => Price mapping
    /// @dev Stores all historical prices for each token
    mapping(address => mapping(uint256 => uint256)) public prices;

    /// @notice Token => OracleFeed mapping
    /// @dev Internal mapping to track which oracle feed is used for each token
    mapping(address => IOracleFeed) private _oracles;

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Initializes OracleRegistry
    /// @param _vaultToken Core vault token
    /// @param _tokens Tokens to register initially
    /// @param _oracleFeeds Corresponding oracle feeds
    /// @param _paramRegistry Parameter registry contract
    /// @param _defaultAdmin Admin address for DEFAULT_ADMIN_ROLE
    /// @param _priceUpdateRole Address granted the PRICE_UPDATE_ROLE.
    /// @param _oracleManageRole Address granted the ORACLE_MANAGE_ROLE.
    /// @dev Performs zero-address checks and ensures token/oracle arrays have the same length
    /// @dev Initializes initial prices and emits `PriceUpdated` events
    constructor(
        address _vaultToken,
        address[] memory _tokens,
        address[] memory _oracleFeeds,
        address _paramRegistry,
        address _defaultAdmin,
        address _priceUpdateRole,
        address _oracleManageRole
    ) {
        if (
            _vaultToken == address(0) ||
            _paramRegistry == address(0) ||
            _defaultAdmin == address(0) ||
            _priceUpdateRole == address(0) ||
            _oracleManageRole == address(0)
        ) revert Errors.ZeroAddress();

        paramRegistry = IParamRegistry(_paramRegistry);

        uint256 tokenLength = _tokens.length;
        if (tokenLength == 0 || tokenLength != _oracleFeeds.length)
            revert Errors.InvalidArrayLength();

        uint256 updatedAt = block.timestamp;

        // Initialize token-oracle pairs
        uint256 i;
        for (i = 0; i < tokenLength; i++) {
            address token = _tokens[i];
            address oracle = _oracleFeeds[i];

            if (token == _vaultToken) revert Errors.ConflictiveToken();

            if (token == address(0) || oracle == address(0))
                revert Errors.ZeroAddress();

            tokens.push(token);

            IOracleFeed feed = IOracleFeed(oracle);
            _checkOracleInitialPrice(feed);
            _oracles[token] = feed;

            emit OracleAdded(token, oracle);

            uint256 price = feed.peek();
            prices[token][updatedAt] = price;

            emit PriceUpdated(token, price, updatedAt, false);
        }

        // Initialize vault token price
        vaultToken = _vaultToken;
        prices[_vaultToken][updatedAt] = INIT_EXCHANGE_PRICE;

        emit PriceUpdated(_vaultToken, INIT_EXCHANGE_PRICE, updatedAt, false);

        commonPriceUpdatedAt.push(updatedAt);

        // Grant default admin role
        _grantRole(DEFAULT_ADMIN_ROLE, _defaultAdmin);

        _grantRole(PRICE_UPDATE_ROLE, _priceUpdateRole);
        _grantRole(ORACLE_MANAGE_ROLE, _oracleManageRole);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    PRICE UPDATE LOGIC
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Updates prices for vault token and other registered tokens
    /// @param _vaultTokenPrice New vault token price
    /// @param _isCutOffPrice Whether the update is a cut-off price
    /// @dev Reverts if price deviates beyond tolerances or updates are too frequent
    /// @dev Updates all registered tokens based on their oracle feeds
    function updatePrices(
        uint256 _vaultTokenPrice,
        bool _isCutOffPrice
    ) external onlyRole(PRICE_UPDATE_ROLE) {
        uint256 latestExchangeRate = onlyPeekAt(vaultToken, 0);
        uint256 maxUpperDeviation = (latestExchangeRate *
            paramRegistry.getExchangeRateMaxUpperToleranceBps()) /
            BPS_DENOMINATOR;

        uint256 maxLowerDeviation = (latestExchangeRate *
            paramRegistry.getExchangeRateMaxLowerToleranceBps()) /
            BPS_DENOMINATOR;

        if (
            _vaultTokenPrice > latestExchangeRate + maxUpperDeviation ||
            _vaultTokenPrice < latestExchangeRate - maxLowerDeviation
        ) revert Errors.ExceedMaxDeviation();

        uint256 updatedAt = block.timestamp;

        if (
            latestPricesUpdatedAt() + paramRegistry.getPriceUpdateInterval() >
            updatedAt
        ) revert Errors.PriceUpdateTooFrequent();

        // Update vault token price
        prices[vaultToken][updatedAt] = _vaultTokenPrice;

        emit PriceUpdated(
            vaultToken,
            _vaultTokenPrice,
            updatedAt,
            _isCutOffPrice
        );

        // Update other tokens
        uint256 i;
        uint256 tokenLength = tokens.length;
        for (i; i < tokenLength; i++) {
            address token = tokens[i];
            uint256 price = peek(token);

            prices[token][updatedAt] = price;

            emit PriceUpdated(token, price, updatedAt, _isCutOffPrice);
        }

        commonPriceUpdatedAt.push(updatedAt);

        if (_isCutOffPrice) {
            cutOffPriceUpdateAt.push(updatedAt);
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ORACLE MANAGE LOGIC
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Adds a new token and its oracle feed
    /// @param _token Token address
    /// @param _oracle Oracle feed address
    /// @dev Only callable by ORACLE_MANAGE_ROLE
    /// @dev Reverts if token already exists or any address is zero
    function addTokenOracle(
        address _token,
        address _oracle
    ) external onlyRole(ORACLE_MANAGE_ROLE) {
        if (tokens.length >= paramRegistry.getArrayLengthLimit())
            revert Errors.ExceedArrayLengthLimit();

        if (_token == vaultToken) revert Errors.ConflictiveToken();

        if (_token == address(0) || _oracle == address(0))
            revert Errors.ZeroAddress();

        if (address(_oracles[_token]) != address(0))
            revert Errors.OracleAlreadyAdded();

        // Fetch initial price and enforce stablecoin deviation limits
        IOracleFeed feed = IOracleFeed(_oracle);
        _checkOracleInitialPrice(feed);

        tokens.push(_token);
        _oracles[_token] = feed;

        emit OracleAdded(_token, _oracle);
    }

    /// @notice Removes a token and its oracle feed
    /// @param _token Token address to remove
    /// @dev Uses swap-and-pop for efficient removal from array
    /// @dev Only callable by ORACLE_MANAGE_ROLE
    function removeTokenOracle(
        address _token
    ) external onlyRole(ORACLE_MANAGE_ROLE) {
        if (address(_oracles[_token]) == address(0))
            revert Errors.OracleNotExist();

        uint256 length = tokens.length;
        uint256 i;
        for (i; i < length; i++) {
            if (tokens[i] == _token) {
                tokens[i] = tokens[length - 1];
                tokens.pop();
                break;
            }
        }
        delete _oracles[_token];

        emit OracleRemoved(_token);
    }

    /// @notice Updates an existing token’s oracle feed
    /// @param _token Token address
    /// @param _oracle New oracle feed address
    /// @dev Only callable by ORACLE_MANAGE_ROLE
    /// @dev Reverts if token does not exist or any address is zero
    function updateTokenOracle(
        address _token,
        address _oracle
    ) external onlyRole(ORACLE_MANAGE_ROLE) {
        if (_token == address(0) || _oracle == address(0))
            revert Errors.ZeroAddress();

        if (address(_oracles[_token]) == address(0))
            revert Errors.OracleNotExist();

        // Fetch initial price and enforce stablecoin deviation limits
        IOracleFeed feed = IOracleFeed(_oracle);
        _checkOracleInitialPrice(feed);

        _oracles[_token] = feed;

        emit OracleUpdated(_token, _oracle);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the oracle feed address for a given token
    /// @param _token Token address to query
    /// @return oracle_ Address of the oracle feed
    /// @dev Returns zero address if token is not registered
    function getOracle(address _token) external view returns (address oracle_) {
        return address(_oracles[_token]);
    }

    /// @notice Returns all registered token addresses
    /// @return tokens_ Array of token addresses
    /// @dev Useful for iterating over all tokens to fetch historical prices
    function getTokens() external view returns (address[] memory tokens_) {
        return tokens;
    }

    /// @notice Returns the timestamp of the latest common price update
    /// @return timestamp_ Timestamp of latest update
    /// @dev Reverts if no updates exist
    function latestPricesUpdatedAt() public view returns (uint256 timestamp_) {
        uint256 length = commonPriceUpdatedAt.length;
        if (length == 0) revert Errors.IndexOutOfBounds();

        return commonPriceUpdatedAt[length - 1];
    }

    /// @notice Returns the timestamp of the latest cut-off price update
    /// @return timestamp_ Timestamp of latest cut-off update
    /// @dev Reverts if no cut-off updates exist
    function latestCutOffPriceUpdatedAt()
        external
        view
        returns (uint256 timestamp_)
    {
        uint256 length = cutOffPriceUpdateAt.length;
        if (length == 0) revert Errors.IndexOutOfBounds();

        return cutOffPriceUpdateAt[length - 1];
    }

    /// @notice Returns the latest price of a token from its oracle
    /// @param _token Token address
    /// @return price_ Latest price from oracle
    /// @dev Performs deviation check to prevent extreme values
    function peek(address _token) public view returns (uint256 price_) {
        if (address(_oracles[_token]) == address(0))
            revert Errors.OracleNotExist();

        uint256 price = _oracles[_token].peek();
        uint256 maxDeviation = (STABLECOIN_BASE_PRICE *
            paramRegistry.getStablecoinPriceToleranceBps()) / BPS_DENOMINATOR;

        if (
            price > STABLECOIN_BASE_PRICE + maxDeviation ||
            price < STABLECOIN_BASE_PRICE - maxDeviation
        ) revert Errors.ExceedMaxDeviation();

        return price;
    }

    /// @notice Returns historical price for a token at a given index
    /// @param _token Token address
    /// @param _index Index (0 = latest)
    /// @return price_ Historical price
    /// @dev Checks price validity (time not expired)
    function peekAt(
        address _token,
        uint256 _index
    ) public view returns (uint256 price_) {
        return _getPrice(_token, _index, true);
    }

    /// @notice Returns historical price without validity check
    /// @param _token Token address
    /// @param _index Index (0 = latest)
    /// @return price_ Historical price
    /// @dev Useful for auditing or internal calculations
    function onlyPeekAt(
        address _token,
        uint256 _index
    ) public view returns (uint256 price_) {
        return _getPrice(_token, _index, false);
    }

    /// @notice Returns the historical price of the vault token at a given index
    /// @param _index Index (0 = latest)
    /// @return price_ Vault token price
    /// @dev Checks price validity
    function getVaultTokenPrice(
        uint256 _index
    ) public view returns (uint256 price_) {
        return _getPrice(vaultToken, _index, true);
    }

    /// @notice Returns the historical price of the vault token without validity check
    /// @param _index Index (0 = latest)
    /// @return price_ Vault token price
    /// @dev Useful for internal calculations
    function onlyGetVaultTokenPrice(
        uint256 _index
    ) public view returns (uint256 price_) {
        return _getPrice(vaultToken, _index, false);
    }

    /// @notice Returns token price at a cut-off update
    /// @param _token Token address
    /// @param _index Index of cut-off update (0 = latest)
    /// @return price_ The cut-off price for the token
    /// @dev Reverts if price is expired or index out of bounds
    function getCutOffPrice(
        address _token,
        uint256 _index
    ) external view returns (uint256 price_) {
        uint256 length = cutOffPriceUpdateAt.length;
        if (_index >= length) revert Errors.IndexOutOfBounds();

        uint256 updatedAt = cutOffPriceUpdateAt[length - _index - 1];
        if (
            block.timestamp >
            paramRegistry.getPriceValidityDuration() + updatedAt
        ) revert Errors.PriceValidityExpired();

        price_ = prices[_token][updatedAt];

        if (price_ == 0) revert Errors.InvalidZeroPrice();
    }

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
        returns (address[] memory tokens_, uint256[] memory prices_)
    {
        uint256 length = cutOffPriceUpdateAt.length;
        if (_index >= length) revert Errors.IndexOutOfBounds();

        uint256 updatedAt = cutOffPriceUpdateAt[length - _index - 1];
        if (
            block.timestamp >
            paramRegistry.getPriceValidityDuration() + updatedAt
        ) revert Errors.PriceValidityExpired();

        uint256 tokenLength = tokens.length;
        tokens_ = new address[](tokenLength);
        prices_ = new uint256[](tokenLength);

        uint256 i;
        for (i; i < tokenLength; i++) {
            address token = tokens[i];
            uint256 price = prices[token][updatedAt];

            if (price == 0) revert Errors.InvalidZeroPrice();

            tokens_[i] = token;
            prices_[i] = price;
        }
    }

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
        returns (address[] memory tokens_, uint256[] memory prices_)
    {
        uint256 length = cutOffPriceUpdateAt.length;
        if (_index >= length) revert Errors.IndexOutOfBounds();

        uint256 updatedAt = cutOffPriceUpdateAt[length - _index - 1];

        uint256 tokenLength = tokens.length;
        tokens_ = new address[](tokenLength);
        prices_ = new uint256[](tokenLength);

        uint256 i;
        for (i; i < tokenLength; i++) {
            address token = tokens[i];
            uint256 price = prices[token][updatedAt];

            if (price == 0) revert Errors.InvalidZeroPrice();

            tokens_[i] = token;
            prices_[i] = price;
        }
    }

    /// @notice Returns the vault token cut-off price at a given index
    /// @param _index Index of cut-off update (0 = latest)
    /// @return price_ Vault token price
    /// @dev Checks validity
    function getVaultTokenCutOffPrice(
        uint256 _index
    ) external view returns (uint256 price_) {
        uint256 length = cutOffPriceUpdateAt.length;
        if (_index >= length) revert Errors.IndexOutOfBounds();

        uint256 updatedAt = cutOffPriceUpdateAt[length - _index - 1];
        if (
            block.timestamp >
            paramRegistry.getPriceValidityDuration() + updatedAt
        ) revert Errors.PriceValidityExpired();

        price_ = prices[vaultToken][updatedAt];
    }

    /// @notice Returns the vault token cut-off price without validity check
    /// @param _index Index of cut-off update (0 = latest)
    /// @return price_ Vault token price
    /// @dev Useful for internal calculations
    function onlyGetVaultTokenCutOffPrice(
        uint256 _index
    ) external view returns (uint256 price_) {
        uint256 length = cutOffPriceUpdateAt.length;
        if (_index >= length) revert Errors.IndexOutOfBounds();

        uint256 updatedAt = cutOffPriceUpdateAt[length - _index - 1];

        price_ = prices[vaultToken][updatedAt];
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Retrieves the historical price of a token at a given index
    /// @param _token Token address to query
    /// @param _index Index of the historical price (0 = latest)
    /// @param _checkValidity Whether to check if the price is still valid
    /// @return price_ Price of the token at the given index
    /// @dev
    /// - Uses `commonPriceUpdatedAt` array to find the timestamp of the requested price.
    /// - If `_checkValidity` is true, reverts if the price is older than
    ///   `paramRegistry.getPriceValidityDuration()`.
    /// - Reverts if `_index` is out of bounds.
    /// - Returns the stored price from `prices[token][updatedAt]`.
    function _getPrice(
        address _token,
        uint256 _index,
        bool _checkValidity
    ) internal view returns (uint256) {
        uint256 length = commonPriceUpdatedAt.length;
        if (_index >= length) revert Errors.IndexOutOfBounds();

        uint256 updatedAt = commonPriceUpdatedAt[length - _index - 1];

        if (_checkValidity) {
            uint256 validityDuration = paramRegistry.getPriceValidityDuration();
            if (block.timestamp > updatedAt + validityDuration) {
                revert Errors.PriceValidityExpired();
            }
        }

        return prices[_token][updatedAt];
    }

    /// @notice Verifies that the initial oracle price of a stablecoin is within the acceptable deviation range.
    /// @param _feed The oracle feed contract providing the stablecoin price.
    /// @dev This function ensures that the oracle feed provides a reasonable price at initialization time,
    ///      preventing cases where the oracle might return an outlier or depegged value.
    ///      - The function reads the current price via `_feed.peek()`.
    ///      - It then computes the maximum allowed deviation from the stablecoin’s base price
    ///        using the tolerance (in basis points) from the ParamRegistry.
    ///      - If the oracle-reported price exceeds the upper or lower deviation boundary,
    ///        the function reverts with `Errors.ExceedMaxDeviation()`.
    ///      - Reverts Errors.ExceedMaxDeviation() if the oracle price is outside the permitted tolerance range.
    function _checkOracleInitialPrice(IOracleFeed _feed) internal view {
        uint256 price = _feed.peek();
        uint256 maxDeviation = (STABLECOIN_BASE_PRICE *
            paramRegistry.getStablecoinPriceToleranceBps()) / BPS_DENOMINATOR;

        if (
            price > STABLECOIN_BASE_PRICE + maxDeviation ||
            price < STABLECOIN_BASE_PRICE - maxDeviation
        ) revert Errors.ExceedMaxDeviation();
    }
}
