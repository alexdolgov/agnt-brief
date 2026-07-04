// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

interface IReceiver {
    function receiveData(bytes calldata, uint256) external;
}
