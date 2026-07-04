// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

import '../../libs/TokenUtils.sol';
import '../ActionBase.sol';
import './helpers/BenqiHelper.sol';
import { IProtocolPoolController } from '../../controllers/ProtocolPoolController.sol';
import { IBENQI } from '../../../interfaces/benqi/IBenqi.sol';

/// @title Supply a token to Benqi market
contract BenqiSupply is ActionBase, BenqiHelper {
  using TokenUtils for address;
  address public immutable PROTOCOL_CONTROLLER;
  string constant NAME = 'BenqiSupply';

  /// @param amount - amount of token to supply
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

    (uint supplyAmount, bytes memory logData) = _supply(params.amount, params.poolId);
    emit ActionEvent(NAME, logData);
    return bytes32(supplyAmount);
  }

  //////////////////////////// ACTION LOGIC ////////////////////////////

  /// @notice User supplies tokens to the Benqi protocol
  /// @param _amount Amount of tokens to be supplied
  /// @param _poolId The id of the pool
  function _supply(uint _amount, uint16 _poolId) internal returns (uint, bytes memory) {
    address _lendingPool = IProtocolPoolController(PROTOCOL_CONTROLLER).getPoolAddress(PROTOCOL_ID, _poolId);
    uint actualSupplied;

    if (_lendingPool == qisAVAX) {
      // For qiSAVAX supply, approve and mint sAVAX tokens
      sAVAX.approveToken(_lendingPool, _amount);
      uint tokenBefore = IERC20(sAVAX).balanceOf(address(this));
      uint result = IBENQI(_lendingPool).mint(_amount);
      require(result == 0, 'Benqi supply failed');
      uint tokenAfter = IERC20(sAVAX).balanceOf(address(this));
      actualSupplied = tokenBefore - tokenAfter;
    } else {
      // For other qiTokens, handle ERC20 supply
      // Note: This would need to be implemented for specific underlying tokens
      revert('Non-sAVAX supply not implemented');
    }

    bytes memory logData = abi.encode(_lendingPool, actualSupplied);
    return (actualSupplied, logData);
  }

  function parseInputs(bytes memory _callData) public pure returns (Params memory params) {
    params = abi.decode(_callData, (Params));
  }
}
