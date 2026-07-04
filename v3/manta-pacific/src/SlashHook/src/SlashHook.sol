// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IDelegatorHook} from "@symbiotic/interfaces/delegator/IDelegatorHook.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract SlashHook is IDelegatorHook, OwnableUpgradeable {
    function initialize() external initializer {
        __Ownable_init(msg.sender);
    }

    function onSlash(
        bytes32 _subnetwork,
        address _operator,
        uint256 _amount,
        uint48 _captureTimestamp,
        bytes calldata _data
    ) external virtual override {
        _onSlash(_subnetwork, _operator, _amount, _captureTimestamp, _data);
    }

    function _onSlash(
        bytes32 _subnetwork,
        address _operator,
        uint256 _amount,
        uint48 _captureTimestamp,
        bytes calldata _data
    ) internal virtual {
        // TODO
    }
}
