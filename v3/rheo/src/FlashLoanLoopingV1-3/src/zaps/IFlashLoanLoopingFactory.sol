// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ISizeFactory} from "@size/src/factory/interfaces/ISizeFactory.sol";
import {IMorpho} from "@morpho/src/interfaces/IMorpho.sol";
import {IUniswapV2Router02} from "src/interfaces/dex/IUniswapV2Router02.sol";
import {IUniswapV3Router} from "src/interfaces/dex/IUniswapV3Router.sol";
import {IPAllActionV3} from "@pendle/contracts/interfaces/IPAllActionV3.sol";
import {IPMarketFactoryV3} from "@pendle/contracts/interfaces/IPMarketFactoryV3.sol";
import {ISize} from "@size/src/market/interfaces/ISize.sol";
import {IFlashLoanLooping} from "src/zaps/IFlashLoanLooping.sol";

interface IFlashLoanLoopingFactory {
    function sizeFactory() external view returns (ISizeFactory);
    function flashLoanLoopingImplementation() external view returns (IFlashLoanLooping);
    function morpho() external view returns (IMorpho);
    function uniswapV2Router() external view returns (IUniswapV2Router02);
    function uniswapV3Router() external view returns (IUniswapV3Router);
    function pendleRouter() external view returns (IPAllActionV3);
    function pendleMarketFactory() external view returns (IPMarketFactoryV3);
    function currentLeveragePercent(ISize size, address account) external view returns (uint256);
    function collateralTokenAmountToDebtTokenAmount(ISize size, uint256 collateralTokenAmount)
        external
        view
        returns (uint256);
    function cashStrategyVault() external view returns (address);
}
