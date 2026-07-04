// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "solady/tokens/ERC20.sol";
import {ERC721} from "solady/tokens/ERC721.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";

import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {CurrencyLibrary, Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";

import {IUniswapV4Router04} from "v4-router/interfaces/IUniswapV4Router04.sol";

/// @title CabalClaim - Buys 1e of Cabalcoin on deployment and distributes to TokenWorks NFT holders.
/// @author TokenWorks (https://token.works/)
contract CabalClaim is ReentrancyGuard {
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

    using CurrencyLibrary for Currency;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                      CONSTANTS                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    
    address private immutable hookAddress;
    address payable private immutable router;
    address private immutable cabalCoinAddress;
    address private immutable tokenWorksNFTs;
    uint256 private immutable totalNFTs;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                      VARIABLES                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    uint256 public tokensPerNFT;
    mapping(address => bool) public tokensClaimed;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                        ERRORS                       */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
     
    error NotCabalcoin();
    error NoTokensToClaim();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /// @notice Initializes the contract with required addresses and permissions
    /// @param _router Optimized Uniswap V4 router address
    /// @param _cabalCoinAddress Address of the Cabalcoin token contract
    /// @param _hookAddress Address of the Cabalcoin hook contract
    /// @param _tokenWorksNFTs Address of the TokenWorks NFT contract
    /// @param _totalNFTs Total number of TokenWorks NFTs
    constructor(
        address _router,
        address _cabalCoinAddress,
        address _hookAddress,
        address _tokenWorksNFTs,
        uint256 _totalNFTs
    ) {
        router = payable(_router);
        cabalCoinAddress = _cabalCoinAddress;
        hookAddress = _hookAddress;
        tokenWorksNFTs = _tokenWorksNFTs;
        totalNFTs = _totalNFTs;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  PUBLIC FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Buys Cabalcoin tokens with ETH and calculates tokens per TokenWorks NFT
    /// @param amountIn Amount of ETH to spend on tokens
    /// @dev Can only be called by Cabalcoin contract
    /// @dev Tokens per NFT is calculated by dividing total tokens by total TokenWorks NFTs
    function buyTokens(uint256 amountIn) external payable {
        if (msg.sender != cabalCoinAddress) revert NotCabalcoin();

        PoolKey memory key = PoolKey(
            Currency.wrap(address(0)),
            Currency.wrap(cabalCoinAddress),
            0,
            60,
            IHooks(hookAddress)
        );

        IUniswapV4Router04(router).swapExactTokensForTokens{value: amountIn}(
            amountIn,
            0,
            true,
            key,
            "",
            address(this),
            block.timestamp
        );

        uint256 tokenBalance = ERC20(cabalCoinAddress).balanceOf(address(this));
        tokensPerNFT = tokenBalance / totalNFTs;
    }

    /// @notice Allows TokenWorks NFT holders to claim their allocated Cabalcoin tokens
    /// @dev Can only be called once per address
    /// @dev Requires caller to hold at least one TokenWorks NFT
    /// @dev Amount of tokens received is based on number of NFTs held multiplied by tokensPerNFT
    function claimTokens() external nonReentrant {
        if (tokensClaimed[msg.sender] || tokensPerNFT == 0) revert NoTokensToClaim();
        
        uint256 nftCount = ERC721(tokenWorksNFTs).balanceOf(msg.sender);
        if (nftCount == 0) revert NoTokensToClaim();
        
        uint256 tokensToClaim = nftCount * tokensPerNFT;
        tokensClaimed[msg.sender] = true;
        
        SafeTransferLib.safeTransfer(cabalCoinAddress, msg.sender, tokensToClaim);
    }

    /// @notice Checks if an address is eligible to claim Cabalcoin tokens
    /// @param wallet Address to check claim eligibility for
    /// @return bool True if the address can claim tokens, false otherwise
    /// @return uint256 Number of tokens that can be claimed (0 if not eligible)
    function canClaim(address wallet) external view returns (bool, uint256) {
        if (tokensClaimed[wallet] || tokensPerNFT == 0) {
            return (false, 0);
        }
        
        uint256 nftCount = ERC721(tokenWorksNFTs).balanceOf(wallet);
        if (nftCount == 0) {
            return (false, 0);
        }
        
        return (true, nftCount * tokensPerNFT);
    }

    receive() external payable {}
}
