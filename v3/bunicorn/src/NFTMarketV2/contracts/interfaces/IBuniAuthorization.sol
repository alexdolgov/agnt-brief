// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

interface IBuniAuthorization {
    function authorize(
        bytes32 _message,
        uint128 _requestId,
        bytes memory _signature
    ) external;

    function revoke(
        bytes32 _message,
        uint128 _requestId,
        bytes memory _signature
    ) external;
}