// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.18;

interface IAntiMev {
    function challenge(bytes memory) external;
}
