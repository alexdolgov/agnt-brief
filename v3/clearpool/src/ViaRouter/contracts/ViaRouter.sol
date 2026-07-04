// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;

import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "./libraries/Transfers.sol";
import "./interfaces/IAdapter.sol";

contract ViaRouter is Ownable, ReentrancyGuard {
    using SafeMath for uint256;
    using Address for address;
    using Address for address payable;
    using SafeERC20 for IERC20;

    // CONSTANTS

    uint256 public constant MAX_FEE = 300; // 3%

    uint256 public constant FEE_DENOMINATOR = 10000;

    // STORAGE

    uint256 public fee;

    mapping(address => bool) public operators;

    mapping(address => bool) public adapters;

    mapping(bytes32 => bool) public executedDigest; // prevent double execution

    uint256 public lastExecutionId;

    mapping(address => uint256) public collectedFees;

    // EVENTS

    event FeeSet(uint256 indexed value);

    event OperatorSet(address indexed operator, bool value);

    event AdapterSet(address indexed adapter, bool indexed value);

    event FeeWithdrawn(
        address indexed token,
        address indexed receiver,
        uint256 amount
    );

    event FeeCollected(address indexed token, uint256 amount);

    struct Call {
        uint256 chainid;
        address contractAddress;
        address fromToken;
        address toToken;
        bytes args;
    }

    event CallExecuted(
        Call call,
        uint256 fromTokenAmount,
        uint256 toTokenAmount
    );

    event CallForFuture(Call call);

    event ExecutionComplete(bytes32 executionDigest);

    event TransferToReceiver(
        address indexed receiver,
        address indexed token,
        uint256 amount
    );

    // PUBLIC OWNER FUNCTIONS

    function setFee(uint256 value) external onlyOwner {
        require(value <= MAX_FEE, "too big");
        fee = value;
        emit FeeSet(value);
    }

    function setAdapter(address adapter, bool active) external onlyOwner {
        require(adapter != address(0), "zero address");
        adapters[adapter] = active;
        emit AdapterSet(adapter, active);
    }

    function setOperator(address operator, bool active) external onlyOwner {
        require(operator != address(0), "zero address");
        operators[operator] = active;
        emit OperatorSet(operator, active);
    }

    function withdrawFee(
        address token,
        address receiver,
        uint256 amount
    ) external onlyOwner {
        require(collectedFees[token] >= amount, "insufficient collectedFees");
        collectedFees[token] -= amount;

        Transfers.transferOut(token, receiver, amount);
        emit FeeWithdrawn(token, receiver, amount);
    }

    // PUBLIC FUNCTIONS

    function initializeExecution(
        uint256 fromTokenAmount,
        Call[] memory calls,
        address receiver,
        bytes32 salt
    ) external payable nonReentrant {
        require(calls.length > 0, "empty calls");

        address fromToken = calls[0].fromToken;
        Transfers.transferIn(fromToken, msg.sender, fromTokenAmount);

        uint256 feeAmount = (fromTokenAmount * fee) / FEE_DENOMINATOR;
        fromTokenAmount -= feeAmount;
        collectedFees[fromToken] += feeAmount;
        emit FeeCollected(fromToken, feeAmount);

        _execute(fromTokenAmount, calls, receiver, salt);
    }

    function executeByOperator(
        uint256 fromTokenAmount,
        Call[] memory calls,
        address receiver,
        bytes32 salt
    ) external payable nonReentrant onlyOperator {
        require(calls.length > 0, "empty calls");

        // TODO: add security check
        _execute(fromTokenAmount, calls, receiver, salt);
    }

    // PRIVATE FUNCTIONS

    function _execute(
        uint256 fromTokenAmount,
        Call[] memory calls,
        address receiver,
        bytes32 salt
    ) internal {
        require(calls[0].chainid == block.chainid, "invalid calls[0].chainid");

        bytes32 executionDigest = keccak256(
            abi.encode(fromTokenAmount, calls, receiver, salt)
        );
        require(!executedDigest[executionDigest], "double execution");
        executedDigest[executionDigest] = true;

        bool skipFlag = false;
        address fromToken = calls[0].fromToken;
        address toToken = calls[0].fromToken;

        for (uint8 i; i < calls.length; i++) {
            Call memory call = calls[i];
            fromToken = call.fromToken;
            require(fromToken == toToken, "ERR_INCONTINUOUS_SWAP_PATH");
            toToken = call.toToken;
            require(fromToken != toToken, "ERR_INVALID_TO_TOKEN");

            if (calls[i].chainid == block.chainid && !skipFlag) {
                uint256 toTokenAmount = Transfers.getBalance(toToken);

                if (!adapters[call.contractAddress]) {
                    // Use direct call
                    if (fromToken == address(0)) {
                        call.contractAddress.functionCallWithValue(
                            call.args,
                            fromTokenAmount
                        );
                    } else {
                        Transfers.approve(
                            fromToken,
                            call.contractAddress,
                            fromTokenAmount
                        );
                        call.contractAddress.functionCall(call.args);
                    }
                } else {
                    // Use delegate call through adapter
                    call.contractAddress.functionDelegateCall(
                        abi.encodeWithSelector(
                            IAdapter.call.selector,
                            fromToken,
                            fromTokenAmount,
                            call.args
                        )
                    );
                }

                toTokenAmount = Transfers.getBalance(toToken) - toTokenAmount;
                emit CallExecuted({
                    call: call,
                    fromTokenAmount: fromTokenAmount,
                    toTokenAmount: toTokenAmount
                });
                fromTokenAmount = toTokenAmount; // todo be careful about bridge

                if (i == calls.length - 1 && receiver != address(0)) {
                    Transfers.transferOut(toToken, receiver, toTokenAmount);
                    emit TransferToReceiver(receiver, toToken, toTokenAmount);
                }
            } else {
                // do we need to pass all chain?
                skipFlag = true;
                emit CallForFuture(call);
            }
        }

        emit ExecutionComplete(executionDigest);
    }

    // MODIFIERS

    modifier onlyOperator() {
        require(operators[msg.sender], "not operator");
        _;
    }
}
