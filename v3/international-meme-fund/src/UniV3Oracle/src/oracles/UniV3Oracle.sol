// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {OracleLibrary} from "@uniswap/v3-periphery/contracts/libraries/OracleLibrary.sol";

import {IOracle} from "../interfaces/IOracle.sol";
import {IERC20} from "../interfaces/IERC20.sol";

/// @title UniV3Oracle
/// @author Some IMFer
/// @notice Map a UniV3Oracle into a Morpho compatible oracle
contract UniV3Oracle is IOracle {
    IUniswapV3Pool public immutable pool;
    address public immutable baseToken;
    address public immutable quoteToken;
    uint32 public immutable period; // TWAP period in seconds

    /// @dev 1 * (10 ** baseToken.decimals()). That is, 1 nominal baseToken
    uint128 public immutable baseTokenAmount;

    /// How much to scale the oracle price up by such that 
    /// baseTokenAmount * price() / 1e36 == tickPrice()
    /// This will always be 10 ** (36 - baseToken.decimals())
    uint256 public immutable oracleScalar;

    constructor(address _pool, bool _baseAssetIsToken0, uint32 _period) {
        require(_pool != address(0), "UniV3Oracle: pool address is zero");
        require(_period >= 30 minutes, "UniV3Oracle: period must be at least 30 minutes seconds");
        pool = IUniswapV3Pool(_pool);

        baseToken = _baseAssetIsToken0 ? pool.token0() : pool.token1();
        quoteToken = _baseAssetIsToken0 ? pool.token1() : pool.token0();

        baseTokenAmount = uint128(10 ** IERC20(baseToken).decimals());
        oracleScalar = 10 ** (36 - IERC20(baseToken).decimals());

        period = _period;
    }

    /// @dev the UniV3 TWAP price for 1 * (10 ** baseToken.decimals()) amount of baseToken
    function tickPrice() public view returns (uint256) {
        (int24 tick,) = OracleLibrary.consult(address(pool), period); // Consults for `period` seconds TWAP
        return OracleLibrary.getQuoteAtTick(tick, baseTokenAmount, baseToken, quoteToken);
    }

    /// @inheritdoc IOracle
    function price() external view override returns (uint256) {
        return tickPrice() * oracleScalar;
    }
}