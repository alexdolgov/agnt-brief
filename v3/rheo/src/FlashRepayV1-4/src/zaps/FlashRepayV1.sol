// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ISize} from "@size/src/market/interfaces/ISize.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {DepositParams} from "@size/src/market/libraries/actions/Deposit.sol";
import {Errors} from "@size/src/market/libraries/Errors.sol";

import {DataView} from "@size/src/market/SizeViewData.sol";
import {MorphoFlashLoanReceiverBaseUpgradeable} from "src/utils/MorphoFlashLoanReceiverBaseUpgradeable.sol";
import {MulticallUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/MulticallUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IFlashRepayFactory} from "src/zaps/IFlashRepayFactory.sol";
import {DebtPosition} from "@size/src/market/libraries/LoanLibrary.sol";
import {RepayParams} from "@size/src/market/libraries/actions/Repay.sol";
import {WithdrawOnBehalfOfParams, WithdrawParams} from "@size/src/market/libraries/actions/Withdraw.sol";
import {Math, PERCENT} from "@size/src/market/libraries/Math.sol";
import {Math as MathUtils} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IPriceFeed} from "@size/src/oracle/IPriceFeed.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {PeripheryErrors} from "src/libraries/PeripheryErrors.sol";

string constant FLASH_REPAY_VERSION = "v1.1";

struct RepayWithCollateralParams {
    ISize market;
    uint256 debtPositionId;
    address swapTarget;
    bytes swapData;
    uint256 minAmountOut;
}

/// @title FlashRepayV1
/// @custom:security-contact security@size.credit
/// @author Size (https://size.credit/)
/// @notice A contract that allows users to loop using flash loans
contract FlashRepayV1 is
    MulticallUpgradeable,
    MorphoFlashLoanReceiverBaseUpgradeable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;
    using SafeERC20 for IERC20Metadata;

    // STORAGE
    /// @custom:storage-location erc7201:size.storage.FlashRepay
    struct FlashRepayStorage {
        IFlashRepayFactory _flashRepayFactory;
    }

    // keccak256(abi.encode(uint256(keccak256("size.storage.FlashRepay")) - 1)) & ~bytes32(uint256(0xff));
    // forge-lint: disable-next-line(screaming-snake-case-const)
    bytes32 private constant FlashRepayStorageLocation =
        0x934d637bd9f2a47553c5c598134dd97bfee56dd0b6bcd46cf3c09789c669c900;

    function _getFlashRepayStorage() private pure returns (FlashRepayStorage storage $) {
        assembly {
            $.slot := FlashRepayStorageLocation
        }
    }

    struct OperationParams {
        ISize market;
        uint256 debtPositionId;
        uint256 futureValue;
        address swapTarget;
        bytes swapData;
        uint256 minAmountOut;
    }

    // CONSTRUCTOR/INITIALIZER
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(IFlashRepayFactory _flashRepayFactory, address _owner) public initializer {
        if (address(_flashRepayFactory) == address(0)) {
            revert Errors.NULL_ADDRESS();
        }

        FlashRepayStorage storage $ = _getFlashRepayStorage();
        $._flashRepayFactory = _flashRepayFactory;

        __Multicall_init();
        __MorphoFlashLoanReceiverBase_init(address(_flashRepayFactory.morpho()));
        __Ownable_init(_owner);
    }

    modifier factoryNotPaused() {
        if (PausableUpgradeable(address(flashRepayFactory())).paused()) {
            revert PausableUpgradeable.EnforcedPause();
        }
        _;
    }

    /// @dev Users must first `setAuthorization` with `WITHDRAW` to this contract
    function repayWithCollateral(RepayWithCollateralParams memory repayWithCollateralParams)
        external
        nonReentrant
        onlyOwner
        factoryNotPaused
    {
        if (!flashRepayFactory().sizeFactory().isMarket(address(repayWithCollateralParams.market))) {
            revert Errors.INVALID_MARKET(address(repayWithCollateralParams.market));
        }
        if (repayWithCollateralParams.swapTarget == address(0)) {
            revert Errors.NULL_ADDRESS();
        }

        DebtPosition memory debtPosition =
            repayWithCollateralParams.market.getDebtPosition(repayWithCollateralParams.debtPositionId);
        DataView memory data = repayWithCollateralParams.market.data();

        OperationParams memory operationParams = OperationParams({
            market: repayWithCollateralParams.market,
            debtPositionId: repayWithCollateralParams.debtPositionId,
            futureValue: debtPosition.futureValue,
            swapTarget: repayWithCollateralParams.swapTarget,
            swapData: repayWithCollateralParams.swapData,
            minAmountOut: repayWithCollateralParams.minAmountOut
        });

        _flashLoan(address(data.underlyingBorrowToken), debtPosition.futureValue, abi.encode(operationParams));

        uint256 remainingCollateralTokenBalance = data.underlyingCollateralToken.balanceOf(address(this));
        if (remainingCollateralTokenBalance > 0) {
            data.underlyingCollateralToken.forceApprove(
                address(repayWithCollateralParams.market), remainingCollateralTokenBalance
            );
            repayWithCollateralParams.market.deposit(
                DepositParams({
                    token: address(data.underlyingCollateralToken),
                    amount: remainingCollateralTokenBalance,
                    to: owner()
                })
            );
        }
        uint256 remainingBorrowTokenBalance = data.underlyingBorrowToken.balanceOf(address(this));
        if (remainingBorrowTokenBalance > 0) {
            data.underlyingBorrowToken.forceApprove(
                address(repayWithCollateralParams.market), remainingBorrowTokenBalance
            );
            repayWithCollateralParams.market.deposit(
                DepositParams({
                    token: address(data.underlyingBorrowToken),
                    amount: remainingBorrowTokenBalance,
                    to: owner()
                })
            );
        }
    }

    function rescueTokens(address token, address to) external onlyOwner factoryNotPaused {
        uint256 amount = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransfer(to, amount);
    }

    function _flashLoanCallback(address, uint256, bytes memory params) internal override {
        OperationParams memory operationParams = abi.decode(params, (OperationParams));

        DataView memory data = operationParams.market.data();
        IERC20Metadata(data.underlyingBorrowToken).forceApprove(
            address(operationParams.market), operationParams.futureValue
        );
        operationParams.market.deposit(
            DepositParams({
                token: address(data.underlyingBorrowToken),
                amount: operationParams.futureValue,
                to: address(this)
            })
        );
        operationParams.market.repay(RepayParams({debtPositionId: operationParams.debtPositionId, borrower: owner()}));
        uint256 collateralAmount = flashRepayFactory().withdrawableCollateralAmount(operationParams.market, owner());
        operationParams.market.withdrawOnBehalfOf(
            WithdrawOnBehalfOfParams({
                params: WithdrawParams({
                    token: address(data.underlyingCollateralToken),
                    amount: collateralAmount,
                    to: address(this)
                }),
                onBehalfOf: owner()
            })
        );

        // Swap collateral token -> borrow token
        data.underlyingCollateralToken.forceApprove(operationParams.swapTarget, collateralAmount);
        Address.functionCall(operationParams.swapTarget, operationParams.swapData);
        data.underlyingCollateralToken.forceApprove(operationParams.swapTarget, 0);

        // Slippage check
        uint256 amountOut = data.underlyingBorrowToken.balanceOf(address(this));
        if (amountOut < operationParams.minAmountOut) {
            revert PeripheryErrors.AMOUNT_OUT_TOO_LOW(amountOut, operationParams.minAmountOut);
        }
    }

    function version() external pure returns (string memory) {
        return FLASH_REPAY_VERSION;
    }

    function flashRepayFactory() public view returns (IFlashRepayFactory) {
        return _getFlashRepayStorage()._flashRepayFactory;
    }
}
