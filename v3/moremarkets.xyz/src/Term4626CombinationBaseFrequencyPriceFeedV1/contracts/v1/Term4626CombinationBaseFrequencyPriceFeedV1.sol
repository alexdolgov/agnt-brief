// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
/// @notice ERC4626 vault interface for converting shares to underlying tokens
interface I4626 {
    /**
     * @notice Get the amount of underlying tokens corresponding to a given number of I4626 shares
     * @return Amount of token for I4626 shares
     */
    function previewRedeem(uint256 shares) external view returns (uint256);

    /**
     * @notice Get the number of decimal places for the I4626 token
     * @return Number of decimal places
     */
    function decimals() external view returns (uint8);

    /**
     * @notice Returns the address of the underlying asset token
     * @dev This function provides the address of the ERC-20 token that serves as the underlying asset
     * for the ERC-4626 vault. This is typically used to identify what token the vault accepts as deposits
     * and uses for yield generation.
     * @return The contract address of the underlying asset token
     */
    function asset() external view returns (address);
}

contract Term4626CombinationBaseFrequencyPriceFeedV1 is AggregatorV3Interface {
    address public immutable referenceToken;
    string internal _description;

    I4626 immutable referenceToken4626;
    AggregatorV3Interface immutable assetToPegAggregator;
    AggregatorV3Interface immutable pegToBaseAggregator;

    uint8 immutable feedDecimals;
    int256 immutable denominator;

    constructor(
        address referenceToken_,
        string memory description_,
        AggregatorV3Interface assetToPegAggregator_,
        AggregatorV3Interface pegToBaseAggregator_,
        uint8 decimals_
    ) {
        require(
            referenceToken_ != address(0),
            "reference token address cannot be zero"
        );
        require(
            address(assetToPegAggregator_) != address(0),
            "asset to peg aggregator address cannot be zero"
        );
        require(
            address(pegToBaseAggregator_) != address(0),
            "peg to base aggregator address cannot be zero"
        );
        referenceToken = referenceToken_;
        referenceToken4626 = I4626(referenceToken);
        _description = description_;
        assetToPegAggregator = assetToPegAggregator_;
        pegToBaseAggregator = pegToBaseAggregator_;
        feedDecimals = decimals_;
        address asset = referenceToken4626.asset();
        uint8 assetDecimals = ERC20(asset).decimals();
        denominator = int256(
            10 **
                (assetDecimals + assetToPegAggregator_.decimals() +
                    pegToBaseAggregator_.decimals())
        );
    }

    function decimals() external view returns (uint8) {
        return feedDecimals;
    }

    function description() external override view returns (string memory) {
        return _description;
    }

    function version() external pure returns (uint256) {
        return 1;
    }

    function getRoundData(
        uint80 /* _roundId */
    )
        external
        pure
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        return (0, 0, 0, 0, 0);
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
        uint8 tokenDecimals = referenceToken4626.decimals();
        uint256 assetAmount = referenceToken4626.previewRedeem(10 ** tokenDecimals); // to check if the token is valid
        // slither-disable-next-line unused-return
        (, int256 assetToPegAggregatorPrice, , , ) = assetToPegAggregator
            .latestRoundData();

        // slither-disable-next-line unused-return
        (, int256 pegToBaseAggregatorPrice, , uint256 updatedAt, ) = pegToBaseAggregator
            .latestRoundData();

        if (assetToPegAggregatorPrice <= 0 || pegToBaseAggregatorPrice <= 0) {
            return (0, 0, 0, 0, 0);
        }

        int256 assetToBasePrice = (int256(assetAmount) * assetToPegAggregatorPrice *
            pegToBaseAggregatorPrice *
            int256(10 ** feedDecimals)) / (denominator);

        return (0, assetToBasePrice, 0, updatedAt, 0);
    }
}
