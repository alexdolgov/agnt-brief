// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ISize} from "@size/src/market/interfaces/ISize.sol";
import {RepayParams} from "@size/src/market/libraries/actions/Repay.sol";
import {DebtPosition} from "@size/src/market/libraries/LoanLibrary.sol";
import {DataView} from "@size/src/market/SizeViewData.sol";
import {WithdrawOnBehalfOfParams, WithdrawParams} from "@size/src/market/libraries/actions/Withdraw.sol";
import {DepositParams} from "@size/src/market/libraries/actions/Deposit.sol";
import {PeripheryErrors} from "src/libraries/PeripheryErrors.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {Errors} from "@size/src/market/libraries/Errors.sol";
import {DexSwapUpgradeable, SwapParams} from "src/utils/DexSwapUpgradeable.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {DEFAULT_ADMIN_ROLE, KEEPER_ROLE} from "@size/src/factory/interfaces/ISizeFactory.sol";
import {MorphoFlashLoanReceiverBaseUpgradeable} from "src/utils/MorphoFlashLoanReceiverBaseUpgradeable.sol";
import {ISizeFactory} from "@size/src/factory/interfaces/ISizeFactory.sol";
import {ISafe} from "@size/script/interfaces/ISafe.sol";

contract AutoRepay is
    Initializable,
    AccessControlUpgradeable,
    MorphoFlashLoanReceiverBaseUpgradeable,
    DexSwapUpgradeable,
    UUPSUpgradeable
{
    using SafeERC20 for IERC20Metadata;

    // STORAGE
    /// @custom:storage-location erc7201:size.storage.AutoRepay
    struct AutoRepayStorage {
        uint256 _earlyRepaymentBuffer;
        ISizeFactory _sizeFactory;
    }

    // keccak256(abi.encode(uint256(keccak256("size.storage.AutoRepay")) - 1)) & ~bytes32(uint256(0xff));
    // forge-lint: disable-next-line(screaming-snake-case-const)
    bytes32 private constant AutoRepayStorageLocation =
        0x4e6fa129ffb7e52e39a2eea5f1052e41c3a4d74976e8754f74d594fb4c7c2f00;

    function _getAutoRepayStorage() private pure returns (AutoRepayStorage storage $) {
        assembly {
            $.slot := AutoRepayStorageLocation
        }
    }

    struct OperationParams {
        ISize market;
        uint256 debtPositionId;
        address onBehalfOf;
        uint256 collateralAmount;
        uint256 futureValue;
        SwapParams[] swapParams;
    }

    // EVENTS
    event EarlyRepaymentBufferUpdated(uint256 oldValue, uint256 newValue);

    // CONSTRUCTOR/INITIALIZER
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _admin,
        address _sizeFactory,
        address _morpho,
        address _uniswapV2Router,
        address _uniswapV3Router,
        address _pendleRouter,
        address _pendleMarketFactory,
        uint256 _earlyRepaymentBuffer
    ) public initializer {
        __AccessControl_init();
        __MorphoFlashLoanReceiverBase_init(_morpho);
        __DexSwapUpgradeable_init(_uniswapV2Router, _uniswapV3Router, _pendleRouter, _pendleMarketFactory);
        __UUPSUpgradeable_init();

        if (_earlyRepaymentBuffer == 0) {
            revert Errors.NULL_AMOUNT();
        }
        if (_sizeFactory == address(0)) {
            revert Errors.NULL_ADDRESS();
        }

        AutoRepayStorage storage $ = _getAutoRepayStorage();
        $._earlyRepaymentBuffer = _earlyRepaymentBuffer;
        emit EarlyRepaymentBufferUpdated(0, _earlyRepaymentBuffer);
        $._sizeFactory = ISizeFactory(_sizeFactory);

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(KEEPER_ROLE, _admin);
        (bool success, bytes memory data) = address(_admin).staticcall(abi.encodeWithSelector(ISafe.getOwners.selector));
        if (success) {
            address[] memory owners = abi.decode(data, (address[]));
            for (uint256 i = 0; i < owners.length; i++) {
                _grantRole(KEEPER_ROLE, owners[i]);
            }
        }
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function setEarlyRepaymentBuffer(uint256 _newBuffer) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_newBuffer == 0) {
            revert Errors.NULL_AMOUNT();
        }
        AutoRepayStorage storage $ = _getAutoRepayStorage();
        uint256 oldBuffer = $._earlyRepaymentBuffer;
        $._earlyRepaymentBuffer = _newBuffer;
        emit EarlyRepaymentBufferUpdated(oldBuffer, _newBuffer);
    }

    function repayWithCollateral(
        ISize market,
        uint256 debtPositionId,
        address onBehalfOf,
        uint256 collateralAmount,
        SwapParams[] calldata swapParams
    ) external onlyRole(KEEPER_ROLE) {
        if (!sizeFactory().isMarket(address(market))) {
            revert Errors.INVALID_MARKET(address(market));
        }

        DebtPosition memory debtPosition = market.getDebtPosition(debtPositionId);
        DataView memory data = market.data();

        if (debtPosition.dueDate > block.timestamp + earlyRepaymentBuffer()) {
            revert PeripheryErrors.AUTO_REPAY_TOO_EARLY(debtPosition.dueDate, block.timestamp);
        }
        if (collateralAmount == 0) {
            revert Errors.NULL_AMOUNT();
        }

        OperationParams memory operationParams = OperationParams({
            market: market,
            debtPositionId: debtPositionId,
            onBehalfOf: onBehalfOf,
            collateralAmount: collateralAmount,
            futureValue: debtPosition.futureValue,
            swapParams: swapParams
        });

        _flashLoan(address(data.underlyingBorrowToken), debtPosition.futureValue, abi.encode(operationParams));
        _handleLeftoverDebtTokens(operationParams);
    }

    function _flashLoanCallback(address, uint256, bytes memory params) internal override {
        OperationParams memory operationParams = abi.decode(params, (OperationParams));

        _handleDeposit(operationParams);
        _handleRepay(operationParams);
        _handleWithdraw(operationParams);
        _swap(operationParams.swapParams);
    }

    function _handleDeposit(OperationParams memory params) private {
        DataView memory data = params.market.data();
        IERC20Metadata(data.underlyingBorrowToken).forceApprove(address(params.market), params.futureValue);
        params.market.deposit(
            DepositParams({token: address(data.underlyingBorrowToken), amount: params.futureValue, to: address(this)})
        );
    }

    function _handleRepay(OperationParams memory params) private {
        params.market.repay(RepayParams({debtPositionId: params.debtPositionId, borrower: params.onBehalfOf}));
    }

    function _handleWithdraw(OperationParams memory params) private {
        DataView memory data = params.market.data();
        params.market.withdrawOnBehalfOf(
            WithdrawOnBehalfOfParams({
                params: WithdrawParams({
                    token: address(data.underlyingCollateralToken),
                    amount: params.collateralAmount,
                    to: address(this)
                }),
                onBehalfOf: params.onBehalfOf
            })
        );
    }

    function _handleLeftoverDebtTokens(OperationParams memory params) private {
        DataView memory data = params.market.data();
        uint256 balance = data.underlyingBorrowToken.balanceOf(address(this));

        if (balance > 0) {
            data.underlyingBorrowToken.forceApprove(address(params.market), balance);
            params.market.deposit(
                DepositParams({token: address(data.underlyingBorrowToken), amount: balance, to: params.onBehalfOf})
            );
        }
    }

    // VIEW
    function earlyRepaymentBuffer() public view returns (uint256) {
        return _getAutoRepayStorage()._earlyRepaymentBuffer;
    }

    function sizeFactory() public view returns (ISizeFactory) {
        return _getAutoRepayStorage()._sizeFactory;
    }
}
