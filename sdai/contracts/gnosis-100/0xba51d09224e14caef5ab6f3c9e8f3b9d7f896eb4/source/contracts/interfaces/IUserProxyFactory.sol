// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

interface IUserProxyFactory {

    function generateUserProxy(address owner, uint256 index) external returns(address newUserProxy);

}