// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../interfaces/IPActionCallbackV3.sol";
import "../libraries/Errors.sol";
import "./base/CallbackHelper.sol";

import "../libraries/TokenHelper.sol";

/// @title ActionCallbackV3
/// @notice Router facet handling callbacks from Fira markets during flash-style swap operations
/// @dev Implements callback interfaces that markets call during complex swap operations.
///      These callbacks enable atomic operations where the router receives tokens first,
///      performs transformations (mint/redeem BC), then repays the market.
///
///      Callback types:
///      - SwapExactFwForCt: User provides FW, callback mints BT+CT to repay BT debt
///      - SwapCtForFw: User provides CT, callback redeems BT+CT to repay FW debt
///      - SwapExactCtForBt: Swap CT for BT via intermediate operations
///      - SwapExactBtForCt: Swap BT for CT via intermediate operations
///
///      Also handles limitRouterCallback for limit order fills (not used in current version).
contract ActionCallbackV3 is IPLimitOrderType, IPActionCallbackV3, CallbackHelper, TokenHelper {
    using PMath for int256;
    using PMath for uint256;
    using BCIndexLib for BCIndex;
    using BCIndexLib for IBCToken;

    /// @notice Callback from Fira market during swap operations
    /// @dev Routes to specific callback handler based on encoded action type
    /// @param btToAccount Net BT to/from the account (positive = receiving)
    /// @param fwToAccount Net FW to/from the account (positive = receiving)
    /// @param data Encoded callback data including action type and parameters
    function swapCallback(int256 btToAccount, int256 fwToAccount, bytes calldata data) external override {
        ActionType swapType = _getActionType(data);
        if (swapType == ActionType.SwapExactFwForCt) {
            _callbackSwapExactFwForCt(btToAccount, fwToAccount, data);
        } else if (swapType == ActionType.SwapCtForFw) {
            _callbackSwapCtForFw(btToAccount, fwToAccount, data);
        } else if (swapType == ActionType.SwapExactCtForBt) {
            _callbackSwapExactCtForBt(btToAccount, fwToAccount, data);
        } else if (swapType == ActionType.SwapExactBtForCt) {
            _callbackSwapExactBtForCt(btToAccount, fwToAccount, data);
        } else {
            assert(false);
        }
    }

    /// @notice Callback from limit router during order fills
    /// @dev Handles flash fills where router needs to mint/redeem BC to complete the order.
    ///      Not used in current version (orderbook disabled).
    /// @param actualMaking Amount maker is providing
    /// @param actualTaking Amount maker is taking
    /// @param totalFee Total fee charged
    /// @param data Encoded order data (orderType, CT, netRemaining, receiver)
    /// @return Encoded (netTransferToLimit, netOutputFromLimit)
    function limitRouterCallback(uint256 actualMaking, uint256 actualTaking, uint256 totalFee, bytes memory data)
        external
        returns (
            bytes memory // encode as netTransferToLimit, netOutputFromLimit
        )
    {
        bool isEmptyFill = (actualMaking == 0 && actualTaking == 0 && totalFee == 0);
        if (isEmptyFill) {
            return abi.encode(0, 0);
        }

        (OrderType orderType, IBCToken CT, uint256 netRemaining, address receiver) =
            abi.decode(data, (OrderType, IBCToken, uint256, address));

        if (orderType == OrderType.FW_FOR_BT || orderType == OrderType.FW_FOR_CT) {
            BCIndex index = CT.newIndex();
            uint256 totalFwToMintBc = index.assetToFwUp(actualTaking);
            uint256 additionalFwToMint = totalFwToMintBc - actualMaking;

            require(additionalFwToMint <= netRemaining, "Slippage: INSUFFICIENT_FW_LIMIT");

            _transferOut(CT.FW(), address(CT), additionalFwToMint);

            uint256 netBcToReceiver;
            if (orderType == OrderType.FW_FOR_BT) {
                netBcToReceiver = CT.mintBC(address(this), receiver);
                _safeApproveInf(CT.BT(), msg.sender);
            } else {
                netBcToReceiver = CT.mintBC(receiver, address(this));
                _safeApproveInf(address(CT), msg.sender);
            }

            return abi.encode(additionalFwToMint, netBcToReceiver);
        } else {
            require(actualMaking <= netRemaining, "Slippage: INSUFFICIENT_BC_LIMIT");

            if (orderType == OrderType.BT_FOR_FW) {
                _transferOut(address(CT), address(CT), actualMaking);
            } else {
                _transferOut(CT.BT(), address(CT), actualMaking);
            }

            uint256 netFwRedeemed = IBCToken(CT).redeemBC(address(this));

            require(actualTaking <= netFwRedeemed, "Slippage: INSUFFICIENT_BC_REDEEM");

            uint256 netFWToReceiver = netFwRedeemed - actualTaking;

            address FW = CT.FW();

            _transferOut(FW, receiver, netFWToReceiver);
            _safeApproveInf(FW, msg.sender);

            return abi.encode(actualMaking, netFWToReceiver);
        }
    }

    /// @dev Handles callback for swapping exact FW for CT
    ///      Mints BT+CT from the FW received to repay the BT debt to the market
    function _callbackSwapExactFwForCt(
        int256 btToAccount,
        int256,
        /* fwToAccount*/
        bytes calldata data
    )
        internal
    {
        (address receiver, IBCToken CT) = _decodeSwapExactFwForCt(data);

        uint256 btOwed = btToAccount.abs();
        uint256 netBcOut = CT.mintBC(msg.sender, receiver);

        if (netBcOut < btOwed) revert("Slippage: INSUFFICIENT_BT_REPAY");
    }

    /// @dev Handles callback for swapping CT for FW
    ///      Redeems BT+CT to get FW, sends FW debt to market, remainder to receiver
    function _callbackSwapCtForFw(int256 btToAccount, int256 fwToAccount, bytes calldata data) internal {
        (address receiver, IBCToken CT) = _decodeSwapCtForFw(data);
        BCIndex bcIndex = CT.newIndex();

        uint256 fwOwed = fwToAccount.neg().Uint();

        address[] memory receivers = new address[](2);
        uint256[] memory amountBcToRedeems = new uint256[](2);

        (receivers[0], amountBcToRedeems[0]) = (msg.sender, bcIndex.fwToAssetUp(fwOwed));
        (receivers[1], amountBcToRedeems[1]) = (receiver, btToAccount.Uint() - amountBcToRedeems[0]);

        CT.redeemBCMulti(receivers, amountBcToRedeems);
    }

    /// @dev Handles callback for swapping exact BT for CT
    ///      Mints BT+CT, uses BT to repay market, CT goes to receiver
    function _callbackSwapExactBtForCt(
        int256 btToAccount,
        int256,
        /* fwToAccount*/
        bytes calldata data
    )
        internal
    {
        (address receiver, uint256 exactBtIn, uint256 minCtOut, IBCToken CT) = _decodeSwapExactBtForCt(data);
        uint256 netBtOwed = btToAccount.abs();

        uint256 netBcOut = CT.mintBC(msg.sender, receiver);
        if (netBcOut < minCtOut) revert("Slippage: INSUFFICIENT_CT_OUT");
        if (exactBtIn + netBcOut < netBtOwed) revert("Slippage: INSUFFICIENT_BT_REPAY");
    }

    /// @dev Handles callback for swapping exact CT for BT
    ///      Redeems BT+CT to get FW to repay market, remaining BT to receiver
    function _callbackSwapExactCtForBt(int256 btToAccount, int256 fwToAccount, bytes calldata data) internal {
        (address receiver, uint256 netBtOut, IBondToken BT, IBCToken CT) = _decodeSwapExactCtForBt(data);

        uint256 netFwOwed = fwToAccount.abs();

        uint256 netBtRedeemFw = btToAccount.Uint() - netBtOut;
        _transferOut(address(BT), address(CT), netBtRedeemFw);

        uint256 netFwToMarket = CT.redeemBC(msg.sender);

        if (netFwToMarket < netFwOwed) revert("Slippage: INSUFFICIENT_FW_REPAY");

        _transferOut(address(BT), receiver, netBtOut);
    }
}
