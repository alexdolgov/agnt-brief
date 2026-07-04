// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

import '../../libs/TokenUtils.sol';
import '../ActionBase.sol';
import './helpers/SavaxHelper.sol';
import '../../../interfaces/savax/ISAVAX.sol';
import '../../../interfaces/IWAVAX.sol';

/// @title Start sAVAX withdrawal process
contract SavaxRedeem is ActionBase, SavaxHelper {
  using TokenUtils for address;
  string constant NAME = 'SavaxRedeem';

  /// @inheritdoc ActionBase
  function getId() public pure override returns (bytes4) {
    return bytes4(keccak256(abi.encodePacked(NAME)));
  }

  /// @inheritdoc ActionBase
  function executeAction(
    bytes calldata /*_callData*/,
    uint8[] memory /*_paramMapping*/,
    bytes32[] memory /*_returnValues*/
  ) public payable virtual override returns (bytes32) {
    (uint amountUnlockInAvax, bytes memory logData) = _savaxRedeem();
    emit ActionEvent(NAME, logData);

    return bytes32(amountUnlockInAvax);
  }

  //////////////////////////// ACTION LOGIC ////////////////////////////

  function _savaxRedeem() internal returns (uint redeemedAvaxAmt, bytes memory logData) {
    ISAVAX savax = ISAVAX(sAVAX);

    uint avaxBalanceBefore = address(this).balance;
    savax.redeem();
    uint avaxBalanceAfter = address(this).balance;

    // Safety check to prevent underflow
    require(avaxBalanceAfter >= avaxBalanceBefore, 'Unexpected balance decrease');
    redeemedAvaxAmt = avaxBalanceAfter - avaxBalanceBefore;
    // Convert native AVAX to WAVAX
    IWAVAX(wAVAX).deposit{ value: redeemedAvaxAmt }();

    logData = abi.encode(redeemedAvaxAmt);
  }
}
