// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {Ownable} from "solady/auth/Ownable.sol";
import {NFTStrategy} from "./NFTStrategy.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {IERC721, INFTStrategy} from "./Interfaces.sol";

/// @title CrypToadzFeeHandler
/// @author TokenWorks (https://token.works/)
contract CrypToadzFeeHandler is Ownable, ReentrancyGuard {
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
    /*                     VARIABLES                       */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    address public constant CRYPTOADZ_ADDRESS = 0x1CB1A5e65610AEFF2551A50f76a87a7d3fB649C6;
    address public constant TOADZ_STRATEGY = 0x92ceDfDbCE6E87b595e4a529aFA2905480368AF4;
    mapping(uint256 => bool) public uglyToadz;
    address public destination;
    uint256 public reward = 0.005 ether;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    error NFTNotOwned();
    error PriceTooLow();
    error InsufficientBalance();
    error NotOwnerOrDestination();
    error ToadNotUgly();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM EVENTS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Event emitted when a Cryptoadz is purchased by the protocol
    event ToadzProcessed(uint256 cost, uint256 tokenId, address indexed destination);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    constructor(uint256[] memory uglyToadzIds) {
        destination = 0x000000000000000000000000000000000000dEaD;
        for (uint256 i = 0; i < uglyToadzIds.length; ++i) {
            uglyToadz[uglyToadzIds[i]] = true;
        }
        _initializeOwner(msg.sender);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    ADMIN FUNCTIONS                  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Updates the destination address for Cryptoadz NFTs
    /// @param _destination New destination address
    /// @dev Only callable by owner or current destination
    function updateDestination(address _destination) external {
        if (msg.sender != owner() && msg.sender != destination) revert NotOwnerOrDestination();
        destination = _destination;
    }

    /// @notice Updates the reward amount for calling buyMaxPain
    /// @param _newReward New reward amount in wei
    /// @dev Only callable by owner or current destination
    function updateReward(uint256 _newReward) external {
        if (msg.sender != owner() && msg.sender != destination) revert NotOwnerOrDestination();
        reward = _newReward;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    USER FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Buys a CrypToadz from the strategy and sends it to destination, paying a reward to the caller
    /// @param toadzId The ID of the CrypToadz to buy and send to destination
    /// @dev Requires the Toad to be for sale to anyone and sufficient fees (price + reward)
    function buyToadz(uint256 toadzId) external nonReentrant returns (uint256) {
        // Make sure the toad is ugly
        if (!uglyToadz[toadzId]) revert ToadNotUgly();

        // Get price from strategy contract
        uint256 price = INFTStrategy(TOADZ_STRATEGY).nftForSale(toadzId);

        // Make sure it's listed and less than reward.
        if (price < reward) revert PriceTooLow();

        // Make sure the protocol can afford the NFT + the reward
        if (price + reward > address(this).balance) revert InsufficientBalance();

        // Buy the NFT
        INFTStrategy(TOADZ_STRATEGY).sellTargetNFT{value: price}(toadzId);

        // Make sure we own it
        if (IERC721(CRYPTOADZ_ADDRESS).ownerOf(toadzId) != address(this)) revert NFTNotOwned();

        // Send to destination
        IERC721(CRYPTOADZ_ADDRESS).transferFrom(address(this), destination, toadzId);

        // Send reward to caller
        SafeTransferLib.forceSafeTransferETH(msg.sender, reward);

        emit ToadzProcessed(price, toadzId, destination);

        return price;
    }

    /// @notice Emergency function to rescue any ERC721 tokens accidentally sent to the contract
    /// @param _token Address of the ERC721 token to rescue
    /// @param _to Address to send the token to
    /// @param _tokenId ID of the token to send
    /// @dev Only callable by owner
    function emergencySendERC721(address _token, address _to, uint256 _tokenId) external onlyOwner {
        IERC721(_token).safeTransferFrom(address(this), _to, _tokenId);
    }

    /// @notice Emergency function to withdraw ETH from the contract
    /// @param _to Address to send the ETH to
    /// @dev Only callable by owner
    function emergencyWithdrawETH(address _to) external onlyOwner {
        uint256 balance = address(this).balance;
        SafeTransferLib.forceSafeTransferETH(_to, balance);
    }

    /// @notice Allows the contract to receive ETH for twap
    receive() external payable {}
}
