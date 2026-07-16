// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@pendle/core-v2/contracts/interfaces/IPPYLpOracle.sol";
import "@pendle/core-v2/contracts/interfaces/IPActionAddRemoveLiqV3.sol";
import "@pendle/core-v2/contracts/interfaces/IPActionMarketAuxStatic.sol";
import "@pendle/core-v2/contracts/interfaces/IPActionInfoStatic.sol";
import "@pendle/core-v2/contracts/interfaces/IPActionMiscV3.sol";
import "@pendle/core-v2/contracts/interfaces/IPActionSwapYTV3.sol";
import "../../../interfaces/solv/ISolvBTCRouter.sol";
import "../../../interfaces/solv/IOpenFundRedemption.sol";
import "../../../interfaces/solv/ISolvBTCYieldToken.sol";
import "../../../interfaces/equilibria/IEqbZap.sol";
import "../../../interfaces/equilibria/IPendleBoosterMainchain.sol";
import "../../../interfaces/equilibria/IBaseRewardPoolV2.sol";
import "../../libraries/BtcConstants.sol";
import "../base/StrategyBase.sol";

/**
 * @title StrategySolv contract
 * @author Naturelab
 * @dev This contract is the actual address of the strategy pool, which
 * manages some assets in Solv.
 */
contract StrategySolv is StrategyBase {
    using SafeERC20 for IERC20;

    // The version of the contract
    string public constant VERSION = "2.1";

    // SOLVBTC

    address internal constant SOLVBTC_ROUTER = 0x1fF7d7C0A7D8E94046708C611DeC5056A9d2B823;

    address internal constant SOLVBTCBBN_ROUTER = 0x01024AaeD5561fa6237C0ad4073417576C591261;

    bytes32 internal constant SOLVBTC_WBTC_POOL_ID = 0x716db7dc196abe78d5349c7166896f674ab978af26ada3e5b3ea74c5a1b48307;

    bytes32 internal constant SOLVBTC_FBTC_POOL_ID = 0x2dc130e46b5958208155546bd4049d5b3319798063a8c4180b4b2b82f3ebdc3d;

    bytes32 internal constant SOLVBTC_CBBTC_POOL_ID = 0xdc0937dd33c4af08a08724da23bc45b33b43fbb23f365e7b50a536ce45f447ef;

    // SOLVBTC.BBN

    bytes32 internal constant SOLVBTCBBN_POOL_ID = 0xefcca1eb946cdc7b56509489a56b45b75aff74b8bb84dad5b893012157e0df93;

    address internal constant SOLVBTC_GOEFR = 0x1D0Db695F3033875d1b6A0155c38B3EE2AEd3082;

    // PENDLE

    address internal constant PENDLE_ROUTER = 0x888888888889758F76e7103c6CbF23ABbF58F946;

    address internal constant PENDLE_ROUTER_STATIC = 0x263833d47eA3fA4a30f269323aba6a107f9eB14C;

    address internal constant Pendle_Oracle = 0x9a9Fa8338dd5E5B2188006f1Cd2Ef26d921650C2;

    address internal constant PENDLE = 0x808507121B80c02388fAd14726482e061B8da827;

    address internal constant PENDLE_LPT = 0x3Fd13BaD9Fc47E001Bf9088Afd1A1b2fc24673d5;

    address internal constant PENDLE_YT = 0xdC3740c3C71F28285EA4cE6b74843D448a488379;

    // eqb

    address internal constant EQB = 0xfE80D611c6403f70e5B1b9B722D2B3510B740B2B;

    address internal constant XEQB = 0xd6eCfD0d5f1Dfd3ad30f267a3a29b3E1bC4fd54f;

    address internal constant EQB_PENDLE_LP = 0x25984597149bF95a44CB2c211FC8d4c6392A0698;

    address internal constant EQB_DEPOSIT = 0x4D32C8Ff2fACC771eC7Efc70d6A8468bC30C26bF;

    address internal constant EQB_POOL = 0x4EE9285DcC1Aa31592966eE8a5d432835aeE9d4B;

    address internal constant EQB_ZAP = 0x4f1cDF43f5E407abD569878976960d4d0A3d3452;

    uint256 internal constant EQB_PID = 139;

    uint256 public redemptionId;

    function onTransferIn(address _token, uint256 _amount) external override onlyVault returns (bool) {
        if (
            _token != BtcConstants.FBTC && _token != BtcConstants.CBBTC && _token != BtcConstants.WBTC
                && _token != BtcConstants.SOLVBTC
        ) {
            revert CustomErrors.UnsupportedToken();
        }
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
        emit OnTransferIn(_token, _amount);
        return true;
    }

    function convertToken(address _fromToken, address _toToken, uint256 _amount) external onlyRebalancer {
        if (_fromToken == BtcConstants.WBTC) {
            IERC20(BtcConstants.WBTC).safeIncreaseAllowance(SOLVBTC_ROUTER, _amount);
            ISolvBTCRouter(SOLVBTC_ROUTER).createSubscription(SOLVBTC_WBTC_POOL_ID, _amount);
        } else if (_fromToken == BtcConstants.FBTC) {
            IERC20(BtcConstants.FBTC).safeIncreaseAllowance(SOLVBTC_ROUTER, _amount);
            ISolvBTCRouter(SOLVBTC_ROUTER).createSubscription(SOLVBTC_FBTC_POOL_ID, _amount);
        } else if (_fromToken == BtcConstants.CBBTC) {
            IERC20(BtcConstants.CBBTC).safeIncreaseAllowance(SOLVBTC_ROUTER, _amount);
            ISolvBTCRouter(SOLVBTC_ROUTER).createSubscription(SOLVBTC_CBBTC_POOL_ID, _amount);
        } else if (_fromToken == BtcConstants.SOLVBTC) {
            if (_toToken == BtcConstants.SOLVBTCBBN) {
                IERC20(BtcConstants.SOLVBTC).safeIncreaseAllowance(SOLVBTCBBN_ROUTER, _amount);
                ISolvBTCRouter(SOLVBTCBBN_ROUTER).createSubscription(SOLVBTCBBN_POOL_ID, _amount);
            } else if (_toToken == BtcConstants.WBTC) {
                IERC20(BtcConstants.SOLVBTC).safeIncreaseAllowance(SOLVBTC_ROUTER, _amount);
                if (redemptionId != 0) revert CustomErrors.UnSupportedOperation();
                redemptionId = ISolvBTCRouter(SOLVBTC_ROUTER).createRedemption(SOLVBTC_WBTC_POOL_ID, _amount);
            } else if (_toToken == BtcConstants.FBTC) {
                IERC20(BtcConstants.SOLVBTC).safeIncreaseAllowance(SOLVBTC_ROUTER, _amount);
                if (redemptionId != 0) revert CustomErrors.UnSupportedOperation();
                redemptionId = ISolvBTCRouter(SOLVBTC_ROUTER).createRedemption(SOLVBTC_FBTC_POOL_ID, _amount);
            } else if (_toToken == BtcConstants.CBBTC) {
                IERC20(BtcConstants.SOLVBTC).safeIncreaseAllowance(SOLVBTC_ROUTER, _amount);
                if (redemptionId != 0) revert CustomErrors.UnSupportedOperation();
                redemptionId = ISolvBTCRouter(SOLVBTC_ROUTER).createRedemption(SOLVBTC_CBBTC_POOL_ID, _amount);
            } else {
                revert CustomErrors.UnSupportedOperation();
            }
        } else {
            revert CustomErrors.UnSupportedOperation();
        }
    }

    function enterPendle(uint256 _amount, bytes calldata _routerData) external onlyRebalancer {
        bytes4 selector_ = bytes4(_routerData[:4]);
        if (selector_ != IPActionAddRemoveLiqV3.addLiquiditySingleTokenKeepYt.selector) {
            revert CustomErrors.UnSupportedOperation();
        }
        IERC20(BtcConstants.SOLVBTCBBN).safeIncreaseAllowance(PENDLE_ROUTER, _amount);
        Address.functionCall(PENDLE_ROUTER, _routerData);
    }

    function exitPendle(uint256 _amount, bytes calldata _routerData) external onlyRebalancer {
        bytes4 selector_ = bytes4(_routerData[:4]);
        if (selector_ != IPActionAddRemoveLiqV3.removeLiquiditySingleToken.selector) {
            revert CustomErrors.UnSupportedOperation();
        }
        IERC20(PENDLE_LPT).safeIncreaseAllowance(PENDLE_ROUTER, _amount);
        Address.functionCall(PENDLE_ROUTER, _routerData);
    }

    function enterEqb(uint256 _amount) external onlyRebalancer {
        IERC20(PENDLE_LPT).safeIncreaseAllowance(EQB_DEPOSIT, _amount);
        IPendleBoosterMainchain(EQB_DEPOSIT).deposit(EQB_PID, _amount, true);
    }

    function exitEqb(uint256 _amount) external onlyRebalancer {
        IERC20(EQB_PENDLE_LP).safeIncreaseAllowance(EQB_ZAP, _amount);
        IPendleBoosterMainchain(EQB_ZAP).withdraw(EQB_PID, _amount);
    }

    function swapYtToToken(uint256 _amount, bytes calldata _routerData) external onlyRebalancer {
        bytes4 selector_ = bytes4(_routerData[:4]);
        if (selector_ != IPActionSwapYTV3.swapExactYtForToken.selector) {
            revert CustomErrors.UnSupportedOperation();
        }
        IERC20(PENDLE_YT).safeIncreaseAllowance(PENDLE_ROUTER, _amount);
        Address.functionCall(PENDLE_ROUTER, _routerData);
    }

    function getUserMarketInfo() public returns (IPActionInfoStatic.UserMarketInfo memory) {
        return IPActionInfoStatic(PENDLE_ROUTER_STATIC).getUserMarketInfo(PENDLE_LPT, address(this));
    }

    //pendle claim
    function claim(address _receiver) public onlyRebalancer {
        address[] memory sys_ = new address[](0);
        address[] memory yts_ = new address[](0);
        address[] memory markets_ = new address[](1);
        markets_[0] = PENDLE_LPT;
        IPActionMiscV3(PENDLE_ROUTER).redeemDueInterestAndRewards(address(this), sys_, yts_, markets_);
        uint256 pendleBal_ = IERC20(PENDLE).balanceOf(address(this));
        IERC20(PENDLE).safeTransfer(_receiver, pendleBal_);
    }

    //solv claim
    function claimAll() external onlyRebalancer {
        if (redemptionId == 0) revert CustomErrors.UnSupportedOperation();
        uint256 claimValue_ = IOpenFundRedemption(SOLVBTC_GOEFR).balanceOf(redemptionId);
        IOpenFundRedemption(SOLVBTC_GOEFR).claimTo(address(this), redemptionId, BtcConstants.SOLVBTC, claimValue_);
        redemptionId = 0;
    }

    function sendToken(address _token, address _receiver) internal {
        uint256 amount_ = IERC20(_token).balanceOf(address(this));
        IERC20(_token).safeTransfer(_receiver, amount_);
    }

    function claimEqb(address _receiver) public onlyRebalancer {
        uint256[] memory pids_ = new uint256[](1);
        pids_[0] = EQB_PID;
        IEqbZap(EQB_ZAP).claimRewards(pids_);
        sendToken(EQB, _receiver);
        sendToken(PENDLE, _receiver);
    }

    function sendXEQB(address _receiver) public onlyRebalancer {
        sendToken(XEQB, _receiver);
    }

    //solv unstake
    function getUnstakingAmount() public view returns (uint256) {
        if (redemptionId == 0) return 0;
        return IOpenFundRedemption(SOLVBTC_GOEFR).balanceOf(redemptionId);
    }

    function getProtocolNetAssets() public view returns (uint256) {
        uint256 lpAmount_ =
            IERC20(PENDLE_LPT).balanceOf(address(this)) + IBaseRewardPoolV2(EQB_POOL).balanceOf(address(this));
        uint256 ytAmount_ = IERC20(PENDLE_YT).balanceOf(address(this));

        uint256 ytToAsset_;
        if (ytAmount_ != 0) {
            uint256 ytRate_ = IPActionMarketAuxStatic(PENDLE_ROUTER_STATIC).getYtToAssetRate(PENDLE_LPT);
            ytToAsset_ = ytAmount_ * ytRate_;
        }

        uint256 lpToAsset_;
        if (lpAmount_ != 0) {
            uint256 lpRate_ = IPActionMarketAuxStatic(PENDLE_ROUTER_STATIC).getLpToAssetRate(PENDLE_LPT);
            lpToAsset_ = lpAmount_ * lpRate_;
        }

        return (ytToAsset_ + lpToAsset_) / 1 ether;
    }

    function getNetAssets() public view returns (uint256) {
        uint256 solvBTCBBNBal_ = IERC20(BtcConstants.SOLVBTCBBN).balanceOf(address(this));
        uint256 solvProtocol_ = getUnstakingAmount() + IERC20(BtcConstants.SOLVBTC).balanceOf(address(this))
            + ISolvBTCYieldToken(BtcConstants.SOLVBTCBBN).getValueByShares(solvBTCBBNBal_);
        return getProtocolNetAssets() + solvProtocol_ / 1e10 + IERC20(BtcConstants.FBTC).balanceOf(address(this))
            + IERC20(BtcConstants.WBTC).balanceOf(address(this)) + IERC20(BtcConstants.CBBTC).balanceOf(address(this));
    }
}
