// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.7.6;

// Libraries
import {OracleLibrary} from "@uniswap/v3-periphery/contracts/libraries/OracleLibrary.sol";

// Interfaces
import {AggregatorV2V3Interface} from "@chainlink/contracts/src/v0.7/interfaces/AggregatorV2V3Interface.sol";

// Contracts
import {Ownable} from "./external/Ownable.sol";

contract ArbPriceOracle is Ownable {
    address public constant WETH = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
    address public constant ARB = 0x912CE59144191C1204E64559FE8253a0e49E6548;
    address public constant ARB_WETH_UNI_V3_POOL =
        0x92c63d0e701CAAe670C9415d91C474F686298f00;

    AggregatorV2V3Interface internal ethUsdPriceFeed;
    AggregatorV2V3Interface internal sequencerUptimeFeed;

    uint32 public twapPeriod = 1800; // in seconds

    uint256 public constant GRACE_PERIOD_TIME = 3600;

    event TwapPeriodUpdate(uint32 _twapPeriod);

    /**
     * Network: Arbitrum Mainnet
     * Data Feed: ETH/USD
     * Data Feed Proxy Address: 0x639Fe6ab55C921f74e7fac1ee960C0B6293ba612
     * Sequencer Uptime Proxy Address: 0xFdB631F5EE196F0ed6FAa767959853A9F217697D
     */
    constructor() {
        ethUsdPriceFeed = AggregatorV2V3Interface(
            0x639Fe6ab55C921f74e7fac1ee960C0B6293ba612
        );
        sequencerUptimeFeed = AggregatorV2V3Interface(
            0xFdB631F5EE196F0ed6FAa767959853A9F217697D
        );
    }

    function updateTwapPeriod(uint32 _twapPeriod) external onlyOwner {
        twapPeriod = _twapPeriod;

        emit TwapPeriodUpdate(_twapPeriod);
    }

    function getPriceInUSD() external view returns (uint256) {
        uint256 priceInETH = getPriceInETH(twapPeriod);

        uint256 ethPriceInUSD = getETHPriceInUSD();

        return (priceInETH * ethPriceInUSD) / 1e18;
    }

    function getPriceInETH(uint32 _twapPeriod) public view returns (uint256) {
        (int24 arithmeticMeanTick, ) = OracleLibrary.consult(
            ARB_WETH_UNI_V3_POOL,
            _twapPeriod
        );

        return
            OracleLibrary.getQuoteAtTick(
                arithmeticMeanTick,
                1e18, // Amount is 1 in 18 decimals
                ARB, // Base asset is ARB
                WETH // quote asset is WETH
            );
    }

    function getETHPriceInUSD() public view returns (uint256) {
        (, int256 answer, uint256 startedAt, , ) = sequencerUptimeFeed
            .latestRoundData();
        // Answer == 0: Sequencer is up
        // Answer == 1: Sequencer is down
        bool isSequencerUp = answer == 0;

        require(isSequencerUp, "Sequencer must be up");

        // Make sure the grace period has passed after the sequencer is back up.
        uint256 timeSinceUp = block.timestamp - startedAt;
        require(timeSinceUp > GRACE_PERIOD_TIME, "Grace period must be over");

        (, int256 price, , uint256 updatedAt, ) = ethUsdPriceFeed
            .latestRoundData();

        require(
            (block.timestamp - updatedAt) <= 86400,
            "Heartbeast must be fulfilled"
        );

        return uint256(price);
    }
}
