// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import {IERC1271} from "@openzeppelin/contracts/interfaces/IERC1271.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ERC1271_MAGICVALUE} from "kernel/types/Constants.sol";
import {Execution} from "kernel/types/Structs.sol";

abstract contract AdvancedTransactionExecutor is ReentrancyGuard, Ownable {
    using MessageHashUtils for bytes32;

    enum Operator {
        NONE,
        EQ,
        NE,
        GT,
        LT,
        GE,
        LE
    }

    // Condition to considers an execution as valid based on its return
    // E.g., The balance of a given token after the order execution must be `>= 1_000e18`
    struct ReturnCondition {
        // The operator (e.g., `==`, `>`, `<`, etc)
        Operator operator;
        // The value for comparison
        bytes expected;
    }

    struct FeeConfig {
        // Fee bps to charge
        uint16 feeBps;
        // The fee collector
        address collector;
    }

    struct Hook {
        // The array of ERC-7579 execution/call objects
        Execution[] executions;
        // The array of validity conditions
        // The `conditions` array may be shorter than the `executions` length if only an initial subset of execution should be validated
        ReturnCondition[] conditions;
    }

    struct Incentive {
        // The token to pay to the filler as incentive
        IERC20 token;
        // The amount to pay
        uint256 amount;
    }

    struct Order {
        // Order's owner
        address smartAccount;
        // The contract authorized to execute this order
        address executor;
        // Avoids having duplicated hash for order with exact same parameters
        uint96 nonce;
        // The period where the order is valid to be filled
        uint48 validFrom;
        // The number of rounds, use 1 for non recurrent order
        uint32 rounds;
        // The duration of each round
        uint32 roundDuration;
        // The incentive params
        Incentive incentive;
        // The smart account's signature
        bytes signature;
        // The hooks to be executed before order is filled
        Hook beforeFill;
        // The custom data depending on specific order type
        bytes additionalData;
        // The hooks to be executed after the order is filled
        Hook afterFill;
    }

    address internal constant NATIVE_TOKEN = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    uint256 internal constant MAX_BPS = 100_00;
    uint256 public constant MAX_FEE_BPS = 1_00;

    FeeConfig public fee;

    mapping(address owner => mapping(bytes32 orderHash => bool)) public cancelled;
    mapping(bytes32 orderHash => mapping(uint256 round => bool)) public roundFilled;

    event OrderFilled(address indexed smartAccount, address indexed caller, bytes32 orderHash, uint256 round);
    event OrderCancelled(address indexed smartAccount, bytes32 orderHash);
    event FeeConfigUpdated(uint256 feeBps, address collector);

    error InvalidSignature();
    error OrderIsCancelled();
    error OrderAlreadyFilled();
    error TooEarlyToFill();
    error IncentiveTransferFailed();
    error WrongExecutor();
    error FeeBpsTooHigh();
    error FeeCollectorIsNull();
    error InvalidArrays();
    error ReturnConditionFailed(bytes actual, Operator operator, bytes expected);
    error DeadlineHasAlreadyPassed(uint256 deadline);
    error HookExecutionFailed(uint256 index);

    constructor(address owner_) Ownable(owner_) {}

    /// @notice Cancel an order
    /// This function must be called from the order's smart account (a.k.a. owner) itself.
    /// @param orderHash_ the order's hash
    function cancel(bytes32 orderHash_) external {
        cancelled[msg.sender][orderHash_] = true;
        emit OrderCancelled(msg.sender, orderHash_);
    }

    /// @notice Get order's hash
    /// @param order_ The order struct
    /// @return The order's hash
    function getOrderHash(Order memory order_) public view returns (bytes32) {
        bytes32 _orderHash = keccak256(
            abi.encode(
                order_.validFrom,
                order_.smartAccount,
                order_.nonce,
                order_.executor,
                order_.incentive,
                order_.beforeFill,
                order_.additionalData,
                order_.afterFill
            )
        );
        return keccak256(abi.encode(_orderHash, block.chainid));
    }

    /// @notice Fill an order
    /// @param order_ The order struct (with signature)
    /// @param callbackData_ The data to be passed to callback (may be optional depending on the order type)
    function fill(Order memory order_, bytes memory callbackData_) external nonReentrant {
        _validateAdditionalData(order_.additionalData);

        bytes32 _hash = getOrderHash(order_).toEthSignedMessageHash();

        _revertIfNotAuthorized(order_.smartAccount);
        if (order_.executor != address(this)) revert WrongExecutor();
        if (order_.validFrom > block.timestamp) revert TooEarlyToFill();
        uint256 _validTo = order_.validFrom + (order_.rounds * order_.roundDuration);
        if (block.timestamp >= _validTo) revert DeadlineHasAlreadyPassed(_validTo);
        if (IERC1271(order_.smartAccount).isValidSignature(_hash, order_.signature) != ERC1271_MAGICVALUE)
            revert InvalidSignature();
        if (cancelled[order_.smartAccount][_hash]) revert OrderIsCancelled();
        if (_wasFilled(order_, _hash)) revert OrderAlreadyFilled();

        _setAsFilled(order_, _hash);
        _executeHooks(order_.beforeFill.executions, order_.beforeFill.conditions);
        _fill(order_, callbackData_);
        _executeHooks(order_.afterFill.executions, order_.afterFill.conditions);
        _transferIncentive(order_);

        emit OrderFilled(order_.smartAccount, msg.sender, _hash, _getRound(order_));
    }

    /// @dev Calculate order's round based on the current time
    function _getRound(Order memory order_) private view returns (uint256 _round) {
        if (order_.rounds <= 1 || order_.roundDuration == 0 || block.timestamp < order_.validFrom) return 0;
        _round = (block.timestamp - order_.validFrom) / order_.roundDuration;
    }

    /// @notice Check if an order was filled
    /// @param order_ The order struct
    /// @return `true` if the order was filled already
    function wasFilled(Order memory order_) external view returns (bool) {
        return _wasFilled(order_, getOrderHash(order_).toEthSignedMessageHash());
    }

    function _executeHooks(Execution[] memory executions_, ReturnCondition[] memory conditions_) internal view {
        uint256 _len = executions_.length;

        if (_len == 0) return;
        if (_len != conditions_.length) revert InvalidArrays();

        for (uint256 i; i < _len; ++i) {
            (bool _success, bytes memory _return) = executions_[i].target.staticcall(executions_[i].callData);

            if (!_success) revert HookExecutionFailed(i);
            if (_return.length == 0) continue;

            Operator _op = conditions_[i].operator;

            // if `none`, accepts any return data as valid
            if (_op == Operator.NONE) continue;
            else if (_op == Operator.EQ && keccak256(_return) != keccak256(conditions_[i].expected))
                revert ReturnConditionFailed(_return, _op, conditions_[i].expected);
            else if (_op == Operator.NE && keccak256(_return) == keccak256(conditions_[i].expected))
                revert ReturnConditionFailed(_return, _op, conditions_[i].expected);
            else {
                uint256 _actual = abi.decode(_return, (uint256));
                uint256 _expected = abi.decode(conditions_[i].expected, (uint256));

                if (_op == Operator.GT && _actual <= _expected)
                    revert ReturnConditionFailed(_return, _op, conditions_[i].expected);
                else if (_op == Operator.LT && _actual >= _expected)
                    revert ReturnConditionFailed(_return, _op, conditions_[i].expected);
                else if (_op == Operator.GE && _actual < _expected)
                    revert ReturnConditionFailed(_return, _op, conditions_[i].expected);
                else if (_op == Operator.LE && _actual > _expected)
                    revert ReturnConditionFailed(_return, _op, conditions_[i].expected);
            }
        }
    }

    /// @dev Executors filling logic
    /// Note: Any fee must be charged here
    function _fill(Order memory order_, bytes memory callbackData_) internal virtual;

    /// @dev Transfer incentive to the caller (if any)
    function _transferIncentive(Order memory order_) private {
        Incentive memory _i = order_.incentive;

        if (address(_i.token) == address(0) || _i.amount == 0) {
            return;
        }

        _transferFromSmartAccount(order_.smartAccount, _i.token, msg.sender, _i.amount);
    }

    /// @notice Validate `AdditionalData`
    function _validateAdditionalData(bytes memory additionalData_) internal view virtual {}

    /// @dev Set an order as filled
    /// Note: Each executor may have their own logic
    function _setAsFilled(Order memory order_, bytes32 orderHash_) internal virtual {
        roundFilled[orderHash_][_getRound(order_)] = true;
    }

    /// @dev Check if an order was filled
    /// Note: Each executor may have their own logic
    function _wasFilled(Order memory order_, bytes32 orderHash_) internal view virtual returns (bool) {
        return roundFilled[orderHash_][_getRound(order_)];
    }

    /// @dev Execute an ERC20 transfer call
    function _transferFromSmartAccount(address smartAccount_, IERC20 token_, address to_, uint256 amount_) internal {
        Execution memory _execution = (NATIVE_TOKEN == address(token_))
            ? Execution(to_, amount_, bytes(""))
            : Execution(address(token_), 0, abi.encodeWithSelector(IERC20.transfer.selector, to_, amount_));

        _executeOnBehalf(smartAccount_, _execution);
    }

    /// @dev Collect fee
    function _collectFee(address from_, IERC20 token_, uint256 grossAmount_) internal returns (uint256 feeAmount_) {
        FeeConfig memory _fee = fee;
        if (_fee.feeBps > 0) {
            feeAmount_ = (grossAmount_ * _fee.feeBps) / MAX_BPS;
            if (feeAmount_ > 0) {
                _transferFromSmartAccount(from_, token_, _fee.collector, feeAmount_);
            }
        }
    }

    /// @notice Update protocol fee
    function updateFee(FeeConfig calldata fee_) external onlyOwner {
        if (fee_.collector == address(0)) revert FeeCollectorIsNull();
        if (fee_.feeBps > MAX_FEE_BPS) revert FeeBpsTooHigh();

        fee = fee_;

        emit FeeConfigUpdated(fee_.feeBps, fee_.collector);
    }

    function _balance(IERC20 token, address account_) internal view returns (uint256) {
        return (address(token) == NATIVE_TOKEN) ? account_.balance : token.balanceOf(account_);
    }

    /*//////////////////////////////////////////////////////////////
                                VIRTUALS
    //////////////////////////////////////////////////////////////*/

    /// @dev Reverts if the smart account did not not authorized this contract
    function _revertIfNotAuthorized(address smartAccount_) internal view virtual;

    /// @dev Executes batch calls on behalf of the smart account
    function _executeOnBehalf(address smartAccount_, Execution[] memory executions_) internal virtual;

    /// @dev Executes a call on behalf of the smart account
    function _executeOnBehalf(address smartAccount_, Execution memory execution_) internal virtual;
}
