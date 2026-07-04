// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

import '../../libs/TokenUtils.sol';
import '../ActionBase.sol';
import './helpers/SavaxHelper.sol';
import '../../../interfaces/savax/ISAVAX.sol';

/// @title Start sAVAX withdrawal process
contract SavaxUnlock is ActionBase, SavaxHelper {
  using TokenUtils for address;
  string constant NAME = 'SavaxUnlock';

  /// @param amount - amount to withdraw up to 1000e18
  struct Params {
    uint amount;
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

    (uint amountUnlock, bytes memory logData) = _savaxUnlock(params.amount);
    emit ActionEvent(NAME, logData);

    return bytes32(amountUnlock);
  }

  //////////////////////////// ACTION LOGIC ////////////////////////////

  function _savaxUnlock(uint _amount) internal returns (uint amountUnlock, bytes memory logData) {
    ISAVAX savax = ISAVAX(sAVAX);
    amountUnlock = _amount;

    // Check if we have enough sAVAX balance
    uint balance = savax.balanceOf(address(this));
    require(balance >= amountUnlock, 'Insufficient sAVAX balance');

    savax.requestUnlock(amountUnlock);

    logData = abi.encode(sAVAX, amountUnlock);
  }

  function parseInputs(bytes memory _callData) internal pure returns (Params memory inputData) {
    inputData = abi.decode(_callData, (Params));
  }
}
