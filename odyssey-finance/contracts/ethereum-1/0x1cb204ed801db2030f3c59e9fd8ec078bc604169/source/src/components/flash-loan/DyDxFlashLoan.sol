// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC3156FlashLender} from "@openzeppelin/contracts/interfaces/IERC3156FlashLender.sol";
import {IERC3156FlashBorrower} from "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ERC3156Lib} from "src/libraries/ERC3156Lib.sol";
import {ISoloMargin, Account, Actions, Types} from "src/interfaces/external/IDyDx.sol";

/// @title The DyDx flash-loan implementation
/// @dev This contract is called by the `FlashLoanExecutor`
contract DyDxFlashLoan is IERC3156FlashLender {
    using SafeERC20 for IERC20;

    ISoloMargin private constant SOLO = ISoloMargin(0x1E0447b19BB6EcFdAe1e4AE1694b0C3659614e4e);
    uint256 private constant DYDX_ROUNDING_WEI_FEE = 2;

    error InvalidSender();
    error InvalidInitiator();
    error CallbackFailed();
    error TokenNotSupported();

    function maxFlashLoan(address token_) external view returns (uint256) {
        uint256 _dyDxMarketId = _getMarketIdFromTokenAddress(token_);

        if (_dyDxMarketId == type(uint256).max) {
            return 0;
        }

        return IERC20(token_).balanceOf(address(SOLO));
    }

    /// @inheritdoc IERC3156FlashLender
    function flashFee(address token_, uint256 /*amount_*/) external view returns (uint256) {
        if (_getMarketIdFromTokenAddress(token_) == type(uint256).max) revert TokenNotSupported();

        return DYDX_ROUNDING_WEI_FEE;
    }

    /// @inheritdoc IERC3156FlashLender
    function flashLoan(
        IERC3156FlashBorrower /*receiver_*/,
        address token_,
        uint256 amount_,
        bytes memory data_
    ) external returns (bool _success) {
        // Check if token is supported
        uint256 _dyDxMarketId = _getMarketIdFromTokenAddress(token_);

        if (_dyDxMarketId == type(uint256).max) {
            return false;
        }

        if (IERC20(token_).balanceOf(address(SOLO)) < amount_) {
            return false;
        }

        bytes memory _data = abi.encode(data_, token_, amount_);

        Actions.ActionArgs[] memory _operations = new Actions.ActionArgs[](3);
        _operations[0] = _getWithdrawAction(_dyDxMarketId, amount_);
        _operations[1] = _getCallAction(_data);
        _operations[2] = _getDepositAction(_dyDxMarketId, amount_ + DYDX_ROUNDING_WEI_FEE);

        Account.Info[] memory _accountInfos = new Account.Info[](1);
        _accountInfos[0] = _getAccountInfo();

        SOLO.operate(_accountInfos, _operations);

        return true;
    }

    /// @dev DyDx's flash loan callback function
    function callFunction(address initiator_, Account.Info memory /* account_ */, bytes memory data_) external {
        if (msg.sender != address(SOLO)) revert InvalidSender();
        if (initiator_ != address(this)) revert InvalidInitiator();

        (bytes memory _data, IERC20 _borrowToken, uint256 _amount) = abi.decode(data_, (bytes, IERC20, uint256));

        if (
            IERC3156FlashBorrower(address(this)).onFlashLoan(
                initiator_,
                address(_borrowToken),
                _amount,
                DYDX_ROUNDING_WEI_FEE,
                _data
            ) != ERC3156Lib.CALLBACK_SUCCESS
        ) revert CallbackFailed();

        _borrowToken.forceApprove(address(SOLO), 0);
        _borrowToken.forceApprove(address(SOLO), _amount + DYDX_ROUNDING_WEI_FEE);
    }

    function _getAccountInfo() private view returns (Account.Info memory) {
        return Account.Info({owner: address(this), number: 1});
    }

    function _getMarketIdFromTokenAddress(address token_) private view returns (uint256) {
        uint256 _length = SOLO.getNumMarkets();

        for (uint256 i; i < _length; i++) {
            if (SOLO.getMarketTokenAddress(i) == token_) {
                return i;
            }
        }

        return type(uint256).max;
    }

    function _getWithdrawAction(uint256 marketId_, uint256 amount_) private view returns (Actions.ActionArgs memory) {
        return
            Actions.ActionArgs({
                actionType: Actions.ActionType.Withdraw,
                accountId: 0,
                amount: Types.AssetAmount({
                    sign: false,
                    denomination: Types.AssetDenomination.Wei,
                    ref: Types.AssetReference.Delta,
                    value: amount_
                }),
                primaryMarketId: marketId_,
                secondaryMarketId: 0,
                otherAddress: address(this),
                otherAccountId: 0,
                data: ""
            });
    }

    function _getCallAction(bytes memory data_) private view returns (Actions.ActionArgs memory) {
        return
            Actions.ActionArgs({
                actionType: Actions.ActionType.Call,
                accountId: 0,
                amount: Types.AssetAmount({
                    sign: false,
                    denomination: Types.AssetDenomination.Wei,
                    ref: Types.AssetReference.Delta,
                    value: 0
                }),
                primaryMarketId: 0,
                secondaryMarketId: 0,
                otherAddress: address(this),
                otherAccountId: 0,
                data: data_
            });
    }

    function _getDepositAction(uint256 marketId_, uint256 amount_) private view returns (Actions.ActionArgs memory) {
        return
            Actions.ActionArgs({
                actionType: Actions.ActionType.Deposit,
                accountId: 0,
                amount: Types.AssetAmount({
                    sign: true,
                    denomination: Types.AssetDenomination.Wei,
                    ref: Types.AssetReference.Delta,
                    value: amount_
                }),
                primaryMarketId: marketId_,
                secondaryMarketId: 0,
                otherAddress: address(this),
                otherAccountId: 0,
                data: ""
            });
    }
}
