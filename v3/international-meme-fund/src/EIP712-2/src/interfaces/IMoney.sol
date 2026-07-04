// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

interface IMoney {
    /// @dev Create new supply via collateral backed loans
    function mint(address to, uint256 amount) external;

    /// @dev Destroy supply as loans are repaid
    function shred(address from, uint256 amount) external;
}
