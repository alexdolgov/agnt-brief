// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.7.6;

// Libraries
import {OracleLibrary} from "@uniswap/v3-periphery/contracts/libraries/OracleLibrary.sol";

// Contracts
import {Ownable} from "./external/Ownable.sol";

contract ArbPriceOracleV2 is Ownable {
    address public constant USDC = 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8;
    address public constant ARB = 0x912CE59144191C1204E64559FE8253a0e49E6548;
    address public constant ARB_USDC_UNI_V3_POOL =
        0xcDa53B1F66614552F834cEeF361A8D12a0B8DaD8;

    uint32 public twapPeriod = 60; // in seconds

    event TwapPeriodUpdate(uint32 _twapPeriod);

    function updateTwapPeriod(uint32 _twapPeriod) external onlyOwner {
        twapPeriod = _twapPeriod;

        emit TwapPeriodUpdate(_twapPeriod);
    }

    function getPriceInUSDC(uint32 _twapPeriod) public view returns (uint256) {
        (int24 arithmeticMeanTick, ) = OracleLibrary.consult(
            ARB_USDC_UNI_V3_POOL,
            _twapPeriod
        );

        return
            OracleLibrary.getQuoteAtTick(
                arithmeticMeanTick,
                1e18, // Amount is 1 in 18 decimals
                ARB, // Base asset is ARB
                USDC // quote asset is USDC
            );
    }

    function getUnderlyingPrice() external view returns (uint256) {
        return getPriceInUSDC(twapPeriod) * 1e2;
    }
}
