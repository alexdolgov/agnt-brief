// SPDX-License-Identifier: MIT
pragma solidity 0.6.11;

interface IMappingContract{
    function getFetchID(bytes32 _id) external view returns(bytes32);
}
// 2023 Liquid Loans