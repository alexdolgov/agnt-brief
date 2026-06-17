// SPDX-License-Identifier: MIT

pragma solidity ^0.8.21;

import {IOldERC721} from "../../interfaces/IOldERC721.sol";
import {Stash} from "./Stash.sol";
import "@solady/tokens/ERC721.sol" as Solady;

/**
 * @title OldERC721 Wrapper
 * @notice Based on Cryptopunks-721 wrapper.
 * @notice A modern wrapper to enable ERC721 functionality for Old ERC721 contracts (e.g. SuperRare).
 */
contract OldERC721Wrapper is Solady.ERC721 {
    string private _name;
    string private _symbol;
    Stash public immutable stashFactory;
    IOldERC721 public immutable wrapped;

    constructor(string memory name, string memory symbol, address _wrapped) {
        stashFactory = new Stash(address(this));
        wrapped = IOldERC721(_wrapped);
        _name = name;
        _symbol = symbol;
    }
    function name() public view override returns (string memory) {
        return _name;
    }

    function symbol() public view override returns (string memory) {
        return _symbol;
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        return wrapped.tokenURI(tokenId);
    }

    /**
     * @notice Wrap a token. Requires that the user has transferred their token to their Stash.
     * @dev If the user does not have a Stash, one will be deployed for them.
     * @param tokenId The tokenId to wrap.
     */
    function wrap(uint256 tokenId) external {
        address stash = stashFactory.stashAddressFor(msg.sender);

        uint256 size;
        assembly {
            size := extcodesize(stash)
        }

        if (size == 0) {
            stashFactory.deployStash(msg.sender);
        }

        Stash(stash).wrap(wrapped, tokenId);
        _mint(msg.sender, tokenId);
    }

    /**
     * @notice Wrap multiple tokens. Requires that the user has transferred their tokens to their Stash.
     * @dev If the user does not have a Stash, one will be deployed for them.
     * @param tokenIndexes An array of indexes of tokenIds to wrap.
     */
    function wrapBatch(uint256[] calldata tokenIndexes) external {
        address stash = stashFactory.stashAddressFor(msg.sender);

        uint256 size;
        assembly {
            size := extcodesize(stash)
        }

        if (size == 0) {
            stashFactory.deployStash(msg.sender);
        }

        for (uint256 i = 0; i < tokenIndexes.length; ++i) {
            uint256 tokenId = tokenIndexes[i];

            Stash(stash).wrap(wrapped, tokenId);
            _mint(msg.sender, tokenId);
        }
    }

    /**
     * @notice Unwrap. Requires that the caller owns or is approved to transfer the wrapped token.
     * @param tokenId The tokenId to unwrap
     */
    function unwrap(uint256 tokenId) external {
        _unwrap(tokenId);
    }

    /**
     * @notice Unwrap multiple. Requires that the caller owns or is approved to transfer the wrapped.
     * @param tokenIndexes An array of indexes of tokenIds to unwrap
     */
    function unwrapBatch(uint256[] calldata tokenIndexes) external {
        for (uint256 i = 0; i < tokenIndexes.length; i++) {
            uint256 tokenId = tokenIndexes[i];
            _unwrap(tokenId);
        }
    }

    /**
     * @notice Unwrap. Requires that the caller owns or is approved to transfer the wrapped token.
     * @param tokenId The tokenId to unwrap
     */
    function _unwrap(uint256 tokenId) internal {
        _burn(msg.sender, tokenId);
        wrapped.transfer(msg.sender, tokenId);
    }

    /**
     * @notice Returns the address of the Stash for a given user.
     * @param user The user to get the Stash for.
     */
    function stashAddress(address user) external view returns (address) {
        return stashFactory.stashAddressFor(user);
    }

    /**
     * @notice Adapted from https://github.com/chiru-labs/ERC721A/blob/main/contracts/extensions/ERC721AQueryable.sol
     * @dev Returns an array of token IDs owned by `owner`.
     *
     * This function scans the ownership mapping and is O(`totalSupply`) in complexity.
     * It is meant to be called off-chain.
     */
    function tokensOfOwner(
        address owner
    ) external view returns (uint256[] memory) {
        unchecked {
            uint256 tokenIdsIdx;
            uint256 tokenIdsLength = balanceOf(owner);
            uint256[] memory tokenIds = new uint256[](tokenIdsLength);

            for (uint256 i = 0; tokenIdsIdx != tokenIdsLength; ++i) {
                address tokenOwner = _ownerOf(i);
                if (tokenOwner == owner) {
                    tokenIds[tokenIdsIdx++] = i;
                }
            }
            return tokenIds;
        }
    }

    /**
     * @notice Returns the total number of tokens that have been wrapped.
     * @dev This total can be off if tokens have been mistakenly deposited to the wrapper contract.
     * However, any mistakenly deposited tokens are free to be withdrawn by anybody and thus should
     * theoretically not last in the contract for more than a block.
     */
    function totalSupply() external view returns (uint256) {
        return wrapped.balanceOf(address(this));
    }
}
