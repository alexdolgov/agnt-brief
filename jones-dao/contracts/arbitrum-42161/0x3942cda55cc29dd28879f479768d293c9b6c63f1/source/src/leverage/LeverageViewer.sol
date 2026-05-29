// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";
import {IGMViewer} from "src/interfaces/gm/IGMViewer.sol";
import {IjGM} from "src/interfaces/leverage/IjGM.sol";

import {ILeverageViewer} from "src/interfaces/leverage/ILeverageViewer.sol";
import {ILeverageStrategy} from "src/interfaces/leverage/ILeverageStrategy.sol";
import {ILeverageRouter} from "src/interfaces/leverage/ILeverageRouter.sol";
import {IGMStrategy} from "src/interfaces/gm/IGMStrategy.sol";

import {IAggregatorV3} from "src/interfaces/swap/IAggregatorV3.sol";

import {OwnableUpgradeable} from "openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract LeverageViewer is ILeverageViewer, OwnableUpgradeable {
    using FixedPointMathLib for uint256;

    IGMViewer public viewerIndex;
    IjGM public jGM;
    ILeverageStrategy public leverageStrategy;
    ILeverageRouter public leverageRouter;

    ///@notice Nonce for struct param
    uint256 public nonce;

    /// @notice Basis Points
    uint256 public constant BASIS_POINTS = 1e12;

    IAggregatorV3 private constant USDC_ORACLE = IAggregatorV3(0x50834F3163758fcC1Df9973b6e91f0F0F0434aD3);

    function initialize(address _viewerIndex, address _router, address _vault, address _strategy)
        external
        initializer
    {
        __Ownable_init(msg.sender);

        viewerIndex = IGMViewer(_viewerIndex);
        jGM = IjGM(_vault);
        leverageStrategy = ILeverageStrategy(payable(_strategy));
        leverageRouter = ILeverageRouter(payable(_router));
    }

    ///@notice Set Contracts

    function setRouter(address _router) external onlyOwner {
        leverageRouter = ILeverageRouter(payable(_router));
    }

    function setVault(address _vault) external onlyOwner {
        jGM = IjGM(_vault);
    }

    function setStrategy(address _strategy) external onlyOwner {
        leverageStrategy = ILeverageStrategy(payable(_strategy));
    }

    function setViewer(address _viewerIndex) external onlyOwner {
        viewerIndex = IGMViewer(_viewerIndex);
    }

    ///@notice Get IO Info

    function getPreviewDeposit(uint256 _usdc) public view returns (uint256) {
        uint256 totalValue = getTotalValue();

        _usdc = _applyRetention(leverageRouter.incentiveReceiver(), _usdc, leverageRouter.depositRate());
        uint256 jGMAmount = viewerIndex.getPreviewDeposit(_usdc, totalValue);

        uint256 supply = jGM.totalSupply();

        if (supply > 0) {
            return jGMAmount.mulDivDown(supply, getUnderlyingjGM(totalValue)); // 18 decimals
        } else {
            return jGMAmount;
        }
    }

    ///@return USDC expected after jones retention
    function getPreviewWithdraw(bytes calldata _data) public view returns (uint256) {
        uint256 usdc = viewerIndex.getPreviewWithdraw(_data);

        uint256 jonesRetention = usdc.mulDivDown(BASIS_POINTS, BASIS_POINTS - leverageStrategy.protocolRate())
            .mulDivDown(leverageStrategy.jonesRate(), BASIS_POINTS);

        return (usdc - jonesRetention);
    }

    ///@return USDC expected
    function getRawPreviewWithdraw(bytes calldata _data) public view returns (uint256) {
        return viewerIndex.getPreviewWithdraw(_data);
    }

    ///@return User jGM Balance
    function balanceOf(address _user) public view returns (uint256) {
        return jGM.balanceOf(_user);
    }

    ///@notice Get Total Value of data provided
    ///@notice If deposit equals true return in USDC 6 decimals
    ///@notice If deposit equals false return in USD 18 decimals
    function getDataValue(bytes calldata _data, bool deposit) public view returns (uint256) {
        return viewerIndex.getDataValue(_data, deposit);
    }

    ///@return User jGMIndex Balance
    function balanceOfIndex(address _user) public view returns (uint256) {
        uint256 _jGMIndex;

        uint256 _shares = jGM.balanceOf(_user);

        uint256 supply = jGM.totalSupply(); // 18 decimals

        uint256 usdAUM = getTotalValue();

        if (supply > 0) {
            _jGMIndex = _shares.mulDivDown(getUnderlyingjGM(usdAUM), supply); // 18 decimals
        } else {
            _jGMIndex = _shares; // 18 decimals
        }
        return _jGMIndex;
    }

    ///@return User USD Raw Balance
    function usdRawBalance(address _user) public view returns (uint256) {
        uint256 _jGMIndex;

        uint256 _shares = jGM.balanceOf(_user);

        uint256 supply = jGM.totalSupply(); // 18 decimals

        uint256 usdAUM = getTotalValue();

        if (supply > 0) {
            _jGMIndex = _shares.mulDivDown(getUnderlyingjGM(usdAUM), supply); // 18 decimals
        } else {
            _jGMIndex = _shares; // 18 decimals
        }

        return usdAUM.mulDivDown(_jGMIndex, viewerIndex.getTotalSupply());
    }

    ///@return USD Raw Value of jGM shares
    function usdRawBalanceByShare(uint256 _jGM) public view returns (uint256) {
        uint256 _jGMIndex;

        uint256 supply = jGM.totalSupply(); // 18 decimals

        uint256 usdAUM = getTotalValue();

        if (supply > 0) {
            _jGMIndex = _jGM.mulDivDown(getUnderlyingjGM(usdAUM), supply); // 18 decimals
        } else {
            _jGMIndex = _jGM; // 18 decimals
        }

        return usdAUM.mulDivDown(_jGMIndex, viewerIndex.getTotalSupply());
    }

    ///@return jGM Index per jGM shares
    function jGMIndexByShare(uint256 _jGM) public view returns (uint256) {
        uint256 _jGMIndex;

        uint256 supply = jGM.totalSupply(); // 18 decimals

        uint256 usdAUM = getTotalValue();

        if (supply > 0) {
            _jGMIndex = _jGM.mulDivDown(getUnderlyingjGM(usdAUM), supply); // 18 decimals
        } else {
            _jGMIndex = _jGM; // 18 decimals
        }

        return _jGMIndex;
    }

    ///@return jGM shares percentage of system value; 12 decimals
    function percentageByShare(uint256 _jGM) public view returns (uint256) {
        uint256 sharesUSD = usdRawBalanceByShare(_jGM);
        uint256 usdAUM = getTotalValue();

        return sharesUSD.mulDivDown(BASIS_POINTS, usdAUM);
    }

    function isWithdrawInRange(uint256 _jGM, bytes calldata _data) public view returns (bool) {
        uint256 dataValue = getDataValue(_data, false);

        uint256 supply = jGM.totalSupply(); // 18 decimals

        uint256 usdAUM = getTotalValue();

        uint256 underlying;
        uint256 currentLev;

        uint256 currentjGM_Index = viewerIndex.vault().balanceOf(address(leverageStrategy));

        if (currentjGM_Index == 0) {
            underlying = 0;
            currentLev = BASIS_POINTS;
        }

        uint256 debt = leverageStrategy.stableDebt();

        if (debt > 0) {
            uint256 jGMNeeded = getjGMToPayback(debt, usdAUM);
            underlying = currentjGM_Index > jGMNeeded ? currentjGM_Index - jGMNeeded : 0;
        } else {
            underlying = currentjGM_Index;
            currentLev = BASIS_POINTS;
        }

        uint256 _jGMIndex;

        if (supply > 0) {
            _jGMIndex = _jGM.mulDivDown(underlying, supply); // 18 decimals
        } else {
            _jGMIndex = _jGM; // 18 decimals
        }

        if (currentLev == 0) {
            currentLev = (currentjGM_Index * BASIS_POINTS) / underlying;
        }

        _jGMIndex = _jGMIndex - _jGMIndex.mulDivDown(leverageStrategy.protocolRate(), BASIS_POINTS);

        (,, uint256 max) = leverageStrategy.leverageConfig();

        if (currentLev > max) {
            _jGMIndex = _jGMIndex + _jGMIndex.mulDivDown(currentLev - max, BASIS_POINTS);
        }

        uint256 rawUSD = usdAUM.mulDivDown(_jGMIndex, viewerIndex.getTotalSupply());

        return _isInRange(rawUSD, dataValue);
    }

    ///@notice Get System Info

    function jGMTotalValue() public view returns (uint256) {
        uint256 usdAUM = getTotalValue();

        return usdAUM.mulDivDown(getUnderlyingjGM(usdAUM), viewerIndex.getTotalSupply());
    }

    function getCap() public view returns (uint256) {
        return leverageStrategy.stableVault().cap(address(leverageStrategy));
    }

    function isCapSet() public view returns (bool) {
        return leverageStrategy.stableVault().borrowableAmount(address(leverageStrategy)) == 0;
    }

    function getBorrowableAmount() public view returns (uint256) {
        return leverageStrategy.stableVault().borrowableAmount(address(leverageStrategy));
    }

    function getTotalValue() public view returns (uint256) {
        return viewerIndex.getTotalValue();
    }

    function getGMWeight(address _gmToken) public view returns (uint256) {
        return viewerIndex.getGMWeight(_gmToken);
    }

    function getGMTokens() public view returns (IGMStrategy.GMToken[] memory gms) {
        return viewerIndex.getGMTokens();
    }

    function getGMToken(address marketToken) public view returns (IGMStrategy.GMToken memory) {
        return viewerIndex.getGMToken(marketToken);
    }

    function getOperationData(bytes32 key) external view returns (uint8, address, uint256, uint256, uint256) {
        return viewerIndex.getOperationData(key);
    }

    function oracles(address _indexToken) external view returns (IAggregatorV3) {
        return viewerIndex.oracles(_indexToken);
    }

    /**
     * @notice Percentage of utilization of stable vault base on this strategy cap.
     */
    function utilization() public view returns (uint256) {
        uint256 totalStables = leverageStrategy.stableVault().totalAssets();

        uint256 _cap =
            leverageStrategy.stableVault().cap(address(leverageStrategy)).mulDivDown(totalStables, BASIS_POINTS);

        if (_cap == 0 || totalStables == 0) {
            return 0;
        }

        uint256 stableDebt = leverageStrategy.stableDebt();

        if (_cap < stableDebt) {
            return BASIS_POINTS;
        }

        return stableDebt.mulDivDown(BASIS_POINTS, _cap);
    }

    function debt() public view returns (uint256) {
        return leverageStrategy.stableDebt();
    }

    function borrowableAmount() external view returns (uint256) {
        return leverageStrategy.stableVault().borrowableAmount(address(leverageStrategy));
    }

    /**
     * @notice System leverage; 12 decimals
     */
    function leverage(uint256 totalValue) public view returns (uint256) {
        uint256 underlying = getUnderlyingjGM(totalValue); // 18 Decimals

        uint256 debt = leverageStrategy.stableDebt();

        if (underlying == 0) {
            if (debt > 0) {
                revert UnWind();
            }
            return BASIS_POINTS;
        }

        if (debt == 0) {
            return BASIS_POINTS;
        }

        uint256 currentBalance = leverageStrategy.jGMIndex().balanceOf(address(leverageStrategy));

        return ((currentBalance * BASIS_POINTS) / underlying); // 12 Decimals;
    }

    /**
     * @notice Get USDC balance after simulate paying back stable debt.
     */
    function getUnderlyingUSDC(bytes memory _data) public view returns (uint256) {
        uint256 currentBalance = leverageStrategy.GMViewer().getPreviewWithdraw(_data);

        if (currentBalance == 0) {
            return 0;
        }

        uint256 stableDebt = leverageStrategy.stableDebt();

        if (stableDebt > 0) {
            return currentBalance > stableDebt ? currentBalance - stableDebt : 0;
        } else {
            return currentBalance;
        }
    }

    /**
     * @notice Get jGM balance after simulate paying back stable debt; 18 decimals.
     */
    function getUnderlyingjGM(uint256 totalValue) public view returns (uint256) {
        uint256 currentBalance = leverageStrategy.jGMIndex().balanceOf(address(leverageStrategy));

        if (currentBalance == 0) {
            return 0;
        }

        uint256 debt = leverageStrategy.stableDebt();

        if (debt > 0) {
            uint256 jGMNeeded = getjGMToPayback(debt, totalValue);
            return currentBalance > jGMNeeded ? currentBalance - jGMNeeded : 0;
        } else {
            return currentBalance;
        }
    }

    function retentionRefund(uint256 amount, bytes calldata enforceData) public view returns (uint256) {
        return leverageStrategy.retentionRefund(amount, enforceData);
    }

    function getjGMToPayback(uint256 _debt, uint256 _totalUSDValue) public view returns (uint256) {
        uint256 _jGMIndex = leverageStrategy.GMViewer().getPreviewDeposit(_debt, _totalUSDValue) / 2;
        uint256 amount = leverageStrategy.GMStrategy().rebalance().addSlippage(_jGMIndex) + _jGMIndex;
        return amount.mulDivDown(10000, leverageStrategy.GMViewer().gmxFee());
    }

    /**
     * @notice Get Max Leverage.
     */
    function getMaxLeverage() public view returns (uint256) {
        (,, uint256 max) = leverageStrategy.leverageConfig();
        return max;
    }

    /**
     * @notice Get Min Leverage.
     */
    function getMinLeverage() public view returns (uint256) {
        (, uint256 min,) = leverageStrategy.leverageConfig();
        return min;
    }

    /**
     * @notice Get Target Leverage.
     */
    function getTargetLeverage() public view returns (uint256) {
        (uint256 target,,) = leverageStrategy.leverageConfig();
        return target;
    }

    /**
     * @notice Is Paused.
     */
    function isPaused() public view returns (bool) {
        return leverageRouter.isPaused();
    }

    /* -------------------------------------------------------------------------- */
    /*                                 PRIVATE                                    */
    /* -------------------------------------------------------------------------- */

    function _applyRetention(address _receiver, uint256 amount, uint256 rate)
        private
        pure
        returns (uint256 amountAfterRetention)
    {
        amountAfterRetention = amount;
        if (_receiver != address(0)) {
            if (rate > 0) {
                amountAfterRetention = amountAfterRetention - amountAfterRetention.mulDivDown(rate, BASIS_POINTS);
            }
        }
    }

    /**
     * @notice Verify if previewUSD is iun range with theorical USD.
     * @param _theoricalUSD signed AUM
     * @param _previewUSD current AUM
     */
    function _isInRange(uint256 _theoricalUSD, uint256 _previewUSD) private view returns (bool) {
        if (
            _previewUSD > leverageStrategy.GMStrategy().rebalance().addSlippage(_theoricalUSD)
                || _previewUSD < leverageStrategy.GMStrategy().rebalance().applySlippage(_theoricalUSD)
        ) {
            return false;
        }
        return true;
    }
}
