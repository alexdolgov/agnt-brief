// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

import '../../libs/TokenUtils.sol';
import '../ActionBase.sol';
import './helpers/SavaxHelper.sol';
import '../../../interfaces/savax/ISAVAX.sol';
import '../../../interfaces/IWAVAX.sol';

/// @title Start sAVAX withdrawal process
contract SavaxSubmit is ActionBase, SavaxHelper {
  using TokenUtils for address;
  string constant NAME = 'SavaxSubmit';

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

    (uint amountSubmitted, bytes memory logData) = _savaxSubmit(params.amount);
    emit ActionEvent(NAME, logData);

    return bytes32(amountSubmitted);
  }

  //////////////////////////// ACTION LOGIC ////////////////////////////
  /// @notice Strategy submits WAVAX to sAVAX
  /// @param _amount Amount of tokens to be submitted
  function _savaxSubmit(uint _amount) internal returns (uint amountSubmitted, bytes memory logData) {
    amountSubmitted = _amount;

    // Ensure we have enough WAVAX balance
    require(IERC20(wAVAX).balanceOf(address(this)) >= amountSubmitted, 'Insufficient WAVAX balance');

    // Convert WAVAX to native AVAX
    IWAVAX(wAVAX).withdraw(amountSubmitted);

    // Ensure we received the AVAX
    require(address(this).balance >= amountSubmitted, 'WAVAX withdrawal failed');

    // Submit native AVAX to sAVAX (no approval needed for AVAX transfers)
    ISAVAX(sAVAX).submit{ value: amountSubmitted }();

    logData = abi.encode(wAVAX, amountSubmitted);
  }

  function parseInputs(bytes memory _callData) internal pure returns (Params memory inputData) {
    inputData = abi.decode(_callData, (Params));
  }
}
