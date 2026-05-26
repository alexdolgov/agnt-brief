// SPDX-License-Identifier: MIT

pragma solidity =0.7.6;

interface IAdmin {
    event NewAdmin(address indexed newAdmin);

    function admin() external view returns (address);

    function setAdmin(address newAdmin) external;
}
