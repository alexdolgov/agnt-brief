// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IBurner} from "@symbiotic/interfaces/slasher/IBurner.sol";

contract SlashBurner is IBurner, OwnableUpgradeable {
    function initialize() external initializer {
        __Ownable_init(msg.sender);
    }

    function onSlash(
        bytes32 _subnetwork,
        address _operator,
        uint256 _amount,
        uint48 _captureTimestamp
    ) external virtual override {
        _onSlash(_subnetwork, _operator, _amount, _captureTimestamp);
    }

    function _onSlash(
        bytes32 _subnetwork,
        address _operator,
        uint256 _amount,
        uint48 _captureTimestamp
    ) internal virtual {
        // TODO
    }
}
