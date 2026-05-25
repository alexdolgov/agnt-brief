// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.18;

import "../interface/IVRFConsumer.sol";
import "../interface/IVRFCoordinator.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract SimpleVRFConsumer is OwnableUpgradeable, IVRFConsumer {
    address public vrfCoordinator;
    uint256[] public randomNumbers;

    function initialize(address vrfCoordinator_) external initializer {
        __Ownable_init_unchained();
        vrfCoordinator = vrfCoordinator_;
    }

    function updateRandomNumbers(
        IVRFCoordinator.ClientData[] calldata clientData
    ) external onlyOwner {
        IVRFCoordinator(vrfCoordinator).requestRandomNumbers(clientData);
    }

    function fulfillRandomNumbers(
        uint256 requestId,
        uint256[] calldata randomNumbers_
    ) external {
        if (msg.sender != vrfCoordinator) {
            revert OnlyCoordinatorCanFulfill(msg.sender, vrfCoordinator);
        }
        randomNumbers = randomNumbers_;
    }
}
