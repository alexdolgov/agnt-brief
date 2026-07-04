// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {IERC20MetadataUpgradeable} from
    "@openzeppelin-contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol";

import {IERC20PermitUpgradeable} from
    "@openzeppelin-contracts-upgradeable/token/ERC20/extensions/IERC20PermitUpgradeable.sol";

interface ITokenV2 is IERC20MetadataUpgradeable, IERC20PermitUpgradeable {
    /// @notice Initialize the token
    /// @dev This can only be called once, the caller would become the owner of the token
    ///      - The decimal is fixed to 18
    /// @param name  The name of the token
    /// @param symbol  The symbol of the token
    /// @param meta  The metadata URI of the token
    /// @param maxSupply  The maximum supply of the token
    function initialize(string memory name, string memory symbol, string memory meta, uint256 maxSupply) external;

    /// @notice Remove the transferring constraints of the token
    /// @dev This can only be called by the owner of the contract
    function removeTransferConstraints() external;

    /// @notice return the metadata URI
    /// This is a Flap defined JSON
    /// e.g:
    /// {
    ///      "name": "My Coin",
    ///      "symbol": "MC",
    ///      "description": "This is my first meme coin",
    ///      "image": "https://arweave.net/xxxxxx",
    ///      "telegram": "https://t.me/xxxx"
    /// }
    function metaURI() external view returns (string memory);

    /// @notice the max supply of the token
    function maxSupply() external view returns (uint256);

    /// @notice the predicted pool address for uniswap v2 & v3
    function pools() external view returns (address v2, address v3);

    //
    // Customized Events to ease the indexer
    //

    // custom transfer event

    /// @notice the same as the ERC20 Transfer event, we intentionally duplicate it here
    /// This would make the indexer easier to index our transfer event only.
    /// To save gas, we remove indexed from the from and to
    event TransferFlapToken(address from, address to, uint256 value);
}
