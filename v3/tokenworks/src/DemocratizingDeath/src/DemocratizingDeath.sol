// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {Ownable} from "solady/auth/Ownable.sol";
import {ERC721} from "solady/tokens/ERC721.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {LibString} from "solady/utils/LibString.sol";
import {IAsync} from "./IAsync.sol";

/// @title Democratizing Death - An ERC721 wrapper contract that allows anyone to use Death's Hand from XCOPY's DOOM Party (2020).
/// @author TokenWorks (https://token.works/)
contract DemocratizingDeath is Ownable, ReentrancyGuard, ERC721 {
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™                ™™™™™™™™™™™                ™™™™™™™™™™™ */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™               ™™™™™™™™™™™™               ™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™              ™™™™™™™™™™™™™              ™™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™            ™™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /*                ™™™™™™™™™™™            ™™™™™™™™™™™           ™™™™™™™™™™™™™™™           ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™        ™™™™™™™™™™™™™™™™™™™        ™™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™™       ™™™™™™™™™ ™™™™™™™™™       ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™™ ™™™™™™™™™™      ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™   ™™™™™™™™™      ™™™™™™™™™™       */
    /*                ™™™™™™™™™™™                ™™™™™™™™™™    ™™™™™™™™™™    ™™™™™™™™™    ™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™   ™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™  ™™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™         */
    /*                ™™™™™™™™™™™                  ™™™™™™™™™™™™™™™™™™™™       ™™™™™™™™™™™™™™™™™™™™          */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                    ™™™™™™™™™™™™™™™™           ™™™™™™™™™™™™™™™™            */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                      ™™™™™™™™™™™™               ™™™™™™™™™™™™              */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                      CONSTANTS                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    address public constant DEATHS_HAND = 0xb6dAe651468E9593E4581705a09c10A76AC1e0c8;
    uint256 public constant DEATHS_HAND_ID = 209;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   STATE VARIABLES                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    uint256 public killFee;
    bool public handActive;
    bool private insideDeposit;
    uint256 private _nextTokenId;
    string private _imageURI;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    error InvalidTarget();
    error NotHandOwner();
    error HandNotActive();
    error InvalidFee();
    error InvalidDeposit();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                        EVENTS                       */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    event HandUsed(address indexed killer, uint256 target);
    event KillFeeSet(uint256 newFee);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    constructor(string memory imageURI, uint256 _killFee) ERC721() {
        killFee = _killFee;
        _imageURI = imageURI;
        _initializeOwner(msg.sender);

        // Give the memento NFT to the owner
        uint256 tokenId = _nextTokenId++;
        _mint(msg.sender, tokenId);
    }

    function name() public pure override returns (string memory) {
        return "Democratizing Death";
    }

    function symbol() public pure override returns (string memory) {
        return "DEATH";
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        if (!_exists(tokenId)) revert TokenDoesNotExist();
        
        // Construct the JSON metadata
        string memory json = string(abi.encodePacked(
            '{"name": "Death\'s Hand Memento #', LibString.toString(tokenId), '",',
            '"description": "A memento from using Death\'s Hand",',
            '"image": "ipfs://', _imageURI, '"}'
        ));
        
        // Return as data URI
        return string(abi.encodePacked(
            'data:application/json;utf8,',
            json
        ));
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    ADMIN FUNCTIONS                  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /**
     * @notice Sets the fee required to use Death's Hand
     * @param _killFee The new fee amount in wei
     */
    function setKillFee(uint256 _killFee) external onlyOwner {
        killFee = _killFee;
        emit KillFeeSet(killFee);
    }

    /**
     * @notice Deposits the Death's Hand NFT into the contract
     */
    function depositHand() external nonReentrant {
        if (ERC721(DEATHS_HAND).ownerOf(DEATHS_HAND_ID) != msg.sender) {
            revert NotHandOwner();
        }
        
        insideDeposit = true;
        ERC721(DEATHS_HAND).safeTransferFrom(msg.sender, address(this), DEATHS_HAND_ID);
        insideDeposit = false;
        handActive = true;
    }

    /**
     * @notice Withdraws Death's Hand to a specified address
     * @param to The address to send the NFT to
     */
    function withdrawHand(address to) external onlyOwner nonReentrant {
        ERC721(DEATHS_HAND).safeTransferFrom(address(this), to, DEATHS_HAND_ID);
        handActive = false;
    }

    /**
     * @notice Withdraw any ETH in the contract to a destination
     */
    function withdrawFees(address _destination) external onlyOwner nonReentrant {
        uint256 balance = address(this).balance;
        if (balance > 0) {
            SafeTransferLib.safeTransferETH(_destination, balance);
        }
    }

    /**
     * @notice Implementation of IERC721Receiver
     */
    function onERC721Received(
        address,
        address,
        uint256,
        bytes calldata
    ) external view returns (bytes4) {
        if (!insideDeposit) revert InvalidDeposit();
        return this.onERC721Received.selector;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    USER FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /**
     * @notice Uses Death's Hand on a target (0-8)
     * @param target The target number (0-8)
     */
    function useHand(uint256 target) external payable nonReentrant {
        if (target > 8) revert InvalidTarget();
        if (!handActive) revert HandNotActive();
        if (msg.value < killFee) revert InvalidFee();

        // Create arrays for the Async call
        uint256[] memory leverIds = new uint256[](1);
        int256[] memory newValues = new int256[](1);

        // Set lever ID to 0 and value to target
        leverIds[0] = 0;
        newValues[0] = int256(target);

        // Call Async contract
        IAsync(DEATHS_HAND).useControlToken{value: 0}(DEATHS_HAND_ID, leverIds, newValues);

        // Give the memento NFT to the mover
        uint256 tokenId = _nextTokenId++;
        _mint(msg.sender, tokenId);

        // Emit that the hand was moved
        emit HandUsed(msg.sender, target);
    }

    receive() external payable {}
}
