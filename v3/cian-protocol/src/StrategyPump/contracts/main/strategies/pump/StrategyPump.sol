// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@pendle/core-v2/contracts/interfaces/IPPYLpOracle.sol";
import "@pendle/core-v2/contracts/interfaces/IPActionAddRemoveLiqV3.sol";
import "@pendle/core-v2/contracts/interfaces/IPActionMarketAuxStatic.sol";
import "@pendle/core-v2/contracts/interfaces/IPActionInfoStatic.sol";
import "@pendle/core-v2/contracts/interfaces/IPActionMiscV3.sol";
import "@pendle/core-v2/contracts/interfaces/IPActionSwapYTV3.sol";
import "../../../interfaces/pumpbtc/IPumpStaking.sol";
import "../../../interfaces/equilibria/IEqbZap.sol";
import "../../../interfaces/equilibria/IPendleBoosterMainchain.sol";
import "../../../interfaces/equilibria/IBaseRewardPoolV2.sol";
import "../../common/Constants.sol";
import "../../libraries/BtcConstants.sol";
import "../base/StrategyBase.sol";

/**
 * @title StrategyPump contract
 * @author Naturelab
 * @dev This contract is the actual address of the strategy pool, which
 * manages some assets in Pendle.
 */
contract StrategyPump is StrategyBase {
    using SafeERC20 for IERC20;

    // The version of the contract
    string public constant VERSION = "2.0";

    address public constant WBTC_PUMP_POOL = 0x1fCca65fb6Ae3b2758b9b2B394CB227eAE404e1E;

    address public constant FBTC_PUMP_POOL = 0x3d9bCcA8Bc7D438a4c5171435f41a0AF5d5E6083;

    address internal constant PENDLE_ROUTER = 0x888888888889758F76e7103c6CbF23ABbF58F946;

    address internal constant Pendle_Oracle = 0x9a9Fa8338dd5E5B2188006f1Cd2Ef26d921650C2;

    address internal constant PENDLE_LPT = 0xf8208fB52BA80075aF09840A683143C22DC5B4dd;

    address internal constant PENDLE = 0x808507121B80c02388fAd14726482e061B8da827;

    address internal constant PENDLE_ROUTER_STATIC = 0x263833d47eA3fA4a30f269323aba6a107f9eB14C;

    address internal constant PENDLE_YT = 0xABb4F186F67c6517A9caFc54a5B93cFF2Aa4c5Eb;

    // eqb

    address internal constant EQB = 0xfE80D611c6403f70e5B1b9B722D2B3510B740B2B;

    address internal constant XEQB = 0xd6eCfD0d5f1Dfd3ad30f267a3a29b3E1bC4fd54f;

    address internal constant EQB_PENDLE_LP = 0x2B3Ac30844B62a550dB8ef23CCCe6501a0bE4335;

    address internal constant EQB_DEPOSIT = 0x4D32C8Ff2fACC771eC7Efc70d6A8468bC30C26bF;

    address internal constant EQB_POOL = 0x64A0a11543dD212DC5245cB6094d94820c62B55F;

    address internal constant EQB_ZAP = 0x4f1cDF43f5E407abD569878976960d4d0A3d3452;

    uint256 internal constant EQB_PID = 111;

    function onTransferIn(address _token, uint256 _amount) external override onlyVault returns (bool) {
        if (_token != BtcConstants.FBTC && _token != BtcConstants.WBTC && _token != BtcConstants.PumpBTC) {
            revert CustomErrors.UnsupportedToken();
        }
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
        emit OnTransferIn(_token, _amount);
        return true;
    }

    function convertToken(address _fromToken, address _toToken, uint256 _amount) external onlyRebalancer {
        if (_fromToken == BtcConstants.WBTC) {
            IERC20(BtcConstants.WBTC).safeIncreaseAllowance(WBTC_PUMP_POOL, _amount);
            IPumpStaking(WBTC_PUMP_POOL).stake(_amount);
        } else if (_fromToken == BtcConstants.FBTC) {
            IERC20(BtcConstants.FBTC).safeIncreaseAllowance(FBTC_PUMP_POOL, _amount);
            IPumpStaking(FBTC_PUMP_POOL).stake(_amount);
        } else if (_fromToken == BtcConstants.PumpBTC) {
            if (_toToken != BtcConstants.WBTC) revert CustomErrors.UnSupportedOperation();
            IPumpStaking(WBTC_PUMP_POOL).unstakeRequest(_amount);
        } else {
            revert CustomErrors.UnSupportedOperation();
        }
    }

    function enterPendle(uint256 _amount, bytes calldata _routerData) external onlyRebalancer {
        bytes4 selector_ = bytes4(_routerData[:4]);
        if (selector_ != IPActionAddRemoveLiqV3.addLiquiditySingleTokenKeepYt.selector) {
            revert CustomErrors.UnSupportedOperation();
        }
        IERC20(BtcConstants.PumpBTC).safeIncreaseAllowance(PENDLE_ROUTER, _amount);
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

    function getProtocolNetAssets() public view returns (uint256) {
        uint256 lpAmount_ = IERC20(PENDLE_LPT).balanceOf(address(this));
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

    function getUserMarketInfo() public returns (IPActionInfoStatic.UserMarketInfo memory) {
        return IPActionInfoStatic(PENDLE_ROUTER_STATIC).getUserMarketInfo(PENDLE_LPT, address(this));
    }

    function claim(address _receiver) public onlyRebalancer {
        address[] memory sys_ = new address[](0);
        address[] memory yts_ = new address[](0);
        address[] memory markets_ = new address[](1);
        markets_[0] = PENDLE_LPT;
        IPActionMiscV3(PENDLE_ROUTER).redeemDueInterestAndRewards(address(this), sys_, yts_, markets_);
        uint256 pendleBal_ = IERC20(PENDLE).balanceOf(address(this));
        IERC20(PENDLE).safeTransfer(_receiver, pendleBal_);
    }

    function claimAll() external onlyRebalancer {
        IPumpStaking(WBTC_PUMP_POOL).claimAll();
        // IPumpStaking(FBTC_PUMP_POOL).claimAll();
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

    function getUnstakingAmount() public view returns (uint256 amount_) {
        for (uint8 i; i < IPumpStaking(WBTC_PUMP_POOL).MAX_DATE_SLOT(); ++i) {
            amount_ += IPumpStaking(WBTC_PUMP_POOL).pendingUnstakeAmount(address(this), i);
        }
        for (uint8 i; i < IPumpStaking(FBTC_PUMP_POOL).MAX_DATE_SLOT(); ++i) {
            amount_ += IPumpStaking(FBTC_PUMP_POOL).pendingUnstakeAmount(address(this), i);
        }
    }

    function getNetAssets() public view returns (uint256) {
        return getProtocolNetAssets() + IERC20(BtcConstants.FBTC).balanceOf(address(this))
            + IERC20(BtcConstants.WBTC).balanceOf(address(this)) + IERC20(BtcConstants.PumpBTC).balanceOf(address(this))
            + getUnstakingAmount();
    }
}
