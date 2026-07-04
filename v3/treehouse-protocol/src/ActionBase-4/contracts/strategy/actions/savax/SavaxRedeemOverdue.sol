// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

import '../../libs/TokenUtils.sol';
import '../ActionBase.sol';
import './helpers/SavaxHelper.sol';
import '../../../interfaces/savax/ISAVAX.sol';

/// @title Start sAVAX withdrawal process
contract SavaxRedeemOverdue is ActionBase, SavaxHelper {
  using TokenUtils for address;
  string constant NAME = 'SavaxRedeemOverdue';

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
    (uint amountReturnedInSavax, bytes memory logData) = _savaxRedeemOverdue();
    emit ActionEvent(NAME, logData);

    return bytes32(amountReturnedInSavax);
  }

  //////////////////////////// ACTION LOGIC ////////////////////////////

  function _savaxRedeemOverdue() internal returns (uint redeemedSavaxAmt, bytes memory logData) {
    ISAVAX savax = ISAVAX(sAVAX);
    // Get address's savax wallet balance
    uint savaxBalanceBefore = savax.balanceOf(address(this));
    // Redeem overdue shares
    savax.redeemOverdueShares();
    uint savaxBalanceAfter = savax.balanceOf(address(this));

    // Safety check to prevent underflow
    require(savaxBalanceAfter >= savaxBalanceBefore, 'Unexpected balance decrease');

    // Calculate the amount redeemed
    redeemedSavaxAmt = savaxBalanceAfter - savaxBalanceBefore;
    logData = abi.encode(redeemedSavaxAmt);
  }
}
