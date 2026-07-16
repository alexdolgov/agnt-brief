// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

/// @title ConnectorRegistry
/// @notice Guardian-controlled allowlist of connector logic contracts that
///         TopazAccounts are permitted to `delegatecall`. This is the security
///         boundary for the DSA-style execution path: only audited connectors
///         may run as an account.
contract ConnectorRegistry {
    address public owner;
    mapping(address => bool) public isConnector;

    event ConnectorSet(address indexed connector, bool allowed);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    error NotOwner();
    error ZeroAddress();

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner();
        _;
    }

    constructor(address _owner) {
        if (_owner == address(0)) revert ZeroAddress();
        owner = _owner;
        emit OwnershipTransferred(address(0), _owner);
    }

    function setConnector(address connector, bool allowed) external onlyOwner {
        if (connector == address(0)) revert ZeroAddress();
        isConnector[connector] = allowed;
        emit ConnectorSet(connector, allowed);
    }

    function transferOwnership(address newOwner) external onlyOwner {
        if (newOwner == address(0)) revert ZeroAddress();
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
}
