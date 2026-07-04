// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "./lib/Babylonian.sol";
import "./lib/FixedPoint.sol";
import "./lib/UniswapV2OracleLibrary.sol";
import "./interfaces/IRebateOracle.sol";


contract RebateOracleMul {
    address[] Oracle;

    constructor(address[] memory oracle) {
        Oracle = oracle;
    }

    function update() external {
        for (uint256 i; i < Oracle.length; i++) {
            IRebateOracle(Oracle[i]).update();
        }
    }

    // bridge oracle
    function consult(address token, uint amountIn) external view returns (uint amountOut) {
        uint256 preAmount = amountIn;
        address nextToken = token;
        for (uint256 i; i < Oracle.length; i++) {
            IRebateOracle oracle = IRebateOracle(Oracle[i]);
            preAmount = oracle.consult(nextToken, preAmount);
            nextToken = token == oracle.token0() ? oracle.token1() : oracle.token0();
        }

        amountOut = preAmount;
    }
}