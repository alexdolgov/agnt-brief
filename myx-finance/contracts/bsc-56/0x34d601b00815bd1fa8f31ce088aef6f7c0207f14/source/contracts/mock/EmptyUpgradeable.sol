// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract EmptyUpgradeable is Initializable, UUPSUpgradeable {

    function initialize() public initializer {
    }

    function _authorizeUpgrade(address) internal override {

    }
}
