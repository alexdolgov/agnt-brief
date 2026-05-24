//  SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

interface ILiquidityManager {
    struct MintParam {
        // miner address
        address miner;
        // tokenX of swap pool
        address tokenX;
        // tokenY of swap pool
        address tokenY;
        // fee amount of swap pool
        uint24 fee;
        // left point of added liquidity
        int24 pl;
        // right point of added liquidity
        int24 pr;
        // amount limit of tokenX miner willing to deposit
        uint128 xLim;
        // amount limit tokenY miner willing to deposit
        uint128 yLim;
        // minimum amount of tokenX miner willing to deposit
        uint128 amountXMin;
        // minimum amount of tokenY miner willing to deposit
        uint128 amountYMin;

        uint256 deadline;
    }
    struct AddLiquidityParam {
        // id of nft
        uint256 lid;
        // amount limit of tokenX user willing to deposit
        uint128 xLim;
        // amount limit of tokenY user willing to deposit
        uint128 yLim;
        // min amount of tokenX user willing to deposit
        uint128 amountXMin;
        // min amount of tokenY user willing to deposit
        uint128 amountYMin;

        uint256 deadline;
    }
    function liquidities(uint256 lid) external view returns(
        int24 leftPt,
        // right point of liquidity-token, the range is [leftPt, rightPt-1]
        int24 rightPt,
        // amount of liquidity on each point in [leftPt, rightPt-1]
        uint128 liquidity,
        // a 128-fixpoint number, as integral of { fee(pt, t)/L(pt, t) }. 
        // here fee(pt, t) denotes fee generated on point pt at time t
        // L(pt, t) denotes liquidity on point pt at time t
        // pt varies in [leftPt, rightPt)
        // t moves from pool created until miner last modify this liquidity-token (mint/addLiquidity/decreaseLiquidity/create)
        uint256 lastFeeScaleX_128,
        uint256 lastFeeScaleY_128,
        // remained tokenX miner can collect, including fee and withdrawed token
        uint256 remainTokenX,
        uint256 remainTokenY,
        // id of pool in which this liquidity is added
        uint128 poolId
    );

    function poolMetas(uint128 poolId) external view returns(
        // tokenX of pool
        address tokenX,
        // tokenY of pool
        address tokenY,
        // fee amount of pool
        uint24 fee
    );
}