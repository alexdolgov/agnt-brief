// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract SimpleCall {
  
  function execute(address target, address tokenIn, bytes calldata data) external returns(bytes memory) {
    _approveMax(tokenIn, target);

    (bool success, bytes memory result) = target.call(data);
    if (!success) {
      revert('Call failed');
    }

    return abi.decode(result, (bytes));
  }

  function _approveMax(address token, address spender) internal {
    (bool success, bytes memory data) =
      token.call(abi.encodeWithSelector(0x095ea7b3, spender, type(uint256).max));
    if (!(success && (data.length == 0 || abi.decode(data, (bool))))) {
      _safeApprove(token, spender, 0);
      _safeApprove(token, spender, type(uint256).max);
    }
  }

  function _safeApprove(address token, address to, uint256 value) internal {
    // bytes4(keccak256(bytes('approve(address,uint256)')));
    (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x095ea7b3, to, value));
    require(
      success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: APPROVE_FAILED'
    );
  }
}