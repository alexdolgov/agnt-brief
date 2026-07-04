// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {ERC20Upgradeable} from "openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol";
import {PausableUpgradeable} from "openzeppelin-contracts-upgradeable/contracts/security/PausableUpgradeable.sol";
import {Ownable2StepUpgradeable} from "openzeppelin-contracts-upgradeable/contracts/access/Ownable2StepUpgradeable.sol";

abstract contract SuperstateTokenCore is ERC20Upgradeable, PausableUpgradeable, Ownable2StepUpgradeable {
    // The only 3 contracts that will have continuous storage layout
    // so that we can maintain consistency between already launched Token V5 and the current token V6
}