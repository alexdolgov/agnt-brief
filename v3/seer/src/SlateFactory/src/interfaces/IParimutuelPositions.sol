// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IMarket} from "./IMarket.sol";

/// @notice ParimutuelVault-specific API for parimutuel position tokens (ERC1155 surface from solmate ERC1155).
interface IParimutuelPositions {
    function parimutuelVault() external view returns (address);

    function tokenId(IMarket market, uint256 outcomeIndex) external pure returns (uint256);

    function totalSupply(uint256 id) external view returns (uint256);

    /// @notice Pull underlying from `vault`, escrow it, and mint position tokens to `to`.
    function mint(IMarket market, uint256 outcomeIndex, address to, uint256 amount) external;

    /// @notice Burn position tokens from `from` and release underlying to the vault.
    function releasePositions(IMarket market, uint256 outcomeIndex, address from, uint256 amount) external;
}
