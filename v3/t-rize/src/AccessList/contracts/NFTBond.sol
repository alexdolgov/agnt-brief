// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {ERC721Enumerable, ERC721} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import {IERC165} from "@openzeppelin/contracts/interfaces/IERC165.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol"; // solhint-disable-line

import {INFTBond} from "./interfaces/INFTBond.sol";
import {AccessRestricted} from "./configuration/AccessRestricted.sol";

/**
 * @title NFTBond
 * @author Michael Duchesne (michael.duchesne@t-rize.io)
 * @notice
 *
 * NFT to represent the governance bonds
 *
 * ## Soulbound
 * Tokens are soulbound until the committee decides to enable transfer
 *
 */
contract NFTBond is
    ERC721Enumerable,
    INFTBond,
    AccessRestricted,
    AccessControl
{
    bool private _soulBound = true;
    uint256 private _tokenId;

    bytes32 public constant MINTER_ROLE = keccak256("MINTER");

    event SoulBindingSpellBroken();

    error TokensAreSoulBound();

    constructor(
        address accessList
    ) ERC721("Rize Governance", "gRIZE") AccessRestricted(accessList) {}

    function addMinter(address newMinter) external onlyCommittee {
        _grantRole(MINTER_ROLE, newMinter);
    }

    function removeMinter(address minter) external onlyCommittee {
        _revokeRole(MINTER_ROLE, minter);
    }

    function isMinter(address addrezz) external view returns (bool) {
        return hasRole(MINTER_ROLE, addrezz);
    }

    /**
     * @notice Mints an NFT
     * @param to destination address
     */
    function mint(address to) public onlyRole(MINTER_ROLE) returns (uint256) {
        _tokenId += 1;
        _safeMint(to, _tokenId);
        return _tokenId;
    }

    /**
     * @notice WARNING: This action is irreversible
     * Enables transfer of tokens.
     * Requires caller to be committee
     */
    function breakSoulBoundSpell() public onlyCommittee {
        _soulBound = false;
        emit SoulBindingSpellBroken();
    }

    function supportsInterface(
        bytes4 interfaceId
    )
        public
        view
        virtual
        override(AccessControl, ERC721Enumerable, IERC165)
        returns (bool)
    {
        return
            interfaceId == type(INFTBond).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal virtual override returns (address) {
        if (auth != address(0) && _soulBound) {
            revert TokensAreSoulBound();
        }

        return super._update(to, tokenId, auth);
    }
}
