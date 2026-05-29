// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {IGMViewer} from "src/interfaces/gm/IGMViewer.sol";
import {IjGM} from "src/interfaces/leverage/IjGM.sol";
import {ILeverageStrategy} from "src/interfaces/leverage/ILeverageStrategy.sol";
import {ILeverageRouter} from "src/interfaces/leverage/ILeverageRouter.sol";
import {IGMStrategy} from "src/interfaces/gm/IGMStrategy.sol";

import {IAggregatorV3} from "src/interfaces/swap/IAggregatorV3.sol";

interface ILeverageViewer {
    function viewerIndex() external view returns (IGMViewer);
    function jGM() external view returns (IjGM);
    function leverageStrategy() external view returns (ILeverageStrategy);
    function leverageRouter() external view returns (ILeverageRouter);

    ///@notice Get IO Info

    function getPreviewDeposit(uint256 _usdc) external view returns (uint256);

    ///@return USDC expected
    function getPreviewWithdraw(bytes calldata _data) external view returns (uint256);
    function getRawPreviewWithdraw(bytes calldata _data) external view returns (uint256);
    function balanceOf(address _user) external view returns (uint256);
    function balanceOfIndex(address _user) external view returns (uint256);
    function getDataValue(bytes calldata _data, bool deposit) external view returns (uint256);
    function usdRawBalance(address _user) external view returns (uint256);
    function usdRawBalanceByShare(uint256 _jGM) external view returns (uint256);
    function jGMIndexByShare(uint256 _jGM) external view returns (uint256);
    function isWithdrawInRange(uint256 _jGM, bytes calldata _data) external view returns (bool);

    ///@notice Get System Info
    function jGMTotalValue() external view returns (uint256);
    function getTotalValue() external view returns (uint256);
    function getGMWeight(address _gmToken) external view returns (uint256);

    function getGMTokens() external view returns (IGMStrategy.GMToken[] memory gms);

    function getGMToken(address marketToken) external view returns (IGMStrategy.GMToken memory);

    function oracles(address _indexToken) external view returns (IAggregatorV3);

    /**
     * @notice Percentage of utilization of stable vault base on this strategy cap.
     */
    function utilization() external view returns (uint256);

    function debt() external view returns (uint256);

    function borrowableAmount() external view returns (uint256);

    function leverage(uint256 totalValue) external view returns (uint256);

    /**
     * @notice Get USDC balance after simulate paying back stable debt.
     */
    function getUnderlyingUSDC(bytes memory _data) external view returns (uint256);

    function getUnderlyingjGM(uint256 totalValue) external view returns (uint256);

    function getjGMToPayback(uint256 _debt, uint256 _totalUSDValue) external view returns (uint256);

    function getMaxLeverage() external view returns (uint256);
    function getMinLeverage() external view returns (uint256);

    function getTargetLeverage() external view returns (uint256);

    error UnWind();
}
