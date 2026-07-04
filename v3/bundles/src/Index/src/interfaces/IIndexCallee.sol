// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IIndexCallee {
    function execute(bytes memory _data) external;
}
