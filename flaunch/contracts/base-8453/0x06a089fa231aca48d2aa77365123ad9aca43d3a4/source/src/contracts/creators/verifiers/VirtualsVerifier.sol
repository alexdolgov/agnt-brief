// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Ownable} from '@solady/auth/Ownable.sol';

import {EnumerableSet} from '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';

import {IImportVerifier} from '@flaunch-interfaces/IImportVerifier.sol';


/**
 * Interface for the Virtuals AgentToken contract.
 */
interface IAgentToken {
    function owner() external view returns (address owner_);
}


/**
 * Confirms that a memecoin is a Virtuals AgentToken. For an AgentToken to be valid, it must have been
 * successfully launched and deployed on the Virtuals platform, and the sender must be the owner of the
 * AgentToken on the contract.
 */
contract VirtualsVerifier is IImportVerifier, Ownable {

    using EnumerableSet for EnumerableSet.AddressSet;

    error ZeroAddress();

    event AgentTokenImplementationSet(address indexed _agentTokenImplementation, bool _valid);

    /// The VirtualsAgentToken implementation contract
    EnumerableSet.AddressSet internal _agentTokenImplementations;

    /**
     * Registers the contract owner.
     */
    constructor () {
        // Set the owner to the deployer
        _initializeOwner(msg.sender);
    }

    /**
     * Checks if a token was deployed from a supported Virtuals AgentToken implementation.
     *
     * @param _token The address of the token to verify
     * @param _sender The address of the sender
     *
     * @return bool True if the token is a Virtuals AgentToken, false otherwise
     */
    function isValid(address _token, address _sender) public view returns (bool) {
        // If the token is not a Virtuals AgentToken, then it is not valid
        if (!_agentTokenImplementations.contains(_getImplementation(_token))) {
            return false;
        }

        // Confirm that the sender is an owner of the AgentToken
        return IAgentToken(_token).owner() == _sender;
    }

    /**
     * Sets or removes a Virtuals AgentToken implementation address.
     *
     * @param _agentTokenImplementation The address of the AgentToken implementation
     * @param _valid Whether the implementation is valid
     */
    function setAgentTokenImplementation(address _agentTokenImplementation, bool _valid) external onlyOwner {
        // Ensure that the AgentToken implementation is not a zero address
        if (_agentTokenImplementation == address(0)) {
            revert ZeroAddress();
        }

        // Add or remove the Zora coin implementation
        if (_valid) {
            _agentTokenImplementations.add(_agentTokenImplementation);
        } else {
            _agentTokenImplementations.remove(_agentTokenImplementation);
        }

        emit AgentTokenImplementationSet(_agentTokenImplementation, _valid);
    }

    /**
     * Gets the implementation of a proxy contract.
     *
     * @param _proxy The address of the proxy contract
     *
     * @return implementation_ The address of the implementation contract
     */
    function _getImplementation(address _proxy) internal view returns (address implementation_) {
        // Decode the EIP-1167 minimal proxy pattern
        bytes memory code = new bytes(45);
        assembly {
            extcodecopy(_proxy, add(code, 32), 0, 45)
        }

        // EIP-1167 minimal proxy: 0x363d3d373d3d3d363d73<20-byte impl>5af43d82803e903d91602b57fd5bf3
        // The implementation address is at offset 10 (after 0x363d3d373d3d3d363d73)
        if (
            code.length == 45 &&
            uint8(code[0]) == 0x36 &&
            uint8(code[1]) == 0x3d &&
            uint8(code[2]) == 0x3d &&
            uint8(code[3]) == 0x37 &&
            uint8(code[4]) == 0x3d &&
            uint8(code[5]) == 0x3d &&
            uint8(code[6]) == 0x3d &&
            uint8(code[7]) == 0x36 &&
            uint8(code[8]) == 0x3d &&
            uint8(code[9]) == 0x73
        ) {
            assembly {
                implementation_ := mload(add(code, 30)) // 10+20=30
            }
        }
    }

}