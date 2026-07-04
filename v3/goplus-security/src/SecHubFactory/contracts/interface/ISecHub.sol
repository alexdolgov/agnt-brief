// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface ISecHub {
    function subscribeSecWare(
        address secWare,
        uint24 serviceId,
        uint256 expiration
    ) external;

    function configureSecWare(address secWare, bytes calldata config) external;

    function onTransferred(address to) external;

    function serviceExpiration(
        address secWare,
        uint24 serviceId
    ) external view returns (uint256);

}
