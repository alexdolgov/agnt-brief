// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

/// Minted ERC-20 tokens represents an Ethereum ERC-20 tokens on L2.
interface IMintedBurnableERC20 {
    function mint(address account, uint256 amount) external returns (bool);
    function burn(uint256 value) external;
    function burnFrom(address account, uint256 value) external;
}
