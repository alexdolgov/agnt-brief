// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/**
 * @title IMaticTransmitter
 * @author Amir Shirif, Telcoin, LLC.
 * @notice this contract is meant for sending MATIC to a destination with a fee
 */
interface IMaticTransmitter {
  /**
   * @notice sends MATIC to two address
   * @dev a fractional amount of the msg.value is forwarded to a deposit address
   * @param _beneficiary an address to receive MATIC, this amount should be equal to _value
   * @param _feeRecipient an address to receive MATIC, this amount should be equal to _fee
   * @param _value the amount of MATIC sent to the _beneficiary address
   * @param _fee the amount of MATIC sent to the _feeRecipient address
   * @return a boolean value indicating whether the operation succeeded.
   */
  function transmit(address payable _beneficiary, address payable _feeRecipient, uint256 _value, uint256 _fee) external payable returns (bool);
}

/**
 * @title MaticTransmitter
 * @author Amir Shirif, Telcoin, LLC.
 * @notice this contract is meant for sending MATIC to a destination with a fee
 */
contract MaticTransmitter is IMaticTransmitter {
  /**
   * @notice sends MATIC to two address
   * @dev a fractional amount of the msg.value is forwarded to a deposit address
   * @param beneficiary_ an address to receive MATIC, this amount should be equal to _value
   * @param feeRecipient_ an address to receive MATIC, this amount should be equal to _fee
   * @param value_ the amount of MATIC sent to the _beneficiary address
   * @param fee_ the amount of MATIC sent to the _feeRecipient address
   * @return boolean value indicating whether the operation succeeded.
   */
  function transmit(address payable beneficiary_, address payable feeRecipient_, uint256 value_, uint256 fee_) public override payable returns (bool) {
    require((value_ + fee_) == msg.value, "MaticTransmitter: transaction values do not match msg.value");
    (bool sent,) = beneficiary_.call{value: value_}("");
    require(sent, "MaticTransmitter: failed to send Matic to _beneficiary");

    (sent,) = feeRecipient_.call{value: fee_}("");
    require(sent, "MaticTransmitter: failed to send Matic to _feeRecipient");

    return true;
  }
}