// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { InitializeGovernedUpgradeabilityProxy } from "./InitializeGovernedUpgradeabilityProxy.sol";

/**
 * @notice anSProxy delegates calls to an anS implementation
 */
contract anSProxy is InitializeGovernedUpgradeabilityProxy {

}

/**
 * @notice WrappedAnsProxy delegates calls to a wanS implementation
 */
contract WrappedAnsProxy is InitializeGovernedUpgradeabilityProxy {

}

/**
 * @notice AnglesVaultProxy delegates calls to a AnglesVault implementation
 */
contract AnglesVaultProxy is InitializeGovernedUpgradeabilityProxy {

}