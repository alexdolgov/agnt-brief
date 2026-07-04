// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import {ERC721} from "openzeppelin/token/ERC721/ERC721.sol";
import {ILineOfCredit} from "../../interfaces/ILineOfCredit.sol";
import {ILineFactory} from "../../interfaces/ILineFactory.sol";
import {IEscrowedLine} from "../../interfaces/IEscrowedLine.sol";
import {IEscrow} from "../../interfaces/IEscrow.sol";
import {ICreditPositionToken} from "../../interfaces/ICreditPositionToken.sol";

/**
 * @title  - CreditPositionToken
 * @author - Credit Cooperative
 * @notice - ERC721 token representing a credit positions for Credit Coop credit lines.
 */
contract CreditPositionToken is ERC721, ICreditPositionToken {
    uint256 private _tokenIds;
    address private _lineFactory;
    mapping(uint256 => address) private tokenToLine;
    mapping(uint256 => uint256) private tokenToOpenProposals;

    // Transfer Restiction
    mapping(uint256 => bool) private _isTransferRestricted;
    mapping(uint256 => mapping(address => bool)) private _transferApproval;

    constructor(address lineFactory) ERC721("CreditPositionToken", "CPT") {
        _lineFactory = lineFactory;
    }

    /**
     * @notice -  Mint a new CreditPositionToken
     * @dev - only callable by a Line contract
     * @param to   - address to mint the token to
     * @param line - address of the LineOfCredit contract
     * @param isTransferRestricted - bool to determine if the token is transfer restricted
     * @return newItemId - the tokenId of the newly minted token
     */
    function mint(address to, address line, bool isTransferRestricted) public returns (uint256) {
        if (!ILineFactory(_lineFactory).isLine(msg.sender)) {
            revert CallerIsNotLine();
        }
        _tokenIds++;
        uint256 newItemId = _tokenIds;
        tokenToLine[newItemId] = line;
        _mint(to, newItemId);

        if (isTransferRestricted) {
            _isTransferRestricted[newItemId] = true;
        }
        return newItemId;
    }

    /**
     * @notice - tracks that owner of this token has opened a proposal
     * @param tokenId - the tokenId of the token to burn
     */
    function openProposal(uint256 tokenId) public {
        if (msg.sender != tokenToLine[tokenId]) {
            revert CallerIsNotLine();
        }
        tokenToOpenProposals[tokenId]++;
    }

    /**
     * @notice - tracks that owner of this token has closed a proposal
     * @param tokenId - the tokenId of the token to burn
     */
    function closeProposal(uint256 tokenId) public {
        if (msg.sender != tokenToLine[tokenId]) {
            revert CallerIsNotLine();
        }
        tokenToOpenProposals[tokenId]--;
    }

    /**
     * @notice - the borrower of a line allows the owner of the token to transfer the token
     * @param tokenId - the tokenId of the token to burn
     * @param to - the address we are transferring the token to
     */
    function approveTokenTransfer(uint256 tokenId, address to) external {
        address loc = tokenToLine[tokenId];
        require(loc != address(0), "Token does not belong to a line");
        require(msg.sender == ILineOfCredit(loc).borrower(), "Only borrower can approve");
        _transferApproval[tokenId][to] = true;
    }

    /**
     * @notice - checks count for a tokenId
     * @dev - if count != 0, do not transfer the token
     * @param to - the address we are transferring the token to
     * @param tokenId - the tokenId of the token we are checking
     * @param auth - the address of the caller
     * @return - the address of the previous owner
     */
    function _update(address to, uint256 tokenId, address auth) internal override(ERC721) returns (address) {
        if (tokenToOpenProposals[tokenId] != 0) {
            revert OpenProposals();
        }

        if (_isTransferRestricted[tokenId]) {
            if (_transferApproval[tokenId][to] == false) {
                revert PositionTokenTransferRestricted();
            }
            _transferApproval[tokenId][to] = false; // so you cant trade back and forth
        }
        return super._update(to, tokenId, auth);
    }

    /**
     * @notice - get the loan info of a position
     * @param tokenId - the tokenId of the token to get the info for
     * @return  -  the info of the position
     */
    function getPositionInfo(uint256 tokenId) external view returns (ICreditPositionToken.PositionInfo memory) {
        address line = tokenToLine[tokenId];

        ILineOfCredit.Credit memory credit = ILineOfCredit(line).getCreditPosition(tokenId);

        (uint128 dRate, uint128 fRate) = ILineOfCredit(line).getRates(tokenId);
        uint256 deposit = credit.deposit;
        uint256 principal = credit.principal;
        uint256 interestAccrued = credit.interestAccrued;
        uint256 interestRepaid = credit.interestRepaid;
        uint256 deadline = credit.deadline;

        address escrow = address(IEscrowedLine(line).escrow());
        uint256 mincratio = IEscrow(escrow).minimumCollateralRatio();

        return ICreditPositionToken.PositionInfo(
            line, tokenId, deposit, principal, interestAccrued, interestRepaid, dRate, fRate, deadline, mincratio
        );
    }

    /**
     * @notice - get the collateral ratio of a line
     * @param tokenId - the tokenId of the token to get the collateral ratio for
     * @return cratio - the collateral ratio of the line
     */
    function getCRatio(uint256 tokenId) external returns (uint256) {
        address line = tokenToLine[tokenId];

        address escrow = address(IEscrowedLine(line).escrow());
        uint256 cratio = IEscrow(escrow).getCollateralRatio();
        return cratio;
    }
}
