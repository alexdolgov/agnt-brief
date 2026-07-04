// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import "@pythnetwork/pyth-sdk-solidity/IPyth.sol";
import "@pythnetwork/pyth-sdk-solidity/PythStructs.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";

/// @title TermPythAdapterPegToBasePriceFeedV1
/// @notice This contract is an adapter for Pyth price feeds e
/// @dev The contract implements the AggregatorV3Interface to be compatible with Chain
contract TermPythAdapterPriceFeedV1 is AggregatorV3Interface {

    /// @notice The maximum length of time that a price can be in the future.
    uint256 internal constant MAX_AHEADNESS = 1 minutes;

    int256 internal constant MIN_EXPONENT = -20;
    int256 internal constant MAX_EXPONENT = 0; // Since you only allow non-positive


    /// @notice The minimum permitted value for `maxConfWidth`.
    /// @dev Equal to 0.1%.
    uint256 internal constant MAX_CONF_WIDTH_LOWER_BOUND = 10;

    /// @notice The maximum permitted value for `maxConfWidth`.
    /// @dev Equal to 5%.
    uint256 internal constant MAX_CONF_WIDTH_UPPER_BOUND = 500;

    /// @dev The denominator for basis points values (maxConfWidth).
    uint256 internal constant BASIS_POINTS = 10_000;

    address public immutable referenceToken;
    
    IPyth public immutable pyth;

    bytes32 public immutable pythPriceFeedId;

    uint256 public immutable maxConfWidth;

    string internal _description;

    constructor(address referenceToken_, string memory description_, address pyth_, bytes32 pythPriceFeedId_,  uint256 maxConfWidth_) {
        require(
            referenceToken_ != address(0),
            "reference token address cannot be zero"
        );
        require(
            pyth_ != address(0),
            "pyth address cannot be zero"
        );
        require(
            pythPriceFeedId_ != bytes32(0),
            "price feed id cannot be zero"
        );
        require(
            maxConfWidth_ >= MAX_CONF_WIDTH_LOWER_BOUND && maxConfWidth_ <= MAX_CONF_WIDTH_UPPER_BOUND,
            "maxConfWidth must be in range [10, 500]"
        );
        referenceToken = referenceToken_;
        pyth = IPyth(pyth_);
        pythPriceFeedId = pythPriceFeedId_;
        _description = description_;
        maxConfWidth = maxConfWidth_;
    }

    function decimals() public view returns (uint8) {
        PythStructs.Price memory price = pyth.getPriceUnsafe(pythPriceFeedId);
        if (price.expo > 0) {
            return 0; // Default to 0 decimals if Pyth exponent is invalid
        }
        uint8 pythDecimals = SafeCast.toUint8(uint32(-price.expo));

        return pythDecimals;
    }

    function description() external view override returns (string memory) {
        return _description;
    }

    function version() external pure returns (uint256) {
        return 1;
    }

    function getRoundData(
        uint80 roundId_
    )
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
            return (
                0,
                0, // Pyth does not support round data retrieval
                0,
                0,
                0
            );
    }

    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        // slither-disable-next-line unused-return
        PythStructs.Price memory priceReading = pyth.getPriceUnsafe(pythPriceFeedId);
        // Verify that the price is not too ahead of current block time
        if (priceReading.publishTime > block.timestamp) {
            uint256 aheadness = priceReading.publishTime - block.timestamp;
            if (aheadness > MAX_AHEADNESS) return (0, 0, 0, 0, 0); // TermPriceConsumerV3 will either fallback to secondary price feed or revert on 0 price.
        }
        // Verify that the price is positive and within the confidence width.
        if (priceReading.price <= 0 || priceReading.conf > uint64(priceReading.price) * maxConfWidth / BASIS_POINTS) {
            return (0, 0, 0, 0, 0); // TermPriceConsumerV3 will either fallback to secondary price feed or revert on 0 price.
        }
       if (priceReading.expo < MIN_EXPONENT || priceReading.expo > MAX_EXPONENT) {
            return (0, 0, 0, 0, 0);
        }

        int256 price = SafeCast.toInt256(uint64(priceReading.price));
   

        return (0, price, 0, priceReading.publishTime, 0);
    }
}
