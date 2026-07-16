// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

import "./Create3.sol";
import {Auth, Authority} from "solmate/auth/Auth.sol";

contract CornDeployer is Auth {
    string public constant name = "Corn Deployer";

    event ContractDeployed(address indexed contractAddress, string contractName, bytes32 salt);

    constructor() Auth(msg.sender, Authority(address(0))) {}

    /**
     * @notice Deploy a contract using salt in string format and arbitrary runtime code.
     *     @dev Intended use is: get the future Corn addresses, then deploy the appropriate contract to each address via this method, building the constructor using the mapped addresses
     *     @dev no enforcment of bytecode at address as we can't know the runtime code in this contract due to space constraints
     */
    function _deploy(string memory _saltString, bytes memory _creationCode)
        internal
        returns (address deployedAddress)
    {
        bytes32 _salt = keccak256(abi.encodePacked(_saltString));
        deployedAddress = Create3.create3(_salt, _creationCode);
        emit ContractDeployed(deployedAddress, _saltString, _salt);
    }

    /**
     * @notice Deploy a contract using salt in string format and arbitrary runtime code.
     *     @dev Intended use is: get the future Corn addresses, then deploy the appropriate contract to each address via this method, building the constructor using the mapped addresses
     *     @dev no enforcment of bytecode at address as we can't know the runtime code in this contract due to space constraints
     */
    function deploy(string memory _saltString, bytes memory _creationCode)
        public
        requiresAuth
        returns (address deployedAddress)
    {
        return _deploy(_saltString, _creationCode);
    }

    function deployWithCreationCodeAndConstructorArgs(
        string memory _saltString,
        bytes memory creationCode,
        bytes memory constructionArgs
    ) external requiresAuth returns (address) {
        bytes memory _data = abi.encodePacked(creationCode, constructionArgs);
        return _deploy(_saltString, _data);
    }

    function deployWithCreationCode(string memory _saltString, bytes memory creationCode)
        external
        requiresAuth
        returns (address)
    {
        return _deploy(_saltString, creationCode);
    }

    function addressOf(string memory _saltString) external view returns (address) {
        bytes32 _salt = keccak256(abi.encodePacked(_saltString));
        return Create3.addressOf(_salt);
    }

    function addressOfSalt(bytes32 _salt) external view returns (address) {
        return Create3.addressOf(_salt);
    }

    /**
     * @notice Create the creation code for a contract with the given runtime code.
     *     @dev credit: https://github.com/0xsequence/create3/blob/master/contracts/test_utils/Create3Imp.sol
     */
    function creationCodeFor(bytes memory _code) internal pure returns (bytes memory) {
        /*
      0x00    0x63         0x63XXXXXX  PUSH4 _code.length  size
      0x01    0x80         0x80        DUP1                size size
      0x02    0x60         0x600e      PUSH1 14            14 size size
      0x03    0x60         0x6000      PUSH1 00            0 14 size size
      0x04    0x39         0x39        CODECOPY            size
      0x05    0x60         0x6000      PUSH1 00            0 size
      0x06    0xf3         0xf3        RETURN
      <CODE>
        */

        return abi.encodePacked(hex"63", uint32(_code.length), hex"80600E6000396000F3", _code);
    }
}
