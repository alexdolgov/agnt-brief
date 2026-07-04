// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.28;

import {
    OwnableUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IPriceFeed} from "./interfaces/IPriceFeed.sol";

contract PriceFeed is OwnableUpgradeable, IPriceFeed {
    uint256 public constant PRECISION = 1e8;
    uint256 public constant MAX_PRICE_AGE = 1 hours;
    uint256 public constant INACTIVE_PRICE_TIMEOUT = 5 minutes;
    uint256 public constant INACTIVE_SPREAD = 5e6; // 5%

    mapping(uint256 => OraclePrice) public oraclePrices;
    mapping(address => bool) public isAuthorizedOracle;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /*
     * @notice Initializes the contract setting the deployer as the initial owner.
     */
    function initialize() external initializer {
        __Ownable_init(msg.sender);
    }

    /*
     * @notice Owner: Authorize or deauthorize an oracle account.
     * @param account The address of the oracle to update authorization status.
     * @param authorized True to authorize, false to deauthorize.
     * @revert NoChanges If the oracle is already in the desired state.
     */
    function updateOracle(address account, bool authorized) external onlyOwner {
        if (isAuthorizedOracle[account] == authorized) revert NoChanges();

        isAuthorizedOracle[account] = authorized;

        emit OracleStatusChanged(account, authorized);
    }

    /*
     * @notice Oracle: Updates prices for multiple indexes.
     * @param updates Array of PriceUpdate structs containing index IDs and prices.
     * @revert UnauthorizedOracle If caller is not an authorized oracle.
     * @revert InvalidPrice If any price in updates is zero.
     */
    function updatePrices(PriceUpdate[] calldata updates) external {
        if (!isAuthorizedOracle[msg.sender]) revert UnauthorizedOracle(msg.sender);

        uint256[] memory eventData = new uint256[](updates.length);
        uint256 eventLength;

        for (uint256 i; i < updates.length; ) {
            PriceUpdate calldata u = updates[i];
            if (u.price == 0) revert InvalidPrice(u.indexId);

            OraclePrice storage priceData = oraclePrices[u.indexId];
            if (u.updatedAt > priceData.updatedAt) {
                priceData.value = uint128(u.price);
                priceData.updatedAt = uint128(u.updatedAt);

                eventData[eventLength] = (u.indexId << 192) | (u.price << 64) | u.updatedAt;
                unchecked {
                    eventLength += 1;
                }
            }
            unchecked {
                i += 1;
            }
        }

        if (eventLength > 0) emit PricesUpdated(eventData, eventLength);
    }

    /*
     * @notice Returns current prices for a list of indexes.
     * @param indexIds Array of index IDs addresses to query prices for.
     * @param max Flag to determine whether to apply max or min spread when price is stale.
     * @return results Array of prices corresponding to the input indexes.
     * @revert OutdatedPrice If any index price exceeds max price age.
     */
    function getPrices(
        uint256[] calldata indexIds,
        bool max
    ) external view returns (uint256[] memory prices) {
        prices = new uint256[](indexIds.length);
        uint256 length = indexIds.length;
        for (uint256 i; i < length; ) {
            prices[i] = getPrice(indexIds[i], max);
            unchecked {
                ++i;
            }
        }
    }

    /*
     * @notice Returns the price of a single index, applying spread if price is stale.
     * @param indexId ID of the index to get the price for.
     * @param max Flag indicating whether to apply the maximum or minimum spread.
     * @return price The current price with spread applied if applicable.
     * @revert NoPriceAvailable If there is no price available for the index.
     * @revert OutdatedPrice If the index price exceeds max price age.
     */
    function getPrice(uint256 indexId, bool max) public view returns (uint256) {
        OraclePrice storage priceData = oraclePrices[indexId];
        uint256 price = priceData.value;
        uint256 updatedAt = priceData.updatedAt;

        if (updatedAt == 0) revert NoPriceAvailable(indexId);

        uint256 currentTime = block.timestamp;

        if (updatedAt + MAX_PRICE_AGE < currentTime) {
            revert OutdatedPrice(indexId);
        }

        if (updatedAt + INACTIVE_PRICE_TIMEOUT < currentTime) {
            return _applySpread(price, INACTIVE_SPREAD, max);
        }

        return price;
    }

    // ---------- Internal & Private Functions ----------

    /*
     * @notice Applies a spread (percentage adjustment) to a base price.
     * @param price The base price value.
     * @param spread Spread in basis points to apply.
     * @param max If true, applies a positive spread; otherwise negative spread.
     * @return adjustedPrice The adjusted price after applying the spread.
     */
    function _applySpread(uint256 price, uint256 spread, bool max) internal pure returns (uint256) {
        uint256 adjustment = (price * spread) / PRECISION;
        return max ? price + adjustment : price - adjustment;
    }
}
