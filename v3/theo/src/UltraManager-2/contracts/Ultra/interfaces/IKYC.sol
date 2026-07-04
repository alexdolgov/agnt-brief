// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IKYC {
    struct User {
        bool isKYC;
        bool isBanned;
    }

    function isKYCBulk(address[] calldata _users) external view returns (bool[] memory);

    function isKYC(address user) external view returns (bool);

    function isBanned(address user) external view returns (bool);

    function onlyNotBanned(address user) external view;

    function onlyKyc(address user) external view;

    event GrantKyc(address _investor);
    event RevokeKyc(address _investor);
    event Banned(address _investor, bool _status);
}
