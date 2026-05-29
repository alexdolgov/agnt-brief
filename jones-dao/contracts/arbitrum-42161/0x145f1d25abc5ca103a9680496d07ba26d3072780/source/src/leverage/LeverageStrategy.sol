// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 Jones DAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

pragma solidity ^0.8.20;

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";

import {UpgradeableOperableKeepable, UpgradeableGovernable} from "src/common/UpgradeableOperableKeepable.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {IUnderlyingVault} from "src/interfaces/jusdc/IUnderlyingVault.sol";
import {IPayBack} from "src/interfaces/jusdc/IPayBack.sol";

import {IEnforcePayBackCallback} from "src/interfaces/jusdc/IEnforcePayBackCallback.sol";
import {IjGMIndex} from "src/interfaces/gm/IjGMIndex.sol";
import {IGMRouter} from "src/interfaces/gm/IGMRouter.sol";
import {IGMStrategy} from "src/interfaces/gm/IGMStrategy.sol";
import {IGMViewer} from "src/interfaces/gm/IGMViewer.sol";
import {IGMViewer} from "src/interfaces/gm/IGMViewer.sol";
import {IjGM} from "src/interfaces/leverage/IjGM.sol";
import {ILeverageRouter} from "src/interfaces/leverage/ILeverageRouter.sol";
import {ILeverageStrategy} from "src/interfaces/leverage/ILeverageStrategy.sol";
import {ILeverageViewer} from "src/interfaces/leverage/ILeverageViewer.sol";
import {IAggregatorV3} from "src/interfaces/swap/IAggregatorV3.sol";

contract LeverageStrategy is ILeverageStrategy, IPayBack, UpgradeableOperableKeepable {
    using FixedPointMathLib for uint256;

    struct CallbackData {
        uint256 amount;
        uint256 leverage;
        address receiver;
        uint256 totaljGM;
        uint256 totalValue;
        uint256 underlyingjGM;
        uint256 supply;
    }

    /// @notice Stack too deep
    struct LevVars {
        address thisAddress;
        uint256 availableForBorrowing;
        uint256 oldLeverage;
        uint256 stablesInStrategy;
        uint256 stablesToBorrow;
        uint256 newjGM;
        uint256 underlying;
        uint256 currentBalance;
        uint256 jGMNeeded;
        uint256 newLeverage;
    }

    /// @notice Stack too deep
    struct PayBackVars {
        address thisAddress;
        uint256 strategyStables;
        uint256 expectedStables;
        uint256 gmxIncentive;
        uint256 incentives;
        uint256 length;
        uint256 shares;
    }

    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    uint256 private constant BASIS_POINTS = 1e12;

    IAggregatorV3 private constant ETH_ORACLE = IAggregatorV3(0x639Fe6ab55C921f74e7fac1ee960C0B6293ba612);
    IAggregatorV3 private constant USDC_ORACLE = IAggregatorV3(0x50834F3163758fcC1Df9973b6e91f0F0F0434aD3);

    IGMRouter private GMRouter;
    IjGMIndex public jGMIndex;
    IGMStrategy public GMStrategy;
    IGMViewer public GMViewer;
    IjGM private jGM;
    IUnderlyingVault public stableVault;

    ILeverageViewer public viewer;

    IERC20 public stable;

    uint256 public stableDebt;

    /// @notice Incentives
    address public incentiveReceiver;
    uint256 public protocolRate;
    uint256 public jonesRate;

    LeverageConfig public leverageConfig;

    // 1 = Idle
    // 2 = Deposit
    // 3 = Withdrawal
    // 4 = Leverage up
    // 5 = Leverage down
    // 6 = Harvest
    // 7 = Liquidate
    // 8 = Payback

    uint8 public action;

    ///@notice action => callback data
    mapping(uint8 => CallbackData) public callbackData;

    /* -------------------------------------------------------------------------- */
    /*                                 INITIALIZE                                 */
    /* -------------------------------------------------------------------------- */

    function initialize(
        LeverageConfig memory _leverageConfig,
        address _viewer,
        address _stableVault,
        address _jGM,
        address _gmViewer,
        address _incentiveReceiver,
        uint256 _protocolRate,
        uint256 _jonesRate
    ) external initializer {
        __Governable_init(msg.sender);

        viewer = ILeverageViewer(_viewer);

        stableVault = IUnderlyingVault(_stableVault);
        GMViewer = IGMViewer(_gmViewer);
        GMStrategy = GMViewer.strategy();
        jGMIndex = GMViewer.vault();
        GMRouter = GMViewer.router();

        stable = stableVault.underlying();
        jGM = IjGM(_jGM);

        incentiveReceiver = _incentiveReceiver;
        if (_protocolRate + jonesRate > BASIS_POINTS) {
            revert InvalidParameters();
        }
        protocolRate = _protocolRate;
        jonesRate = _jonesRate;

        action = 1;

        leverageConfig = _leverageConfig;

        stable.approve(address(GMRouter), type(uint256).max);
        stable.approve(_stableVault, type(uint256).max);
    }

    /* -------------------------------------------------------------------------- */
    /*                                  OPERATOR                                  */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Enforce Payback to stable vault
     * @param amount Amount to pay back
     * @param enforceData Extra data to enforce payback
     * @return gmx retention used in the payback
     */
    function payBack(uint256 amount, bytes calldata enforceData)
        external
        payable
        override(IPayBack)
        onlyOperator
        returns (uint256)
    {
        GMStrategy.operationCheck();

        if (action != 1) {
            revert InvalidAction();
        }

        ///@notice Decode Data
        ILeverageRouter.GMData memory data = abi.decode(enforceData, (ILeverageRouter.GMData));

        uint256 length = data.data.gmData.length;

        uint256 gmxIncentive;

        for (uint256 i; i < length;) {
            gmxIncentive = gmxIncentive + data.data.gmData[i].executionFee;

            unchecked {
                ++i;
            }
        }

        uint256 usdAUM = GMViewer.getTotalValue();

        uint256 shares = viewer.getjGMToPayback(amount, usdAUM);

        action = 8;

        uint256 incentives = gmxIncentive.mulDivDown(GMViewer.GMPrice(ETH_ORACLE, 0), 1e20); // USD
        incentives = incentives.mulDivDown(1e8, GMViewer.GMPrice(USDC_ORACLE, 0)); // USDC

        callbackData[action] = CallbackData({
            amount: shares,
            leverage: incentives,
            receiver: msg.sender,
            totaljGM: 0,
            totalValue: usdAUM,
            underlyingjGM: 0,
            supply: 0
        });

        if (msg.value >= gmxIncentive) {
            GMRouter.createWithdrawal{value: gmxIncentive}(
                shares, address(this), usdAUM, abi.encode(data.data), data.signature
            );
        } else {
            revert NotEnoughAmount();
        }

        return incentives;
    }

    /**
     * @notice Deposit to GmIndex
     * @param _assets Amount of assets in.
     * @param _receiver Who will receive the shares.
     * @param _usdAUM Total AUM in USD.
     * @param _data The data needed to purchase GM tokens.
     */
    function onGMDeposit(uint256 _assets, address _receiver, uint256 _usdAUM, ILeverageRouter.GMData memory _data)
        external
        payable
        onlyOperator
    {
        if (action != 1 || _data.data.action != 2) {
            revert InvalidAction();
        }

        uint256 underlying = viewer.getUnderlyingjGM(_usdAUM);

        if (underlying == 0) {
            if (stableDebt > 0) {
                revert UnWind();
            }
        }

        uint256 currentLev;
        uint256 bp = BASIS_POINTS;

        if (stableDebt == 0) {
            currentLev = bp;
        }
        address thisAddress = address(this);

        uint256 currentBalance = jGMIndex.balanceOf(thisAddress);

        if (underlying != 0) {
            currentLev = ((currentBalance * bp) / underlying);
        }

        uint256 targetLev = leverageConfig.target;

        action = _data.data.action;

        if (currentLev <= targetLev) {
            uint256 stablesToBorrow = _assets.mulDivDown(targetLev - bp, bp);

            uint256 availableForBorrowing = stableVault.borrowableAmount(thisAddress);
            if (availableForBorrowing < stablesToBorrow) {
                stablesToBorrow = availableForBorrowing;
            }
            if (stablesToBorrow > 0) {
                stableVault.borrow(stablesToBorrow);
                emit BorrowStable(stablesToBorrow);

                stableDebt = stableDebt + stablesToBorrow;
            }

            callbackData[action] = CallbackData({
                amount: _assets,
                leverage: stablesToBorrow,
                receiver: _receiver,
                totaljGM: currentBalance,
                totalValue: _usdAUM,
                underlyingjGM: underlying,
                supply: jGM.totalSupply()
            });

            GMRouter.createDeposit{value: msg.value}(
                stablesToBorrow + _assets, address(this), _usdAUM, abi.encode(_data.data), _data.signature
            );
        } else {
            callbackData[action] = CallbackData({
                amount: _assets,
                leverage: 0,
                receiver: _receiver,
                totaljGM: currentBalance,
                totalValue: _usdAUM,
                underlyingjGM: underlying,
                supply: jGM.totalSupply()
            });
            GMRouter.createDeposit{value: msg.value}(
                _assets, address(this), _usdAUM, abi.encode(_data.data), _data.signature
            );
        }
    }

    function depositCallback(uint256 _jGM) external {
        if (msg.sender != address(GMStrategy)) {
            revert InvalidCaller();
        }

        if (action != 2 && action != 4) {
            revert InvalidAction();
        }

        CallbackData memory callback = callbackData[action];

        if (action == 2) {
            if (callback.leverage > 0) {
                _jGM = _jGM.mulDivDown(callback.amount, callback.amount + callback.leverage);
            }

            uint256 shares;

            if (callback.supply > 0 && callback.underlyingjGM > 0) {
                shares = _jGM.mulDivDown(callback.supply, callback.underlyingjGM); // 18 decimals
            } else {
                shares = _jGM; // 18 decimals
            }

            jGM.mint(shares, callback.receiver);

            emit SuccessfulDeposit(callback.receiver, callback.amount, callback.leverage, shares, _jGM);
        }

        callbackData[action] = CallbackData({
            amount: 0,
            leverage: 0,
            receiver: address(0),
            totaljGM: 0,
            totalValue: 0,
            underlyingjGM: 0,
            supply: 0
        });

        action = 1;
    }

    /**
     * @notice Withdrawal to GMIndex
     * @param _jGMIndex Amount of GM Index to be redeeem.
     * @param _receiver Who will receive the USDC.
     * @param _usdAUM Total AUM in USD.
     * @param _data The data needed to redeem GM tokens.
     */
    function onGMWithdrawal(uint256 _jGMIndex, address _receiver, uint256 _usdAUM, ILeverageRouter.GMData memory _data)
        external
        payable
        onlyOperator
    {
        if (action != 1 || _data.data.action != 3) {
            revert InvalidAction();
        }

        uint256 underlying = viewer.getUnderlyingjGM(_usdAUM);
        uint256 bp = BASIS_POINTS;
        uint256 currentLev;

        if (underlying == 0) {
            if (stableDebt > 0) {
                revert UnWind();
            }
            currentLev = bp;
        }

        if (stableDebt == 0) {
            currentLev = bp;
        }

        uint256 currentBalance = jGMIndex.balanceOf(address(this));

        currentLev = ((currentBalance * bp) / underlying);

        uint256 maxLev = leverageConfig.max;

        action = _data.data.action;

        _jGMIndex = _jGMIndex - _jGMIndex.mulDivDown(protocolRate, BASIS_POINTS);

        if (currentLev > maxLev) {
            uint256 jGMToRedeem = _jGMIndex.mulDivDown(currentLev - maxLev, bp);
            callbackData[action] = CallbackData({
                amount: _jGMIndex,
                leverage: jGMToRedeem,
                receiver: _receiver,
                totaljGM: currentBalance,
                totalValue: _usdAUM,
                underlyingjGM: underlying,
                supply: jGM.totalSupply()
            });

            GMRouter.createWithdrawal{value: msg.value}(
                _jGMIndex + jGMToRedeem, address(this), _usdAUM, abi.encode(_data.data), _data.signature
            );
        } else {
            callbackData[action] = CallbackData({
                amount: _jGMIndex,
                leverage: 0,
                receiver: _receiver,
                totaljGM: currentBalance,
                totalValue: _usdAUM,
                underlyingjGM: underlying,
                supply: jGM.totalSupply()
            });

            GMRouter.createWithdrawal{value: msg.value}(
                _jGMIndex, address(this), _usdAUM, abi.encode(_data.data), _data.signature
            );
        }
    }

    function withdrawalCallback(uint256 _usdc) external {
        if (msg.sender != address(GMStrategy)) {
            revert InvalidCaller();
        }

        if (action == 2 || action == 4) {
            revert InvalidAction();
        }

        CallbackData memory callback = callbackData[action];

        if (action == 3) {
            if (callback.leverage > 0) {
                uint256 toPayBack = _usdc.mulDivDown(callback.leverage, callback.amount + callback.leverage);
                _repayStable(toPayBack);
                _usdc = _usdc - toPayBack;
            }

            uint256 jonesRetention;

            if (protocolRate > 0 && jonesRate > 0) {
                jonesRetention =
                    _usdc.mulDivDown(BASIS_POINTS, BASIS_POINTS - protocolRate).mulDivDown(jonesRate, BASIS_POINTS);
            } else if (jonesRate > 0) {
                jonesRetention = _usdc.mulDivDown(jonesRate, BASIS_POINTS);
            }

            address _incentiveReceiver = incentiveReceiver;

            if (_incentiveReceiver != address(0) && jonesRetention > 0) {
                stable.transfer(_incentiveReceiver, jonesRetention);
                emit Retention(_incentiveReceiver, _usdc, _usdc - jonesRetention);
                _usdc = _usdc - jonesRetention;
            }

            stable.transfer(callback.receiver, _usdc);

            emit SuccessfulWithdrawal(callback.receiver, callback.amount, callback.leverage, _usdc);
        } else if (action == 6) {
            address _incentiveReceiver = incentiveReceiver;
            uint256 jonesRewards;

            if (_incentiveReceiver != address(0)) {
                jonesRewards = _usdc.mulDivDown(callback.leverage, BASIS_POINTS);
                stable.transfer(_incentiveReceiver, jonesRewards);
            }

            uint256 jusdcRewards = _usdc - jonesRewards;

            stableVault.receiveRewards(jusdcRewards);

            emit Rewards(jusdcRewards, jonesRewards, callback.totaljGM, callback.underlyingjGM, callback.totalValue);
        } else if (action == 8) {
            _usdc = stable.balanceOf(address(this));

            stableVault.payBack(_usdc, callback.leverage);

            stableDebt = stableDebt > _usdc ? stableDebt - _usdc : 0;

            stable.transfer(incentiveReceiver, callback.leverage);

            if (callback.receiver != address(0)) {
                IEnforcePayBackCallback(callback.receiver).enforcePaybackCallback(_usdc, callback.leverage);
            }

            emit Payback(_usdc, callback.amount, callback.leverage);
        } else {
            _repayStable(_usdc);
            if (action == 5) {
                emit LeverageDown(
                    stableDebt,
                    (callback.totaljGM * BASIS_POINTS) / callback.underlyingjGM,
                    viewer.leverage(callback.totalValue)
                );
            } else {
                emit Liquidate(stableDebt);

                callbackData[action] = CallbackData({
                    amount: 0,
                    leverage: 0,
                    receiver: address(0),
                    totaljGM: 0,
                    totalValue: 0,
                    underlyingjGM: 0,
                    supply: 0
                });

                action = type(uint8).max;

                return;
            }
        }

        callbackData[action] = CallbackData({
            amount: 0,
            leverage: 0,
            receiver: address(0),
            totaljGM: 0,
            totalValue: 0,
            underlyingjGM: 0,
            supply: 0
        });

        action = 1;
    }

    /* -------------------------------------------------------------------------- */
    /*                                     VIEW                                   */
    /* -------------------------------------------------------------------------- */

    function retentionRefund(uint256 amount, bytes calldata enforceData)
        external
        view
        override(ILeverageStrategy, IPayBack)
        returns (uint256)
    {
        ///@notice Decode Data
        ILeverageRouter.GMData memory data = abi.decode(enforceData, (ILeverageRouter.GMData));

        uint256 length = data.data.gmData.length;

        uint256 gmxIncentive;

        for (uint256 i; i < length;) {
            gmxIncentive = gmxIncentive + data.data.gmData[i].executionFee;

            unchecked {
                ++i;
            }
        }

        gmxIncentive = gmxIncentive.mulDivDown(GMViewer.GMPrice(ETH_ORACLE, 0), 1e20); // USD
        return gmxIncentive.mulDivDown(1e8, GMViewer.GMPrice(USDC_ORACLE, 0)); // USDC
    }

    /* -------------------------------------------------------------------------- */
    /*                                  GOVERNOR                                  */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Set Leverage Configuration
     * @dev Precision is based on 1e12 as 1x leverage
     * @param _target Target leverage
     * @param _min Min Leverage
     * @param _max Max Leverage
     */
    function setLeverageConfig(uint256 _target, uint256 _min, uint256 _max) public onlyGovernor {
        _setLeverageConfig(LeverageConfig(_target, _min, _max));
        emit SetLeverageConfig(_target, _min, _max);
    }

    /**
     * @notice Approve token to be spend
     */
    function forceApproval(address token, address spender, uint256 amount) external onlyGovernor {
        IERC20(token).approve(spender, amount);
    }

    /**
     * @notice Set new stable vault
     * @param _stableVault Stable vault address
     */
    function updateStableVault(address _stableVault) external onlyGovernor {
        stable.approve(address(GMRouter), 0);
        stable.approve(address(stableVault), 0);
        stableVault = IUnderlyingVault(_stableVault);
        stable = stableVault.underlying();
        stable.approve(address(GMRouter), type(uint256).max);
        stable.approve(_stableVault, type(uint256).max);
    }

    /**
     * @notice Set new internal contracts
     * @param _gmViewer GMX Router V1
     */
    function setInternalContracts(address _gmViewer) external onlyGovernor {
        GMStrategy.operationCheck();

        GMViewer = IGMViewer(_gmViewer);
        GMStrategy = GMViewer.strategy();
        jGMIndex = GMViewer.vault();
        GMRouter = GMViewer.router();
    }

    /**
     * @notice Update Incentive Variables
     * @param _incentiveReceiver incentive receiver address
     */
    function updateIncentives(address _incentiveReceiver, uint256 _protocolRate, uint256 _jonesRate)
        external
        onlyGovernor
    {
        incentiveReceiver = _incentiveReceiver;
        if (_protocolRate + _jonesRate > BASIS_POINTS) {
            revert InvalidParameters();
        }
        protocolRate = _protocolRate;
        jonesRate = _jonesRate;
    }

    /**
     * @notice Enforce action
     * @param _action action
     */
    function enforceAction(uint8 _action) external onlyGovernorOrOperator {
        action = _action;
    }

    /**
     * @notice Moves assets from the strategy to `_to`
     * @param _assets An array of IERC20 compatible tokens to move out from the strategy
     * @param _withdrawNative `true` if we want to move the native asset from the strategy
     */
    function emergencyWithdraw(address _to, address[] memory _assets, bool _withdrawNative) external onlyGovernor {
        uint256 assetsLength = _assets.length;
        for (uint256 i = 0; i < assetsLength; i++) {
            IERC20 asset_ = IERC20(_assets[i]);
            uint256 assetBalance = asset_.balanceOf(address(this));

            if (assetBalance > 0) {
                // Transfer the ERC20 tokens
                asset_.transfer(_to, assetBalance);
            }

            unchecked {
                ++i;
            }
        }

        uint256 nativeBalance = address(this).balance;

        // Nothing else to do
        if (_withdrawNative && nativeBalance > 0) {
            // Transfer the native currency
            (bool sent,) = payable(_to).call{value: nativeBalance}("");
            if (!sent) {
                revert FailSendETH();
            }
        }

        emit EmergencyWithdrawal(msg.sender, _to, _assets, _withdrawNative ? nativeBalance : 0);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   KEEEPR                                   */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Harvest rewards. Action 6
     */
    function harvest(uint256 _toJones, uint256 _usdAUM, ILeverageRouter.GMData memory _data)
        external
        payable
        onlyKeeper
    {
        if (action != 1 || GMStrategy.operationOnGoing() || _data.data.action != 6) {
            revert InvalidAction();
        }

        address thisAddress = address(this);

        uint256 currentBalance = jGMIndex.balanceOf(thisAddress);

        uint256 _stableDebt = stableDebt;

        uint256 underlying;

        if (_stableDebt > 0) {
            uint256 jGMNeeded = viewer.getjGMToPayback(_stableDebt, _usdAUM);
            underlying = currentBalance > jGMNeeded ? currentBalance - jGMNeeded : 0;
        } else {
            underlying = currentBalance;
        }

        action = _data.data.action;

        callbackData[_data.data.action] = CallbackData({
            amount: _data.data.amount,
            leverage: _toJones,
            receiver: address(0),
            totaljGM: currentBalance,
            totalValue: _usdAUM,
            underlyingjGM: underlying,
            supply: jGM.totalSupply()
        });

        GMRouter.createWithdrawal{value: msg.value}(
            _data.data.amount, thisAddress, _usdAUM, abi.encode(_data.data), _data.signature
        );
    }

    /**
     * @notice Sell GM tokens to get USDC in case to be needed for a withdrawal in jUSDC vault. Action 8
     */
    function keeperPayBack(uint256 amount, uint256 _usdAUM, bytes calldata enforceData)
        external
        payable
        onlyKeeper
        returns (uint256)
    {
        GMStrategy.operationCheck();

        PayBackVars memory vars;

        vars.thisAddress = address(this);

        vars.strategyStables = stable.balanceOf(vars.thisAddress);

        vars.expectedStables = amount > vars.strategyStables ? amount - vars.strategyStables : 0;

        if (vars.expectedStables > 0) {
            if (action != 1) {
                revert InvalidAction();
            }

            ///@notice Decode Data
            ILeverageRouter.GMData memory data = abi.decode(enforceData, (ILeverageRouter.GMData));

            vars.length = data.data.gmData.length;

            for (uint256 i; i < vars.length;) {
                vars.gmxIncentive = vars.gmxIncentive + data.data.gmData[i].executionFee;

                unchecked {
                    ++i;
                }
            }

            vars.shares = viewer.getjGMToPayback(vars.expectedStables, _usdAUM);

            action = 8;

            vars.incentives = vars.gmxIncentive.mulDivDown(GMViewer.GMPrice(ETH_ORACLE, 0), 1e20); // USD
            vars.incentives = vars.incentives.mulDivDown(1e8, GMViewer.GMPrice(USDC_ORACLE, 0)); // USDC

            callbackData[action] = CallbackData({
                amount: vars.shares,
                leverage: vars.incentives,
                receiver: address(0),
                totaljGM: 0,
                totalValue: _usdAUM,
                underlyingjGM: 0,
                supply: 0
            });

            if (msg.value >= vars.gmxIncentive) {
                GMRouter.createWithdrawal{value: vars.gmxIncentive}(
                    vars.shares, vars.thisAddress, _usdAUM, abi.encode(data.data), data.signature
                );
                if (msg.value > vars.gmxIncentive) {
                    (bool sent,) = payable(msg.sender).call{value: msg.value - vars.gmxIncentive}("");
                    if (!sent) {
                        revert FailSendETH();
                    }
                }
            } else {
                revert NotEnoughAmount();
            }
        } else {
            revert InvalidAction();
        }

        return vars.incentives;
    }

    /**
     * @notice Deleverage & pay stable debt. Action 7
     */
    function unwind(ILeverageRouter.GMData memory _data) external payable onlyGovernorOrKeeper {
        if (_data.data.action != 7) {
            revert InvalidAction();
        }

        _setLeverageConfig(LeverageConfig(BASIS_POINTS + 1, BASIS_POINTS, BASIS_POINTS + 2));
        if (stableDebt == 0) {
            return;
        }

        address thisAddress = address(this);

        uint256 currentBalance = jGMIndex.balanceOf(thisAddress);

        action = _data.data.action;

        GMRouter.createWithdrawal{value: msg.value}(
            currentBalance, thisAddress, GMViewer.getTotalValue(), abi.encode(_data.data), _data.signature
        );
    }

    /**
     * @notice Using by the bot to leverage Up if is needed. Action 4
     */
    function leverageUp(uint256 newTotalUSD, uint256 _usdAUM, ILeverageRouter.GMData memory _data)
        external
        payable
        onlyKeeper
    {
        if (action != 1 || GMStrategy.operationOnGoing() || _data.data.action != 4) {
            revert InvalidAction();
        }

        if (newTotalUSD < _usdAUM) {
            revert InvalidParameters();
        }

        LevVars memory vars;

        vars.thisAddress = address(this);
        vars.availableForBorrowing = stableVault.borrowableAmount(vars.thisAddress);

        if (vars.availableForBorrowing == 0) {
            return;
        }

        vars.oldLeverage = viewer.leverage(_usdAUM);

        if (_data.data.amount < 1e4) {
            return;
        }

        vars.stablesInStrategy = stable.balanceOf(vars.thisAddress);

        vars.stablesToBorrow =
            _data.data.amount > vars.stablesInStrategy ? _data.data.amount - vars.stablesInStrategy : 0;

        if (vars.availableForBorrowing < vars.stablesToBorrow) {
            revert NotEnoughAmount();
        }

        if (vars.stablesToBorrow > 0) {
            stableVault.borrow(vars.stablesToBorrow);
            emit BorrowStable(vars.stablesToBorrow);

            stableDebt = stableDebt + vars.stablesToBorrow;
        }

        vars.newjGM = GMViewer.getPreviewDeposit(vars.stablesToBorrow + vars.stablesInStrategy, _usdAUM);

        vars.currentBalance = jGMIndex.balanceOf(vars.thisAddress) + vars.newjGM;

        if (stableDebt > 0) {
            vars.jGMNeeded = viewer.getjGMToPayback(stableDebt, newTotalUSD);
            vars.underlying = vars.currentBalance > vars.jGMNeeded ? vars.currentBalance - vars.jGMNeeded : 0;
        } else {
            vars.underlying = vars.currentBalance;
        }

        vars.newLeverage = (vars.currentBalance * BASIS_POINTS) / vars.underlying; // 12 Decimals;

        if (vars.newLeverage < vars.oldLeverage) {
            revert UnderLeveraged();
        }

        if (vars.newLeverage > leverageConfig.max) {
            revert OverLeveraged();
        }

        action = _data.data.action;

        GMRouter.createDeposit{value: msg.value}(
            _data.data.amount, vars.thisAddress, _usdAUM, abi.encode(_data.data), _data.signature
        );

        emit LeverageUp(stableDebt, vars.oldLeverage, vars.newLeverage);
    }

    /**
     * @notice Using by the bot to leverage Down if is needed. Action 5
     */
    function leverageDown(uint256 _usdAUM, ILeverageRouter.GMData memory _data) external payable onlyKeeper {
        if (action != 1 || GMStrategy.operationOnGoing() || _data.data.action != 5) {
            revert InvalidAction();
        }

        address thisAddress = address(this);

        uint256 stablesToPayBack = GMViewer.getPreviewWithdraw(abi.encode(_data.data));

        uint256 currentBalance = jGMIndex.balanceOf(thisAddress);

        uint256 _stableDebt = stableDebt;

        uint256 underlying;

        if (_stableDebt > 0) {
            uint256 jGMNeeded = viewer.getjGMToPayback(_stableDebt, _usdAUM);
            underlying = currentBalance > jGMNeeded ? currentBalance - jGMNeeded : 0;
        } else {
            underlying = currentBalance;
        }

        if (underlying == 0) {
            revert BadDebt();
        }

        uint256 oldLeverage = ((currentBalance * BASIS_POINTS) / underlying);

        callbackData[_data.data.action] = CallbackData({
            amount: 0,
            leverage: 0,
            receiver: address(0),
            totaljGM: currentBalance,
            totalValue: _usdAUM,
            underlyingjGM: underlying,
            supply: jGM.totalSupply()
        });

        currentBalance = currentBalance > _data.data.amount ? currentBalance - _data.data.amount : 0;

        _stableDebt = _stableDebt > stablesToPayBack ? stableDebt - stablesToPayBack : 0;

        uint256 newLeverage;

        if (underlying == 0) {
            if (_stableDebt > 0) {
                revert UnWind();
            }
            return;
        }

        if (stableDebt == 0) {
            newLeverage = BASIS_POINTS;
        } else {
            newLeverage = ((currentBalance * BASIS_POINTS) / underlying);
        }

        if (newLeverage > oldLeverage) {
            revert OverLeveraged();
        }

        if (newLeverage < leverageConfig.min) {
            revert UnderLeveraged();
        }

        action = _data.data.action;

        GMRouter.createWithdrawal{value: msg.value}(
            _data.data.amount, thisAddress, _usdAUM, abi.encode(_data.data), _data.signature
        );

        emit LeverageDown(stableDebt, oldLeverage, newLeverage);
    }

    /* -------------------------------------------------------------------------- */
    /*                                  PRIVATE                                   */
    /* -------------------------------------------------------------------------- */

    function _repayStable(uint256 _amount) internal returns (uint256) {
        uint256 amountToRepay = _amount > stableDebt ? stableDebt : _amount;

        stableVault.payBack(amountToRepay, 0);

        uint256 updatedAmount = stableDebt - amountToRepay;

        stableDebt = updatedAmount;

        return updatedAmount;
    }

    function _setLeverageConfig(LeverageConfig memory _config) private {
        if (
            _config.min >= _config.max || _config.min >= _config.target || _config.max <= _config.target
                || _config.min < BASIS_POINTS
        ) {
            revert InvalidLeverageConfig();
        }

        leverageConfig = _config;
    }
}
