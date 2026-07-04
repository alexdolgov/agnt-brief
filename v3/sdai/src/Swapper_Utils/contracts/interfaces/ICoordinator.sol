// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "../libraries/GPv2Order.sol";

interface ICoordinator {

    function accounts(address proxy) external view returns (address);

		function userProxies(address user) external view returns (address[] memory);

		function UserProxyImplementation() external view returns (address);

    function GPv2Settlement() external view returns (address);

		function GPv2VaultRelay() external view returns (address);

    function allowedAddresses(address contractAddress) external view returns (bool);

    function proxyOwnerAddress(address proxy) external view returns (address);

    function calculateOrderUid(GPv2Order.Data calldata _order, address _user) external pure returns(bytes memory);

    function KIND_SELL() external returns(bytes32);

    function isWagToken(address) external view returns (bool);

		function wrappedToUnderlying(address) external view returns (address);

    function addWagToken(address, address) external;

    function removeWagToken(address) external;

		function addProxyDelegate(address delegate) external;

		function removeProxyDelegate(address delegate) external;

		function activeLoansLength(address user) external view returns (uint256);

		function activeLoanAdd(address user) external;
    
    function activeLoanRemove(address user) external;

    function Utils() external view returns(address);

    function Oracle() external view returns(address);

		function updateProxyOwner(address oldOwner, address newOwner) external;

}