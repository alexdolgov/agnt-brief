// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.18;

interface IVRFConsumer {
    error OnlyCoordinatorCanFulfill(address have, address want);

    function fulfillRandomNumbers(
        uint256 requestId,
        uint256[] calldata randomNumbers
    ) external;
}
