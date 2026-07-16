// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

import "src/vendors/LayerZeroV1/IOFTCoreUpgradeable.sol";
import "lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/IERC20Upgradeable.sol";

/**
 * @dev Interface of the OFT standard
 */
interface IOFTUpgradeable is IOFTCoreUpgradeable, IERC20Upgradeable {

}
