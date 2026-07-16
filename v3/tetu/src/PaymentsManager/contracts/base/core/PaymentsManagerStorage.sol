// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;


import "../../openzeppelin/Initializable.sol";
import "../../interfaces/IPaymentsManager.sol";
import "../controller/Controllable.sol";

/// @title Storage for any RequestsManager variables
/// @author dvpublic
abstract contract PaymentsManagerStorage
is Initializable
, Controllable
, IPaymentsManager
{
  // don't change names or ordering!

  // *****************************************************
  // *************** Constants ***************************
  // *****************************************************

  /// @notice Version of the contract
  /// @dev Should be incremented when contract changed
  string public constant VERSION = "1.0.0";



  // *****************************************************
  // **************** Events *****************************
  // *****************************************************

  event OnPayment(address wallet, uint amountST, address salaryToken);
  event OnTokenMoved(address token, uint amount);

  //slither-disable-next-line unused-state
  uint[50] private ______gap;
}