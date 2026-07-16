// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/// @notice Minimal ERC1155 surface used by slate factory transfers.
interface IERC1155 {
    function balanceOf(address account, uint256 id) external view returns (uint256);

    function isApprovedForAll(address account, address operator) external view returns (bool);

    function setApprovalForAll(address operator, bool approved) external;

    function safeTransferFrom(address from, address to, uint256 id, uint256 amount, bytes calldata data) external;
}
