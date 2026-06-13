// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "../abstract/Ownable.sol";
import {IERC20Custom} from "../interface/IERC20Custom.sol";
import {IOracle} from "../interface/IOracle.sol";
import {IOracleApi3Reader} from "../interface/IOracleApi3Reader.sol";

/**
 * @title OracleChainlink
 * @dev Oracle implementation using Chainlink price feeds with fallback direct prices
 * @notice This contract manages price feeds and provides asset prices
 */
contract OracleChainlink is Ownable, IOracle {
    /*//////////////////////////////////////////////////////////////
                                 TYPES
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Configuration for token price feeds
     * @param asset Token address to get price for
     * @param feed Chainlink aggregator address
     */
    struct TokenConfig {
        address asset;
        address feed;
    }
    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/
    /// @notice Maps assets to their direct price overrides (in 18 decimals)
    mapping(address => uint256) public prices;
    /// @notice Maps assets to their Chainlink feed configurations
    mapping(address => TokenConfig) public tokenConfigs;
    /// @notice Maximum time (in seconds) before price is considered stale
    uint256 public constant MAX_STALE_PERIOD = 24 hours;
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when a token's price feed configuration is set
    event TokenConfigAdded(address indexed asset, address feed);
    /*//////////////////////////////////////////////////////////////
                             CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @dev Thrown when an address parameter is zero
    error ZeroAddress();
    /// @dev Thrown when empty array is provided
    error NegativePrice();
    /// @dev Thrown when token decimals are invalid
    error InvalidDecimals();
    /// @dev Thrown when price is stale or timestamp is invalid
    error InvalidTime();
    /*//////////////////////////////////////////////////////////////
                              MODIFIERS
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Ensures an address parameter is not zero
     * @param addr Address to validate
     */
    modifier notNullAddress(address addr) {
        if (addr == address(0)) revert ZeroAddress();
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Sets configuration for a single token price feed
     * @param tokenConfig Token configuration to set
     */
    function setTokenConfig(
        TokenConfig memory tokenConfig
    )
        external
        notNullAddress(tokenConfig.asset)
        notNullAddress(tokenConfig.feed)
        onlyOwner
    {
        IERC20Custom token = IERC20Custom(tokenConfig.asset);
        uint8 tokenDecimals = token.decimals();
        IOracleApi3Reader feed = IOracleApi3Reader(tokenConfig.feed);
        uint8 feedDecimals = feed.decimals();
        if (tokenDecimals > 18 || feedDecimals > 18) revert InvalidDecimals();
        tokenConfigs[tokenConfig.asset] = tokenConfig;
        emit TokenConfigAdded(tokenConfig.asset, tokenConfig.feed);
    }

    /**
     * @notice Gets the current price for an asset
     * @param asset Asset address to get price for
     * @return uint256 Current price in 18 decimals
     */
    function getPrice(address asset) public view virtual returns (uint256) {
        IERC20Custom token = IERC20Custom(asset);
        uint8 decimals = token.decimals();
        return _getPrice(asset, decimals);
    }

    /*//////////////////////////////////////////////////////////////
                           PRIVATE FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Gets price with decimal adjustment
     * @param asset Asset address to get price for
     * @param decimals Token decimals for normalization
     * @return price Price in 18 decimals
     */
    function _getPrice(
        address asset,
        uint8 decimals
    ) private view returns (uint256 price) {
        uint256 tokenPrice = prices[asset];
        if (tokenPrice != 0) {
            // Direct price override exists, normalize to 18 decimals
            uint8 decimalDelta = 18 - decimals;
            price = tokenPrice * (10 ** decimalDelta);
        } else {
            // No override, get from Chainlink
            price = _getChainlinkPrice(asset);
        }
        return price;
    }

    /**
     * @dev Fetches and validates price from Chainlink feed
     * @param asset Asset address to get price for
     * @return uint256 Normalized price in 18 decimals
     */
    function _getChainlinkPrice(
        address asset
    ) private view notNullAddress(tokenConfigs[asset].asset) returns (uint256) {
        TokenConfig memory tokenConfig = tokenConfigs[asset];
        IOracleApi3Reader feed = IOracleApi3Reader(tokenConfig.feed);
        uint8 decimalDelta = 18 - feed.decimals();
        (, int256 answer, , uint256 updatedAt, ) = feed.latestRoundData();
        // Validate price and timestamp
        if (answer <= 0) revert NegativePrice();
        if (block.timestamp < updatedAt) revert InvalidTime();
        uint256 deltaTime;
        unchecked {
            deltaTime = block.timestamp - updatedAt;
        }
        if (deltaTime > MAX_STALE_PERIOD) revert InvalidTime();
        // Normalize to 18 decimals
        return uint256(answer) * (10 ** decimalDelta);
    }
}
