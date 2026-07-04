// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {ERC20Votes, ERC20} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {ERC165} from "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import {IVotes} from "@openzeppelin/contracts/governance/utils/IVotes.sol";

/// @title CommunityTreasuryVotes
/// @author @simondos
/// @notice ERC20Votes for Aragon-based DAO
/// @notice This token is used for voting on DAO proposals, mainly to move grants from the community treasury to projects
/// @notice PolygonLabs multisig has sligthly more voting power as only it can create proposals
/// @notice For a proposal to pass, both multisigs need to vote yes on it

contract CommunityTreasuryVotes is ERC20Votes, ERC165 {
    constructor(address polygonLabs_, address communityTreasuryBoard)
        ERC20("Community Treasury Votes", "CTV")
        EIP712(" Community Treasury Votes", "1.0")
    {
        _mint(polygonLabs_, 5_000_000_001e10);
        super._delegate(polygonLabs_, polygonLabs_);

        _mint(communityTreasuryBoard, 4_999_999_999e10);
        super._delegate(communityTreasuryBoard, communityTreasuryBoard);
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(ERC20).interfaceId || interfaceId == type(IVotes).interfaceId
            || super.supportsInterface(interfaceId);
    }

    function transfer(address, /* to */ uint256 /* value */ ) public pure override returns (bool) {
        revert("Transfers disabled");
    }

    function transferFrom(address, address, uint256) public pure override returns (bool) {
        revert("Transfers disabled");
    }

    function approve(address, uint256) public pure override returns (bool) {
        revert("Approvals disabled");
    }

    function _delegate(address, address) internal pure override {
        revert("Delegations disabled");
    }
}
