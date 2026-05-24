// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Ownable} from "@openzeppelin/contracts@4.9.2/access/Ownable.sol";
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
contract BMXAllowanceReader is Ownable {
    /// @notice BMX address
    address public constant bmx = 0x66eEd5FF1701E6ed8470DC391F05e27B1d0657eb;
    /// @notice Staked BLT Tracker address array
    address[] public stakedBltTracker = [
        0x773F34397d5F378D993F498Ee646FFe4184E00A3
    ];
    /// @notice wBLT address
    IwBLT public constant wblt =
        IwBLT(0x8b2EeA0999876AAB1E7955fe01A5D261b570452C);
    /// @notice wBLT Router address
    IwBltRouter public constant wbltRouter =
        IwBltRouter(0x7bf2e95088F127522d27Ca0277a70ba03f0C37F0);
    /// @notice BMX/wBLT pair
    IPair public constant pair =
        IPair(0x70f531F133C7De52F0b06F193D862f5a8f17A0cF);
    /// @notice BMX/wBLT staking gauge
    IGauge public constant gauge =
        IGauge(0xe73b0e15860C94a284F7ddf47e485Aa601566d4A);
    /// @notice Router
    IRouter public constant router =
        IRouter(0x3a63171DD9BebF4D07BC782FECC7eb0b890C2A45);
    /// @notice Tokens and spenders to check allowances (liquidity)
    address[2][6] private liquidityAllowanceTokens = [
        [bmx, address(router)], // router
        [bmx, address(wbltRouter)], // wBLT router
        [address(wblt), address(router)], // router
        [address(pair), address(router)], // router
        [address(pair), address(wbltRouter)], // wBLT router
        [address(pair), address(gauge)] // gauge
    ];

    /// @notice Used for stake LP page on BMX UI to query a bunch of allowances at once
    /// @param _account The address of the account
    /// @return Array of allowances in the following order: bmx, bmxZap, wBlt, lpToken, lpTokenZap, lpTokenGauge
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