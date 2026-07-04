// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

import '../../libs/TokenUtils.sol';
import '../ActionBase.sol';
import './helpers/BenqiHelper.sol';
import '../../../interfaces/IWAVAX.sol';
import { IProtocolPoolController } from '../../controllers/ProtocolPoolController.sol';

/// @title Pay back a token to Benqi market
contract BenqiPayback is ActionBase, BenqiHelper {
  using TokenUtils for address;
  address public immutable PROTOCOL_CONTROLLER;
  string constant NAME = 'BenqiPayback';

  /// @param amount - amount of token to pay back
  /// @param poolId - pool id from protocol controller
  struct Params {
    uint amount;
    uint16 poolId;
  }

  constructor(address _protocolRegisterAddress) {
    PROTOCOL_CONTROLLER = _protocolRegisterAddress;
  }

  /// @inheritdoc ActionBase
  function getId() public pure override returns (bytes4) {
    return bytes4(keccak256(abi.encodePacked(NAME)));
  }

  /// @inheritdoc ActionBase
  function executeAction(
    bytes calldata _callData,
    uint8[] memory _paramMapping,
    bytes32[] memory _returnValues
  ) public payable virtual override returns (bytes32) {
    Params memory params = parseInputs(_callData);
    params.amount = _parseParamUint(params.amount, _paramMapping[0], _returnValues);

    (uint paybackAmount, bytes memory logData) = _payback(params.amount, params.poolId);
    emit ActionEvent(NAME, logData);
    return bytes32(paybackAmount);
  }

  //////////////////////////// ACTION LOGIC ////////////////////////////

  /// @notice User repays tokens to the Benqi protocol
  /// @param _amount Amount of tokens to be repaid
  /// @param _poolId The id of the pool
  function _payback(uint _amount, uint16 _poolId) internal returns (uint, bytes memory) {
    address _lendingPool = IProtocolPoolController(PROTOCOL_CONTROLLER).getPoolAddress(PROTOCOL_ID, _poolId);

    if (_lendingPool == qiAVAX) {
      // For qiAVAX repayment, convert WAVAX to native AVAX
      uint wavaxBalance = IERC20(wAVAX).balanceOf(address(this));
      require(wavaxBalance >= _amount, 'Insufficient WAVAX balance');

      // Convert WAVAX to native AVAX
      IWAVAX(wAVAX).withdraw(_amount);

      // Use low-level call for maximum compatibility with the actual qiAVAX contract
      // The actual contract interface may differ from our interface definitions
      (bool repaySuccess, ) = _lendingPool.call{ value: _amount }(abi.encodeWithSignature('repayBorrow()'));
      require(repaySuccess, 'Benqi repayment failed');
    } else {
      // For other qiTokens, handle ERC20 repayment
      // Note: This would need to be implemented for specific underlying tokens
      revert('Non-AVAX repayment not implemented');
    }

    bytes memory logData = abi.encode(_lendingPool, _amount);
    return (_amount, logData);
  }

  function parseInputs(bytes memory _callData) public pure returns (Params memory params) {
    params = abi.decode(_callData, (Params));
  }
}
