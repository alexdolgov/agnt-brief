// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ILeverageRouter} from "src/interfaces/leverage/ILeverageRouter.sol";
import {IUnderlyingVault} from "src/interfaces/jusdc/IUnderlyingVault.sol";

import {IjGMIndex} from "src/interfaces/gm/IjGMIndex.sol";
import {IGMViewer} from "src/interfaces/gm/IGMViewer.sol";
import {IGMStrategy} from "src/interfaces/gm/IGMStrategy.sol";

interface ILeverageStrategy {
    struct LeverageConfig {
        uint256 target;
        uint256 min;
        uint256 max;
    }

    function onGMDeposit(uint256 _assets, address _receiver, uint256 _usdAUM, ILeverageRouter.GMData memory _data)
        external
        payable;
    function onGMWithdrawal(uint256 _jGMIndex, address _receiver, uint256 _usdAUM, ILeverageRouter.GMData memory _data)
        external
        payable;

    function leverageUp(uint256 newTotalUSD, uint256 _usdAUM, ILeverageRouter.GMData memory _data) external payable;

    function stableVault() external view returns (IUnderlyingVault);
    function stableDebt() external view returns (uint256);
    function retentionRefund(uint256 amount, bytes calldata enforceData) external view returns (uint256);
    function protocolRate() external view returns (uint256);
    function jonesRate() external view returns (uint256);
    function incentiveReceiver() external view returns (address);
    function GMViewer() external view returns (IGMViewer);
    function GMStrategy() external view returns (IGMStrategy);
    function jGMIndex() external view returns (IjGMIndex);
    function leverageConfig() external view returns (uint256 target, uint256 min, uint256 max);

    event SetLeverageConfig(uint256 _target, uint256 _min, uint256 _max);
    event BorrowStable(uint256 stablesToBorrow);
    event Liquidate(uint256 stableDebt);
    event LeverageDown(uint256 stableDebt, uint256 oldLeverage, uint256 newLeverage);
    event LeverageUp(uint256 stableDebt, uint256 oldLeverage, uint256 newLeverage);
    event SuccessfulDeposit(
        address indexed receiver, uint256 assets, uint256 levAmoount, uint256 shares, uint256 indexedShares
    );
    event SuccessfulWithdrawal(address indexed receiver, uint256 shares, uint256 deLevAmoount, uint256 assets);
    event EmergencyWithdrawal(address indexed caller, address indexed receiver, address[] tokens, uint256 nativeBalanc);
    event Retention(address indexed receiver, uint256 amount, uint256 amountAfterRetention);
    event Rewards(
        uint256 stableRewards, uint256 jonesRewards, uint256 totaljGM, uint256 underlyingjGM, uint256 totalValue
    );
    event Payback(uint256 usdc, uint256 jGMIndex, uint256 gmxIncentives);

    error StableCapReached();
    error OverLeveraged();
    error UnderLeveraged();
    error NotEnoughAmount();
    error BadDebt();
    error OngoingOperation();
    error InvalidAction();
    error InvalidCaller();
    error InvalidParameters();
    error InvalidLeverageConfig();
    error UnWind();
    error FailSendETH();
}
