// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "../interfaces/IOracle.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "../interfaces/IAggregatorV3.sol";
import "../interfaces/IShadowLP.sol";
import "@openzeppelin/contracts/interfaces/IERC4626.sol";

/**
 * @title ShadowLPOracle
 * @notice This contract fetches the price from a shadow LP pair
 * @dev Do not use this by any means use this contract directly in any onchain code. Use it only for frontend
 * @dev Price is returned in 18 decimals
 */
contract lstRZRSpotAggregator is IAggregatorV3 {
    IShadowLP public amm;
    uint256 public decimalOffset;
    IERC20Metadata public quoteToken;
    IERC20Metadata public baseToken;
    IERC4626 public lst;

    constructor(IShadowLP _amm, address _baseToken, IERC4626 _lst) {
        amm = _amm;

        baseToken = IERC20Metadata(_baseToken);
        quoteToken = IERC20Metadata(amm.token0() == _baseToken ? amm.token1() : amm.token0());

        decimalOffset = 10 ** (18 - quoteToken.decimals());

        lst = _lst;
    }

    /**
     * @notice Returns the price of the token in the shadow LP pair
     * @return price The price of the token in the shadow LP pair
     */
    function getPrice() public view returns (uint256) {
        uint256 priceE18 = amm.current(address(baseToken), 1e18) * decimalOffset;
        return lst.convertToAssets(priceE18) / 1e10;
    }

    function decimals() external view override returns (uint8) {
        return 8;
    }

    function description() external view override returns (string memory) {
        return "lstRZRSpotAggregator";
    }

    function version() external view override returns (uint256) {
        return 1;
    }

    function latestAnswer() external view override returns (int256) {
        return int256(getPrice());
    }

    // getRoundData and latestRoundData should both raise "No data present"
    // if they do not have data to report, instead of returning unset values
    // which could be misinterpreted as actual reported values.
    function getRoundData(uint80 _roundId)
        external
        view
        override
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        return (0, int256(getPrice()), 0, 0, 0);
    }

    function latestRoundData()
        external
        view
        override
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        return (0, int256(getPrice()), 0, 0, 0);
    }
}
