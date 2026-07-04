// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IDelegatable {
    event DelegateAdded(address indexed delegator, address indexed newDelegate);
    event DelegateRemoved(address indexed delegator, address indexed oldDelegate);

    error NullAddr();
    error DelegatedActionFailed();
    error NoDelegate(address caller);
    error NotDelegate(address trader, address caller);

    function setDelegate(address newDelegate) external;
    function removeDelegate() external;
    function delegatedAction(address trader, bytes calldata callData)
        external
        returns (bytes memory);
    function msgSender() external view returns (address);
}
