// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

import '../../libs/TokenUtils.sol';
import '../ActionBase.sol';
import './helpers/BenqiHelper.sol';
import { IProtocolPoolController } from '../../controllers/ProtocolPoolController.sol';
import { IBENQI } from '../../../interfaces/benqi/IBenqi.sol';

/// @title Withdraw a token from Benqi market
contract BenqiWithdraw is ActionBase, BenqiHelper {
  using TokenUtils for address;
  address public immutable PROTOCOL_CONTROLLER;
  string constant NAME = 'BenqiWithdraw';

  /// @param amount - amount of token to withdraw
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

    (uint withdrawAmount, bytes memory logData) = _withdraw(params.amount, params.poolId);
    emit ActionEvent(NAME, logData);
    return bytes32(withdrawAmount);
  }

  //////////////////////////// ACTION LOGIC ////////////////////////////

  /// @notice User withdraws tokens from the Benqi protocol
  /// @param _amount Amount of sAVAX to withdraw
  /// @param _poolId The id of the pool
  function _withdraw(uint _amount, uint16 _poolId) internal returns (uint, bytes memory) {
    address _lendingPool = IProtocolPoolController(PROTOCOL_CONTROLLER).getPoolAddress(PROTOCOL_ID, _poolId);

    if (_lendingPool == qisAVAX) {
      // For qiSAVAX withdrawal, qiSAVAX will be redeemed for sAVAX
      uint result = IBENQI(_lendingPool).redeemUnderlying(_amount);
      require(result == 0, 'Benqi withdraw failed');
    } else {
      // For other qiTokens, handle ERC20 withdrawal
      // Note: This would need to be implemented for specific underlying tokens
      revert('Non-sAVAX withdrawal not implemented');
    }

    bytes memory logData = abi.encode(_lendingPool, _amount);
    return (_amount, logData);
  }

  function parseInputs(bytes memory _callData) public pure returns (Params memory params) {
    params = abi.decode(_callData, (Params));
  }
}
