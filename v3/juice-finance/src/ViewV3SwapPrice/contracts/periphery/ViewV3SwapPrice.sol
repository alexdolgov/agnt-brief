// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import { IUniswapV3Factory } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import "../external/uniswap/interfaces/IUniswapV2Factory.sol";
import "../external/uniswap/interfaces/IUniswapV2Pair.sol";
import "../libraries/math/UniswapV2PairMath.sol";

/// @notice View contract for calculating single sided LP deposit amounts into a UniswapV2 pair given swapping through
/// UniswapV3 pool.
contract ViewV3SwapPrice {
    IUniswapV3Factory public immutable factoryV3;
    IUniswapV3Pool public immutable poolV3;
    IUniswapV2Factory public immutable factoryV2;
    IUniswapV2Pair public immutable poolV2;
    uint256 public immutable POOL_FEE;
    address public token0;
    address public token1;

    constructor(address factoryV3_, address factoryV2_, address _token0, address _token1, uint24 fee) {
        factoryV3 = IUniswapV3Factory(factoryV3_);
        poolV3 = IUniswapV3Pool(factoryV3.getPool(_token0, _token1, fee));
        factoryV2 = IUniswapV2Factory(factoryV2_);
        poolV2 = IUniswapV2Pair(factoryV2.getPair(_token0, _token1));
        token0 = _token0;
        token1 = _token1;
        POOL_FEE = fee;
    }

    function previewDepositSwap(uint256 depositAmount) public view returns (uint256) {
        (uint160 sqrtPriceX96,,,,,,) = poolV3.slot0();
        uint160 price = (sqrtPriceX96 * 1 ether / 2 ** 96) ** 2; // unravel sqrtPriceX96 to price WETH/USDB
        uint256 markToMarket = (1 ether * 1 ether * 1 ether) / (price); // invert price to get USDB/WETH

        return (((depositAmount) * 1 ether / 2) * (1_000_000 - POOL_FEE) / 1_000_000) / markToMarket;
    }

    function previewDepositLpShares(uint256 depositAmount) public view returns (uint256) {
        uint256 markToMarketDeposit = previewDepositSwap(depositAmount);
        return previewDepositLpSharesWithAmount(depositAmount, markToMarketDeposit);
    }

    /// @dev depositAmount is total amount of total0 and markToMarketDeposit is token1 amount given the depositAmount
    function previewDepositLpSharesWithAmount(
        uint256 depositAmount,
        uint256 markToMarketDeposit
    )
        public
        view
        returns (uint256)
    {
        (uint256 amountA, uint256 amountB, uint256 reserve0, uint256 reserve1) =
            UniswapV2PairMath.addLiquidity(poolV2, token0, token1, depositAmount / 2, markToMarketDeposit);

        uint256 totalSupply = poolV2.totalSupply();

        uint256 expectedShares = ((amountA * totalSupply) / reserve0 < (amountB * totalSupply) / reserve1)
            ? (amountA * totalSupply) / reserve0
            : (amountB * totalSupply) / reserve1;
        return expectedShares;
    }
}
