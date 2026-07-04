// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IMarket} from "./IMarket.sol";

/// @notice ERC1155 position tokens for CentralVault entries (1:1 backed by Seer outcome ERC20s).
interface ICVPositions {
    event TransferSingle(
        address indexed operator, address indexed from, address indexed to, uint256 id, uint256 value
    );

    event TransferBatch(
        address indexed operator, address indexed from, address indexed to, uint256[] ids, uint256[] values
    );

    event ApprovalForAll(address indexed account, address indexed operator, bool approved);

    function centralVault() external view returns (address);

    function tokenId(IMarket market, uint256 outcomeIndex) external pure returns (uint256);

    function totalSupply(uint256 id) external view returns (uint256);

    function balanceOf(address account, uint256 id) external view returns (uint256);

    function isApprovedForAll(address account, address operator) external view returns (bool);

    function setApprovalForAll(address operator, bool approved) external;

    function safeTransferFrom(address from, address to, uint256 id, uint256 value, bytes calldata data) external;

    /// @notice Pull underlying from `vault`, escrow it, and mint position tokens to `to`.
    function mint(IMarket market, uint256 outcomeIndex, address to, uint256 amount) external;

    /// @notice Burn position tokens from `from` and release underlying to the vault.
    function releasePositions(IMarket market, uint256 outcomeIndex, address from, uint256 amount) external;
}
