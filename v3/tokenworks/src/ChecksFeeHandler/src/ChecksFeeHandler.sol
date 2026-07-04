// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {Ownable} from "solady/auth/Ownable.sol";
import {NFTStrategy} from "./NFTStrategy.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {IERC721, INFTStrategy} from "./Interfaces.sol";

/// @title ChecksFeeHandler
/// @author TokenWorks (https://token.works/)
contract ChecksFeeHandler is Ownable, ReentrancyGuard {
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

    address public constant CHECKS_ADDRESS = 0x036721e5A769Cc48B3189EFbb9ccE4471E8A48B1;
    address public checkStrategy;
    address public destination;
    uint256 public reward = 0.005 ether;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    error NFTNotOwned();
    error NFTNotForSale();
    error StrategyAlreadySet();
    error StrategyNotSet();
    error PriceTooLow();
    error InsufficientBalance();
    error NotOwnerOrDestination();
    error DestinationNotSet();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM EVENTS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Event emitted when a Check is purchased by the protocol
    event CheckProcessed(uint256 cost, uint256 tokenId, address indexed destination);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    constructor(address _destination) {
        destination = _destination;
        _initializeOwner(msg.sender);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    ADMIN FUNCTIONS                  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Updates the destination address for Checks NFTs
    /// @param _destination New destination address
    /// @dev Only callable by owner or current destination
    function updateDestination(address _destination) external {
        if (msg.sender != owner() && msg.sender != destination) revert NotOwnerOrDestination();
        destination = _destination;
    }

    /// @notice Updates the reward amount for calling buyCheck
    /// @param _newReward New reward amount in wei
    /// @dev Only callable by owner or current destination
    function updateReward(uint256 _newReward) external {
        if (msg.sender != owner() && msg.sender != destination) revert NotOwnerOrDestination();
        reward = _newReward;
    }

    /// @notice Updates the Check strategy contract address
    /// @param _checkStrategy The Check strategy contract address
    /// @dev Only callable by owner once
    function setCheckStrategy(address _checkStrategy) external onlyOwner {
        if (checkStrategy != address(0)) revert StrategyAlreadySet();
        checkStrategy = _checkStrategy;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    USER FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Buys a check from the market and relists it, paying a reward to the caller
    /// @param checkId The ID of the check to buy and relist
    /// @dev Requires the check to be for sale to anyone and sufficient fees (price + reward)
    function buyCheck(uint256 checkId) external nonReentrant returns (uint256) {
        if (checkStrategy == address(0)) revert StrategyNotSet();
        if (destination == address(0)) revert DestinationNotSet();

        // Get price from strategy contract
        uint256 price = INFTStrategy(checkStrategy).nftForSale(checkId);

        // Make sure it's listed and less than reward.
        if (price < reward) revert PriceTooLow();

        // Make sure the protocol can afford the NFT + the reward
        if (price + reward > address(this).balance) revert InsufficientBalance();

        // Buy the NFT
        INFTStrategy(checkStrategy).sellTargetNFT{value: price}(checkId);

        // Make sure we own it
        if (IERC721(CHECKS_ADDRESS).ownerOf(checkId) != address(this)) revert NFTNotOwned();

        // Send to destination
        IERC721(CHECKS_ADDRESS).transferFrom(address(this), destination, checkId);

        // Send reward to caller
        SafeTransferLib.forceSafeTransferETH(msg.sender, reward);

        emit CheckProcessed(price, checkId, destination);

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
