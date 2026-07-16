// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.17;

import "./BridgeEndpoint.sol";
import "./SwapExecutor.sol";

/**
 * @title BridgeEndpointWithSwap
 * @dev Extension of BridgeEndpoint that adds support for atomic swaps during bridging.
 * This contract allows users to perform a token swap as part of the bridge operation,
 * ensuring the entire operation (swap + bridge) is atomic.
 *
 * Key Features:
 * - Atomic swap and bridge operations
 * - Support for both burnable and non-burnable tokens
 * - Finalizer-based order execution
 * - Deadline-based order expiration
 * - Comprehensive error handling and event logging
 */
contract BridgeEndpointWithSwap is BridgeEndpoint {
  using ERC20Fixed for ERC20;

  // @dev Enum representing the possible states of a swap order
  enum SwapStatus {
    Pending, // Order is waiting to be executed
    Executed, // Order was successfully executed
    Cancelled, // Order was cancelled
    Failed // Order failed to execute
  }

  // @dev The SwapExecutor contract used to safely execute swaps
  SwapExecutor public immutable swapExecutor;

  // @dev Mapping of order hashes to swap order packages
  mapping(bytes32 => SwapOrderPackage) public swapSent;

  // @dev Mapping of finalizer addresses to their approval status
  mapping(address => bool) public approvedFinalizers;

  /**
   * @dev Struct to store swap order information
   * @param target The address of the swap target contract
   * @param tokenIn The input token address
   * @param tokenOut The output token address
   * @param amountIn The amount of input tokens
   * @param amountOutMin The minimum amount of output tokens required
   * @param deadline The deadline for the swap
   * @param bridgePayloadSuccess The payload to emit on successful swap
   * @param bridgePayloadFailure The payload to emit on failed swap
   * @param status The current status of the swap
   */
  struct SwapOrderPackage {
    address target;
    address tokenIn;
    address tokenOut;
    uint256 amountIn;
    uint256 amountOutMin;
    uint256 deadline;
    bytes bridgePayloadSuccess;
    bytes bridgePayloadFailure;
    SwapStatus status;
  }

  /**
   * @dev Struct to group inputs for the transferToSwap function to reduce stack usage
   */
  struct TransferToSwapParams {
    address target;
    address tokenIn;
    address tokenOut;
    uint256 amountIn;
    uint256 amountOutMin;
    uint256 deadline;
    bytes swapPayload;
    bytes bridgePayloadSuccess;
    bytes bridgePayloadFailure;
    bytes32 salt;
  }

  /**
   * @dev Emitted when a swap operation fails during bridge transfer
   * @param target The address of the swap target contract that failed to execute
   * @param reason The raw error data returned by the failed swap operation. This contains
   *              the low-level revert reason or error message from the target contract.
   *              Can be used for debugging and monitoring swap failures.
   * @notice This event is emitted instead of reverting the transaction, allowing the bridge
   *         operation to continue with failure handling. The error is logged for transparency
   *         and debugging purposes while still maintaining atomicity of the overall operation.
   */
  event SwapExecutorError(address indexed target, bytes reason);

  /**
   * @dev Emitted when a new swap order is created for non-burnable tokens
   * @param orderHash The unique hash of the order
   * @param target The swap target contract
   * @param tokenIn The input token address
   * @param tokenOut The output token address
   * @param amountIn The amount of input tokens
   * @param amountOutMin The minimum amount of output tokens required
   * @param deadline The deadline for the swap
   * @param bridgePayloadSuccess The payload to emit on successful swap
   * @param bridgePayloadFailure The payload to emit on failed swap
   */
  event SwapOrderCreated(
    bytes32 indexed orderHash,
    address indexed target,
    address indexed tokenIn,
    address tokenOut,
    uint256 amountIn,
    uint256 amountOutMin,
    uint256 deadline,
    bytes bridgePayloadSuccess,
    bytes bridgePayloadFailure
  );

  /**
   * @dev Emitted when a swap order is finalized
   * @param orderHash The unique hash of the order
   * @param executor The address that executed the finalization
   * @param amountOut The amount of output tokens received
   * @param status The status of the swap
   */
  event SwapOrderFinalized(
    bytes32 indexed orderHash,
    address indexed executor,
    uint256 amountOut,
    SwapStatus status
  );

  /**
   * @dev Emitted when a transfer and swap operation is executed
   * @param orderHash The unique hash of the order
   * @param target The swap target contract
   * @param swapPayload The encoded swap function call
   * @param tokenIn The input token address
   * @param tokenOut The output token address
   * @param amountIn The amount of input tokens
   * @param amountOut The amount of output tokens received
   * @param status The status of the swap
   */
  event TransferToSwapEvent(
    bytes32 orderHash,
    address target,
    bytes swapPayload,
    address tokenIn,
    address tokenOut,
    uint256 amountIn,
    uint256 amountOut,
    SwapStatus status
  );

  /**
   * @dev Emitted when a finalizer's status is changed
   * @param finalizer The address of the finalizer
   * @param approved Whether the finalizer is approved
   */
  event FinalizerStatusChanged(address indexed finalizer, bool approved);

  /**
   * @dev Modifier to ensure the caller is an approved finalizer
   * @notice Only addresses in the approvedFinalizers mapping can call privileged functions
   */
  modifier onlyApprovedFinalizer() {
    _require(approvedFinalizers[msg.sender], Errors.APPROVED_ONLY);
    _;
  }

  /**
   * @dev Constructor for BridgeEndpointWithSwap
   * @param _owner The owner of the contract
   * @param name The name of the contract
   * @param version The version of the contract
   * @param _registry The address of the registry contract
   * @param _pegInAddress The address for pegging in tokens
   * @param _timeLock The address of the time lock contract
   */
  constructor(
    address _owner,
    string memory name,
    string memory version,
    address _registry,
    address _pegInAddress,
    address _timeLock
  ) BridgeEndpoint(_owner, name, version, _registry, _pegInAddress, _timeLock) {
    swapExecutor = new SwapExecutor();
  }

  // external functions

  // priviledged functions

  /**
   * @dev Adds an address to the list of approved finalizers
   * @param finalizer The address to approve
   * @notice Only callable by the owner
   */
  function addApprovedFinalizer(address finalizer) external onlyOwner {
    _require(finalizer != address(0), Errors.ZERO_ADDRESS);
    approvedFinalizers[finalizer] = true;
    emit FinalizerStatusChanged(finalizer, true);
  }

  /**
   * @dev Removes an address from the list of approved finalizers
   * @param finalizer The address to remove
   * @notice Only callable by the owner
   */
  function removeApprovedFinalizer(address finalizer) external onlyOwner {
    approvedFinalizers[finalizer] = false;
    emit FinalizerStatusChanged(finalizer, false);
  }

  /**
   * @dev Executes a token swap and bridge operation atomically
   * @notice This function uses structs to avoid stack too deep issues
   * @param params The parameters for the swap operation
   * @param proofs Array of validator signatures
   */
  function transferToSwap(
    TransferToSwapParams calldata params,
    SignaturePackage[] calldata proofs
  )
    external
    onlyApprovedToken(params.tokenIn)
    onlyApprovedToken(params.tokenOut)
    nonReentrant
    whenNotPaused
    onlyApprovedRelayer
  {
    bytes32 orderHash = _calculateOrderHash(
      params.tokenIn,
      params.tokenOut,
      params.amountIn,
      params.amountOutMin,
      params.deadline,
      params.bridgePayloadSuccess,
      params.bridgePayloadFailure,
      params.salt
    );

    _validateOrder(orderHash, proofs);

    if (
      registry.burnable(params.tokenIn) && params.deadline < block.timestamp
    ) {
      _handleBurnableTokenSwap(orderHash, params);
    } else {
      _handleNonBurnableTokenSwap(orderHash, params);
    }
  }

  /**
   * @dev Internal function to calculate the order hash
   */
  function _calculateOrderHash(
    address tokenIn,
    address tokenOut,
    uint256 amountIn,
    uint256 amountOutMin,
    uint256 deadline,
    bytes calldata bridgePayloadSuccess,
    bytes calldata bridgePayloadFailure,
    bytes32 salt
  ) internal view returns (bytes32) {
    return
      _hashTypedDataV4(
        keccak256(
          abi.encode(
            keccak256(
              "Order(address tokenIn,address tokenOut,uint256 amountIn,uint256 amountOutMin,uint256 deadline,bytes bridgePayloadSuccess,bytes bridgePayloadFailure,bytes32 salt)"
            ),
            tokenIn,
            tokenOut,
            amountIn,
            amountOutMin,
            deadline,
            keccak256(bridgePayloadSuccess),
            keccak256(bridgePayloadFailure),
            salt
          )
        )
      );
  }

  /**
   * @dev Internal function to handle burnable token swaps
   */
  function _handleBurnableTokenSwap(
    bytes32 orderHash,
    TransferToSwapParams calldata params
  ) internal {
    IBurnable(params.tokenIn).mint(address(this), params.amountIn);

    (uint256 amountOut, SwapStatus status) = _executeSwap(
      params.tokenIn,
      params.tokenOut,
      params.target,
      params.amountIn,
      params.amountOutMin,
      params.deadline,
      params.swapPayload,
      params.bridgePayloadSuccess,
      params.bridgePayloadFailure,
      bytes("")
    );

    emit TransferToSwapEvent(
      orderHash,
      params.target,
      params.swapPayload,
      params.tokenIn,
      params.tokenOut,
      params.amountIn,
      amountOut,
      status
    );
  }

  /**
   * @dev Internal function to handle non-burnable token swaps
   */
  function _handleNonBurnableTokenSwap(
    bytes32 orderHash,
    TransferToSwapParams calldata params
  ) internal {
    swapSent[orderHash] = SwapOrderPackage(
      params.target,
      params.tokenIn,
      params.tokenOut,
      params.amountIn,
      params.amountOutMin,
      params.deadline,
      params.bridgePayloadSuccess,
      params.bridgePayloadFailure,
      SwapStatus.Pending
    );

    emit SwapOrderCreated(
      orderHash,
      params.target,
      params.tokenIn,
      params.tokenOut,
      params.amountIn,
      params.amountOutMin,
      params.deadline,
      params.bridgePayloadSuccess,
      params.bridgePayloadFailure
    );
  }

  /**
   * @dev Finalizes multiple swap operations
   * @param orderHashes The hashes of the orders to finalize
   * @param swapPayloads The encoded swap function calls
   * @param cancelPayloads The encoded cancel function calls
   * @notice Only callable by approved finalizers
   */
  function finalizeSwap(
    bytes32[] calldata orderHashes,
    bytes[] calldata swapPayloads,
    bytes[] calldata cancelPayloads
  ) external onlyApprovedFinalizer nonReentrant whenNotPaused {
    _require(
      orderHashes.length == swapPayloads.length,
      Errors.INPUT_LENGTH_MISMATCH
    );
    _require(
      orderHashes.length == cancelPayloads.length,
      Errors.INPUT_LENGTH_MISMATCH
    );
    for (uint256 i = 0; i < orderHashes.length; i++) {
      _finalizeSwap(orderHashes[i], swapPayloads[i], cancelPayloads[i]);
    }
  }

  /**
   * @dev Internal function to finalize a single swap operation
   * @param orderHash The hash of the order to finalize
   * @param swapPayload The encoded swap function call
   * @param cancelPayload The encoded cancel function call
   */
  function _finalizeSwap(
    bytes32 orderHash,
    bytes memory swapPayload,
    bytes memory cancelPayload
  ) internal {
    SwapOrderPackage storage orderPackage = swapSent[orderHash];
    _require(orderPackage.target != address(0), Errors.INVALID_ORDER);
    _require(
      orderPackage.status == SwapStatus.Pending,
      Errors.ORDER_ALREADY_SENT
    );

    if (registry.burnable(orderPackage.tokenIn)) {
      IBurnable(orderPackage.tokenIn).mint(
        address(this),
        orderPackage.amountIn
      );
    } else {
      ERC20(orderPackage.tokenIn).transferFromFixed(
        msg.sender,
        address(this),
        orderPackage.amountIn
      );
    }

    (uint256 amountOut, SwapStatus status) = _executeSwap(
      orderPackage.tokenIn,
      orderPackage.tokenOut,
      orderPackage.target,
      orderPackage.amountIn,
      orderPackage.amountOutMin,
      orderPackage.deadline,
      swapPayload,
      orderPackage.bridgePayloadSuccess,
      orderPackage.bridgePayloadFailure,
      cancelPayload
    );
    orderPackage.status = status;

    if (status != SwapStatus.Pending) {
      emit TransferToSwapEvent(
        orderHash,
        orderPackage.target,
        swapPayload,
        orderPackage.tokenIn,
        orderPackage.tokenOut,
        orderPackage.amountIn,
        amountOut,
        status
      );

      emit SwapOrderFinalized(orderHash, msg.sender, amountOut, status);
    }
  }

  /**
   * @dev Internal function to execute a swap operation
   * @param tokenIn The input token address
   * @param tokenOut The output token address
   * @param target The swap target contract
   * @param amountIn The amount of input tokens
   * @param amountOutMin The minimum amount of output tokens required
   * @param deadline The deadline for the swap
   * @param swapPayload The encoded swap function call
   * @param bridgePayloadSuccess The payload to emit on success
   * @param bridgePayloadFailure The payload to emit on failure
   * @param cancelPayload The encoded cancel function call
   * @return amountOut The amount of output tokens received
   * @return status The status of the swap operation
   */
  function _executeSwap(
    address tokenIn,
    address tokenOut,
    address target,
    uint256 amountIn,
    uint256 amountOutMin,
    uint256 deadline,
    bytes memory swapPayload,
    bytes memory bridgePayloadSuccess,
    bytes memory bridgePayloadFailure,
    bytes memory cancelPayload
  ) internal returns (uint256 amountOut, SwapStatus status) {
    amountOut = 0;
    status = deadline < block.timestamp
      ? SwapStatus.Failed
      : (cancelPayload.length > 0)
        ? SwapStatus.Cancelled
        : SwapStatus.Pending;
    bytes memory _cancelPayload = cancelPayload;

    if (status == SwapStatus.Pending || status == SwapStatus.Failed) {
      // Approve SwapExecutor to spend tokenIn
      ERC20(tokenIn).approveFixed(address(swapExecutor), amountIn);

      try
        swapExecutor.executeSwap(
          tokenIn,
          tokenOut,
          target,
          amountIn,
          amountOutMin,
          swapPayload
        )
      returns (uint256 swapOut) {
        // Handle output tokens
        if (registry.burnable(tokenOut)) {
          IBurnable(tokenOut).burn(swapOut);
        } else {
          ERC20(tokenOut).transferFixed(pegInAddress, swapOut);
        }

        // Emit success fund send events
        emit SendMessageWithTokenEvent(
          msg.sender,
          tokenOut,
          swapOut,
          0,
          bridgePayloadSuccess
        );

        amountOut = swapOut;
        status = SwapStatus.Executed;
      } catch (bytes memory reason) {
        _cancelPayload = reason;
      }
    }

    if (status == SwapStatus.Cancelled || status == SwapStatus.Failed) {
      // Log the swap error
      emit SwapExecutorError(target, _cancelPayload);

      // Emit failure fund send events
      emit SendMessageWithTokenEvent(
        msg.sender,
        tokenIn,
        amountIn,
        0,
        bridgePayloadFailure
      );
    }

    // Clean up
    ERC20(tokenIn).approveFixed(address(swapExecutor), 0);
    uint256 remainingInput = ERC20(tokenIn).balanceOfFixed(address(this));
    if (remainingInput > 0) {
      if (registry.burnable(tokenIn)) {
        IBurnable(tokenIn).burn(remainingInput);
      } else {
        ERC20(tokenIn).transferFixed(pegInAddress, remainingInput);
      }
    }
  }
}
