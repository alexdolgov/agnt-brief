// SPDX-License-Identifier: AGPL-3.0
// See: https://github.com/marsfoundation/sparklend/blob/master/src/SavingsDaiOracle.sol
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import {SafeCastUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/math/SafeCastUpgradeable.sol";

import "./interfaces/PotLike.sol";


/**
 * @title Savings Dai Oracle
 * @notice Convert DAI price to Savings DAI Price via the Pot.
 */
contract TermSdaiPriceFeed is AggregatorV3Interface {
    using SafeCastUpgradeable for uint256;

    int256 private constant RAY = 10 ** 27;

    AggregatorV3Interface internal immutable daiPriceFeed;
    PotLike internal immutable pot;

    constructor(AggregatorV3Interface daiPriceFeed_, address pot_) {
        require(
            daiPriceFeed_ != AggregatorV3Interface(address(0)),
            "feed address cannot be zero"
        );
        require(pot_ != address(0), "pot address cannot be zero");
        daiPriceFeed = daiPriceFeed_;
        pot = PotLike(pot_);
    }

    function description() external pure override returns (string memory) {
        return "Savings DAI Price Feed";
    }

    function version() external pure override returns (uint256) {
        return 1;
    }

    function decimals() external view override returns (uint8) {
        return daiPriceFeed.decimals();
    }

    function getRoundData(
        uint80 /* roundId */
    )
        external
        pure
        override
        returns (uint80, int256, uint256, uint256, uint80)
    {
        return (0, 0, 0, 0, 0);
    }

    function latestRoundData()
        external
        view
        override
        returns (uint80, int256, uint256, uint256, uint80)
    {
        // slither-disable-next-line unused-return
        (, int256 daiPrice, , , ) = daiPriceFeed.latestRoundData();

        if (daiPrice <= 0) {
            return (0, 0, 0, 0, 0);
        }

        return (0, _convertAnswer(daiPrice), 0, 0, 0);
    }

    function _convertAnswer(int256 answer) internal view returns (int256) {
        return (answer * pot.chi().toInt256()) / RAY;
    }
}
