// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IDelegatable {
    event DelegateAdded(address indexed delegator, address indexed newDelegate);
    event DelegateRemoved(address indexed delegator, address indexed oldDelegate);

    error NullAddr();
    error SignatureExpired();
    error InvalidNonce();
    error InvalidSignature();
    error DelegateReentrant();
    error InvalidCallData();
    error DelegateForbidden();
    error DelegatedActionFailed();
    error NoDelegate(address caller);
    error NotDelegate(address trader, address caller);

    function DELEGATION_TYPEHASH() external view returns (bytes32);
    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function delegatableNonces(address delegator) external view returns (uint256);
    function setDelegate(address newDelegate) external;
    function setDelegateWithSignature(
        address delegator,
        address delegate,
        uint256 nonce,
        uint256 expiry,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;
    function removeDelegate() external;
    function delegatedAction(address trader, bytes calldata callData)
        external
        returns (bytes memory);
    function msgSender() external view returns (address);
}
