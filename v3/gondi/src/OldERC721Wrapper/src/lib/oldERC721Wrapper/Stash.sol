// SPDX-License-Identifier: MIT

pragma solidity ^0.8.21;

import "@forge-std/console.sol";
import "@solmate/utils/SafeTransferLib.sol";
import {StashFactory} from "./StashFactory.sol";
import {IOldERC721} from "../../interfaces/IOldERC721.sol";
import {ERC721} from "@solmate/tokens/ERC721.sol";
import {ERC1155} from "@solmate/tokens/ERC1155.sol";
import {ERC20} from "@solmate/tokens/ERC20.sol";

/**
 * @title Stash
 * @author Gondi
 * @notice Based on Cryptopunks-721 Stash.
 * @notice A multipurpose user deployed contract.
 */
contract Stash is StashFactory {
    using SafeTransferLib for ERC20;

    // --------------------- ERRORS ------------------------

    error AlreadyInitialized();
    error RequestExceedsAvailableBalance();
    error Unauthorized();

    // --------------------- MODIFIERS ---------------------

    modifier onlyOwner() {
        if (msg.sender != owner) revert Unauthorized();
        _;
    }

    // -------------------- CONSTRUCTOR --------------------

    constructor(address wrapper) {
        _WRAPPER = ERC721(wrapper);
        _initialized = true;
    }

    // --------------------- STORAGE ---------------------

    /// @dev Whether or not the contract has been initialized.
    bool private _initialized;

    /// @notice The token wrapper smart contract.
    address public owner;

    // --------------------- IMMUTABLE ---------------------

    /// @notice The token wrapper smart contract.
    ERC721 public immutable _WRAPPER;

    // --------------------- EXTERNAL ---------------------

    /**
     * @notice Initializes the contract. This is called only once upon deployment by the StashFactory.
     * @param _owner The permanent and immutable owner of the stash.
     */
    function initialize(address _owner) external {
        if (_initialized) revert AlreadyInitialized();

        owner = _owner;
        _initialized = true;
    }

    // --------------------- WITHDRAWALS ---------------------

    /**
     * @notice Used by the SuperRareWrapper contract to wrap punks. Punks must be deposited to the Stash for wrapping.
     * @param tokenAddress The address of the token to wrap.
     * @param tokenId The index of the token to wrap.
     */
    function wrap(IOldERC721 tokenAddress, uint256 tokenId) external {
        if (msg.sender != address(_WRAPPER)) revert Unauthorized();

        tokenAddress.transfer(address(_WRAPPER), tokenId);
    }

    /**
     * @notice withdraws funds from the stash.
     * @param tokenAddress The address of the token to withdraw. Zero address for ETH.
     * @param amount The amount to withdraw in wei.
     * @dev This function allows withdrawal of funds that are not committed to an active bid. It will also
     * clean up any stale bids that have been finalized or expired.
     */
    function withdrawERC20(
        address tokenAddress,
        uint256 amount
    ) external onlyOwner {
        ERC20 tokenContract = ERC20(tokenAddress);
        uint256 tokenBalance = tokenContract.balanceOf(address(this));

        if (amount > tokenBalance) revert RequestExceedsAvailableBalance();
        tokenContract.safeTransfer(owner, amount);
    }

    /**
     * @notice Convenience function to withdraw ERC721 tokens from the stash.
     * @param tokenAddress The address of the token to withdraw.
     * @param tokenIds An array of token IDs to withdraw.
     */
    function withdrawERC721(
        address tokenAddress,
        uint256[] calldata tokenIds
    ) external onlyOwner {
        ERC721 tokenContract = ERC721(tokenAddress);

        for (uint256 i = 0; i < tokenIds.length; ++i) {
            tokenContract.transferFrom(address(this), owner, tokenIds[i]);
        }
    }

    /**
     * @notice Convenience function to withdraw ERC1155 tokens from the stash.
     * @param tokenAddress The address of the token to withdraw.
     * @param tokenIds An array of token IDs to withdraw.
     * @param amounts An array of amounts to withdraw.
     */
    function withdrawERC1155(
        address tokenAddress,
        uint256[] calldata tokenIds,
        uint256[] calldata amounts
    ) external onlyOwner {
        ERC1155 tokenContract = ERC1155(tokenAddress);

        for (uint256 i = 0; i < tokenIds.length; ++i) {
            tokenContract.safeTransferFrom(
                address(this),
                owner,
                tokenIds[i],
                amounts[i],
                ""
            );
        }
    }

    /**
     * @notice Convenience function to abort  from the stash.
     * @param tokenIds An array of punk IDs to withdraw.
     */
    function withdrawOldERC721(
        IOldERC721 tokenAddress,
        uint256[] calldata tokenIds
    ) external onlyOwner {
        for (uint256 i = 0; i < tokenIds.length; ++i) {
            tokenAddress.transfer(owner, tokenIds[i]);
        }
    }
}
