// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {IERC20} from "@openzeppelin/contracts@4.9.2/interfaces/IERC20.sol";

interface IPair {
    function totalSupply() external view returns (uint256);

    function balanceOf(address _address) external view returns (uint256);

    function getReserves()
        external
        view
        returns (
            uint112 _reserve0,
            uint112 _reserve1,
            uint32 _blockTimestampLast
        );
}

interface IGauge {
    function earned(address token, address account)
        external
        view
        returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function balanceWithLock(address _address) external view returns (uint256);

    function rewardsListLength() external view returns (uint256);

    function rewards(uint256) external view returns (address);

    function lockEnd(address account) external view returns (uint256);
}

interface IwBLT {
    function pricePerShare() external view returns (uint256);
}

interface IRouter {
    function pairFor(
        address tokenA,
        address tokenB,
        bool stable
    ) external view returns (address pair);

    function swapExactTokensForTokensSimple(
        uint256 amountIn,
        uint256 amountOutMin,
        address tokenFrom,
        address tokenTo,
        bool stable,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function getAmountOut(
        uint256 amountIn,
        address tokenIn,
        address tokenOut,
        bool stable
    ) external view returns (uint256 amount);

    function getReserves(
        address tokenA,
        address tokenB,
        bool stable
    ) external view returns (uint256, uint256);
}

interface IwBltRouter {
    function quoteTokenNeededToExerciseLp(
        address _oToken,
        address _tokenToUse,
        uint256 _oTokenAmount,
        uint256 _discount
    ) external view returns (uint256 atomicAmount, uint256 safeAmount);
}

interface IExerciseHelper {
    function fee() external view returns (uint256);
}

interface IGlpManager {
    function getAums() external view returns (uint256[] memory);
}

interface IBmxReader {
    function getTokenBalancesWithSupplies(
        address _account,
        address[] memory _tokens
    ) external view returns (uint256[] memory);

    function getTokenBalances(address _account, address[] memory _tokens)
        external
        view
        returns (uint256[] memory);
}

/// @title Reader contract for BMX UI
/// @author MorphexBMX
contract BnkrAllowanceReader {
    /// @notice BMX address
    address public constant bnkr = 0x22aF33FE49fD1Fa80c7149773dDe5890D3c76F3b;
    /// @notice Staked BLT Tracker address array
    address[] public stakedBltTracker = [
        0x2D5875ab0eFB999c1f49C798acb9eFbd1cfBF63c
    ];
    /// @notice wBLT address
    IwBLT public constant wblt =
        IwBLT(0x4E74D4Db6c0726ccded4656d0BCE448876BB4C7A);
    /// @notice wBLT Router address
    IwBltRouter public constant wbltRouter =
        IwBltRouter(0x35E37D0b4960141740135e0742579aEfE5F9d598);
    /// @notice BNKR/wBLT pair
    IPair public constant pair =
        IPair(0x17c9A4b6CAD28F5074C81B056C32bAD334329f25);
    /// @notice BNKR/wBLT staking gauge
    IGauge public constant gauge =
        IGauge(0x378d2D0f69C0c838DF8019f62De8a891655381B9);
    /// @notice Router
    IRouter public constant router =
        IRouter(0xcF77a3Ba9A5CA399B7c97c74d54e5b1Beb874E43);
    /// @notice Tokens and spenders to check allowances (liquidity)
    address[2][6] private liquidityAllowanceTokens = [
        [bnkr, address(router)], // router
        [bnkr, address(wbltRouter)], // wBLT router
        [address(wblt), address(router)], // router
        [address(pair), address(router)], // router
        [address(pair), address(wbltRouter)], // wBLT router
        [address(pair), address(gauge)] // gauge
    ];

    /// @notice Used for stake LP page on BMX UI to query a bunch of allowances at once
    /// @param _account The address of the account
    /// @return Array of allowances in the following order: bnkr, bnkrZap, wBlt, lpToken, lpTokenZap, lpTokenGauge
    function getLiquidityAllowances(address _account)
        public
        view
        returns (uint256[] memory)
    {
        uint256[] memory allowances = new uint256[](
            liquidityAllowanceTokens.length
        );

        for (uint256 i = 0; i < liquidityAllowanceTokens.length; i++) {
            allowances[i] = IERC20(liquidityAllowanceTokens[i][0]).allowance(
                _account,
                liquidityAllowanceTokens[i][1]
            );
        }

        return allowances;
    }
}