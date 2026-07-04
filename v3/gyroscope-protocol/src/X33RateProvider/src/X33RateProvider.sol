// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {OracleLibrary} from "@uniswap/v3-periphery/contracts/libraries/OracleLibrary.sol";
import {IRateProvider} from "./interfaces/IRateProvider.sol";
import {IChainlinkOracle} from "./interfaces/IChainlinkOracle.sol";
import {IERC20} from "./interfaces/IERC20.sol";

contract X33RateProvider is IRateProvider {
    uint256 public immutable chainlinkDecimalScalingFactor;

    address constant X33_POOL = 0xBB528A050a3b3b998a9651F893Fa46162967A04C;
    address constant X33 = 0x3333111A391cC08fa51353E9195526A70b333333;
    address constant SHADOW = 0x3333b97138D4b086720b5aE8A7844b1345a33333;
    IChainlinkOracle public immutable shadowChainlinkOracle =
        IChainlinkOracle(0xc26dEEfBF72CFC862610Db23830970Fc6663CcC3);
    uint32 constant TWAP_INTERVAL = 30;

    constructor() {
        chainlinkDecimalScalingFactor = 10 ** (18 - shadowChainlinkOracle.decimals());
    }

    function getRate() external view override returns (uint256) {
        uint256 shadowUsdRate = getShadowUsdChainlinkRate();
        uint256 x33ShadowRate = getX33ShadowUniV3TwapRate();

        return x33ShadowRate * shadowUsdRate / 1e18;
    }

    function getShadowUsdChainlinkRate() public view returns (uint256) {
        return uint256(shadowChainlinkOracle.latestAnswer()) * chainlinkDecimalScalingFactor;
    }

    function getX33ShadowUniV3TwapRate() public view returns (uint256) {
        (int24 arithmeticMeanTick,) = OracleLibrary.consult(address(X33_POOL), TWAP_INTERVAL);
        uint256 quoteAmount = OracleLibrary.getQuoteAtTick(arithmeticMeanTick, uint128(1e18), X33, SHADOW);

        return quoteAmount;
    }
}
