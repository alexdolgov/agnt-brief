// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAggregatorInterface} from "../interfaces/IAggregatorInterface.sol";
import {IAerodromeVAMM} from "../interfaces/IAerodromeVAMM.sol";

/// @title Aerodrome_vAMM_Oracle
/// @notice This contract provides a price oracle for the liquidity pool tokens in a AMM.
/// @dev This contract interacts with the IAerodromeVAMM interface to fetch reserves and calculate prices.
/// @dev Reference from https://github.com/AlphaFinanceLab/alpha-homora-v2-contract/blob/master/contracts/oracle/UniswapV2Oracle.sol
contract Aerodrome_vAMM_Oracle {
    IAerodromeVAMM public immutable amm;
    IAggregatorInterface public immutable priceFeed0;
    IAggregatorInterface public immutable priceFeed1;

    /// @notice Constructor sets the address of the AMM contract.
    /// @param _amm The address of the AMM pool.
    constructor(address _amm, address _priceFeed0, address _priceFeed1) {
        amm = IAerodromeVAMM(_amm);
        priceFeed0 = IAggregatorInterface(_priceFeed0);
        priceFeed1 = IAggregatorInterface(_priceFeed1);
    }

    /// @notice Gets the price of the liquidity pool token.
    /// @dev This function fetches reserves from the AMM and uses a pre-defined price for tokens to calculate the LP token price.
    /// @return price The price of the liquidity pool token.
    function getPrice() public view returns (uint256 price) {
        (uint256 reserve0, uint256 reserve1, ) = amm.getReserves();

        int256 px0 = priceFeed0.latestAnswer();
        int256 px1 = priceFeed1.latestAnswer();

        require(px0 > 0 && px1 > 0, "Invalid Price");
        uint256 sqrtK = (sqrt(reserve0 * reserve1) * 1e18) / amm.totalSupply();
        price = (sqrtK * 2 * sqrt(uint256(px0 * px1))) / 1e18;
    }

    /// @notice Gets the latest price of the liquidity pool token.
    function latestAnswer() public view returns (int256) {
        return int256(getPrice()) * 1e8;
    }

    /// @notice Computes the square root of a given number using the Babylonian method.
    /// @dev This function uses an iterative method to compute the square root of a number.
    /// @param x The number to compute the square root of.
    /// @return y The square root of the given number.
    function sqrt(uint256 x) public pure returns (uint256 y) {
        if (x == 0) return 0; // Handle the edge case for 0
        uint256 z = (x + 1) / 2;
        y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
    }
}
