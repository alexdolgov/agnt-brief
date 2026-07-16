// SPDX-License-Identifier: ISC
/**
* By using this software, you understand, acknowledge and accept that Tetu
* and/or the underlying software are provided “as is” and “as available”
* basis and without warranties or representations of any kind either expressed
* or implied. Any use of this open source software released under the ISC
* Internet Systems Consortium license is done at your own risk to the fullest
* extent permissible pursuant to applicable law any and all liability as well
* as all warranties, including any fitness for a particular purpose with respect
* to Tetu and/or the underlying software and the use thereof are disclaimed.
*/
pragma solidity 0.8.4;

import "./TokenRetranslator.sol";


/// @title Deploy TokenRetranslator with CREATE2 function
/// @author belbix
contract TokenRetranslatorFactory {

  event Created(address addr, bytes32 salt);

  function deploy(address _owner, bytes32 _salt) external {
    bytes memory bytecode = type(TokenRetranslator).creationCode;
    address addr;
    assembly {
      addr := create2(0, add(bytecode, 32), mload(bytecode), _salt)
    }
    TokenRetranslator(addr).initialize(_owner);
    emit Created(addr, _salt);
  }

}
