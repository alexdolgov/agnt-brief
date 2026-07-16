// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.17;

import "./BridgeEndpoint.sol";

contract BridgeEndpointWithSwap is BridgeEndpoint {
  using ERC20Fixed for ERC20;
  // using FixedPoint for uint256;

  // Mapping to track approved swap targets
  mapping(address => bool) public approvedTargets;

  event SetApprovedTargetEvent(address indexed target, bool approved);
  event SwapTargetError(address indexed target, bytes reason);

  event TransferToSwapEvent(
    bytes32 orderHash,
    bytes32 salt,
    address target,
    bytes swapPayload,
    address tokenIn,
    address tokenOut,
    uint256 amountIn,
    uint256 amountOut,
    bool success
  );

  constructor(
    address _owner,
    string memory name,
    string memory version,
    address _registry,
    address _pegInAddress,
    address _timeLock
  ) BridgeEndpoint(_owner, name, version, _registry, _pegInAddress, _timeLock) {
    setTimeLock(_timeLock);
  }

  // external functions

  // priviledged functions

  // @dev transfer to ice cream
  // @param tokens: [tokenIn, tokenOut]
  // @param payloads: [payloadIn (@see https://wiki.icecreamswap.com/intro/ai-dex-aggregator), payloadOut (@see MessageConfigs.sol)]
  // @param amountIn: amount of tokenIn
  // @param amountOutMin: minimum amount of tokenOut
  // @param salt: salt for the order
  // @param proofs: proofs for the order
  function transferToSwap(
    address target,
    address tokenIn,
    address tokenOut,
    uint256 amountIn,
    uint256 amountOutMin,
    bytes calldata swapPayload,
    bytes calldata bridgePayloadSuccess,
    bytes calldata bridgePayloadFailure,
    bytes32 salt,
    SignaturePackage[] calldata proofs
  )
    external
    onlyApprovedRelayer
    nonReentrant
    whenNotPaused
    onlyApprovedToken(tokenIn)
    onlyApprovedToken(tokenOut)
  {
    // Verify target is approved
    _require(approvedTargets[target], Errors.INVALID_TARGET);

    bytes32 orderHash = _hashTypedDataV4(
      keccak256(
        abi.encode(
          keccak256(
            "Order(address target,address tokenIn,address tokenOut,uint256 amountIn,uint256 amountOutMin,bytes swapPayload,bytes bridgePayloadSuccess,bytes bridgePayloadFailure,bytes32 salt)"
          ),
          target,
          tokenIn,
          tokenOut,
          amountIn,
          amountOutMin,
          keccak256(swapPayload),
          keccak256(bridgePayloadSuccess),
          keccak256(bridgePayloadFailure),
          salt
        )
      )
    );
    _validateOrder(orderHash, proofs);

    // @dev only burnable tokens are supported
    _require(registry.burnable(tokenIn), Errors.TOKEN_NOT_BURNABLE);

    uint256 tokenInBalance0 = ERC20(tokenIn).balanceOfFixed(address(this));
    uint256 tokenOutBalance0 = ERC20(tokenOut).balanceOfFixed(address(this));

    // Mint tokenIn
    IBurnable(tokenIn).mint(address(this), amountIn);

    ERC20(tokenIn).approveFixed(target, amountIn);
    (bool success, bytes memory reason) = target.call(swapPayload);

    // Check how much tokenOut was acquired
    uint256 tokenOutBalance1 = ERC20(tokenOut).balanceOfFixed(address(this));

    if (success) {
      uint256 swapOut = tokenOutBalance1 - tokenOutBalance0;
      _require(swapOut >= amountOutMin, Errors.INVALID_AMOUNT);

      // Handle the swap output
      if (registry.burnable(tokenOut)) {
        IBurnable(tokenOut).burn(swapOut);
      } else {
        ERC20(tokenOut).transferFixed(pegInAddress, swapOut);
      }
      emit TransferToSwapEvent(
        orderHash,
        salt,
        target,
        swapPayload,
        tokenIn,
        tokenOut,
        amountIn,
        swapOut,
        success
      );
      emit SendMessageWithTokenEvent(
        address(this),
        tokenOut,
        swapOut,
        0,
        bridgePayloadSuccess
      );

      // **Burn leftover** tokenIn
      uint256 tokenInBalance1 = ERC20(tokenIn).balanceOfFixed(address(this));
      if (tokenInBalance1 - tokenInBalance0 > 0) {
        IBurnable(tokenIn).burn(tokenInBalance1 - tokenInBalance0);
      }
    } else {
      // Emit error reason for debugging
      emit SwapTargetError(target, reason);
      IBurnable(tokenIn).burn(amountIn);
      emit TransferToSwapEvent(
        orderHash,
        salt,
        target,
        swapPayload,
        tokenIn,
        tokenOut,
        amountIn,
        amountOutMin,
        success
      );
      emit SendMessageWithTokenEvent(
        address(this),
        tokenIn,
        amountIn,
        0,
        bridgePayloadFailure
      );
    }
    ERC20(tokenIn).approveFixed(target, 0);
  }

  function setApprovedTargets(
    address[] calldata targets,
    bool[] calldata approvals
  ) external onlyOwner {
    _require(targets.length == approvals.length, Errors.INPUT_LENGTH_MISMATCH);
    for (uint256 i = 0; i < targets.length; i++) {
      _require(targets[i] != address(0), Errors.ZERO_ADDRESS);
      approvedTargets[targets[i]] = approvals[i];
      emit SetApprovedTargetEvent(targets[i], approvals[i]);
    }
  }
}
