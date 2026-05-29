// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface IAuthorizationContract {
    function isAccountAuthorized(address _to) external view returns (bool);
}
