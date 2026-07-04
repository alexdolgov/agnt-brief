// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/**
 * @title IShareToken
 * @notice Minimal ERC20-compatible interface expected by the protocol's deposit and redemption flows.
 * @dev Implemented by {ShareToken}. Functions are deliberately narrow to reduce coupling.
 * - All amounts use the token's own decimals.
 * - {mint} and {burn} are typically restricted via AccessManager roles in the implementation.
 */
interface IShareToken {
    function burn(address user, uint256 amount) external;
    function mint(address to, uint256 amount) external;
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function transfer(address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
    function decimals() external view returns (uint8);
}
