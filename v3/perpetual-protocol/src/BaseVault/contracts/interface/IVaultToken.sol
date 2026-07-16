// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;

import { IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

interface IVaultToken is IERC20Upgradeable {
    function mint(address account, uint256 amount) external;

    function burn(address account, uint256 amount) external;

    /**
     * @notice Returns the cooldown time for asset transfers in seconds
     */
    function getTransferCooldown() external view returns (uint24);

    function getTotalSupplyCap() external view returns (uint256);

    function getMinter() external view returns (address);

    function getLastMintedAt(address account) external view returns (uint256);
}
