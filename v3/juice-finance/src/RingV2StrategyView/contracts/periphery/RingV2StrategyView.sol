// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import { IUniswapV3Factory } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import "../external/uniswap/interfaces/IUniswapV2Factory.sol";
import "../external/uniswap/interfaces/IUniswapV2Pair.sol";
import "../libraries/math/UniswapV2PairMath.sol";

/// @notice View contract for calculating single sided LP deposit amounts into a UniswapV2 pair given swapping through
/// UniswapV3 pool.
contract RingV2StrategyView {
    IUniswapV2Factory public immutable ringFactoryV2;
    IUniswapV2Pair public immutable ringPoolV2;
    address public immutable fwToken0;
    address public immutable fwToken1;

    constructor(address factoryV2_, address _fwToken0, address _fwToken1) {
        ringFactoryV2 = IUniswapV2Factory(factoryV2_);
        ringPoolV2 = IUniswapV2Pair(ringFactoryV2.getPair(_fwToken0, _fwToken1));
        fwToken0 = _fwToken0;
        fwToken1 = _fwToken1;
    }

    /// @dev depositAmount is total amount of total0 and markToMarketDeposit is fwToken1 amount given the depositAmount
    function previewDepositLpSharesWithAmount(
        uint256 depositAmount,
        uint256 markToMarketDeposit
    )
        public
        view
        returns (uint256)
    {
        (uint256 amountA, uint256 amountB, uint256 reserve0, uint256 reserve1) =
            UniswapV2PairMath.addLiquidity(ringPoolV2, fwToken0, fwToken1, depositAmount / 2, markToMarketDeposit);

        uint256 totalSupply = ringPoolV2.totalSupply();

        uint256 expectedShares = ((amountA * totalSupply) / reserve0 < (amountB * totalSupply) / reserve1)
            ? (amountA * totalSupply) / reserve0
            : (amountB * totalSupply) / reserve1;
        return expectedShares;
    }
}
