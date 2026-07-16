// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {Ownable} from "solady/auth/Ownable.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {INFTStrategy, IUniswapV4Router04, IERC721} from "./Interfaces.sol";

/// @title OtherdeedSplit
/// @author TokenWorks (https://token.works/)
contract OtherdeedSplit is Ownable, ReentrancyGuard {
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

    /// @notice Uniswap V4 Router for token swaps
    IUniswapV4Router04 private immutable router;
    /// @notice ApeStrategy token contract address
    address public constant APESTR_ADDRESS = 0x9EbF91b8D6fF68aA05545301A3D0984EaEE54A03;
    /// @notice ApeStrategy hook contract address
    address public constant APESTR_HOOK_ADDRESS = 0xe3C63A9813Ac03BE0e8618B627cb8170cfA468c4;
    /// @notice Dead address for burning tokens    
    address public constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;
    /// @notice Address to send half of the ETH to
    address public destination;
    /// @notice TWAP increment when buying APESTR tokens
    uint256 public twapIncrement = 1 ether;
    /// @notice TWAP delay in blocks when buying APESTR tokens
    uint256 public twapDelayInBlocks = 1;
    /// @notice Last block number when TWAP was executed
    uint256 public lastTwapBlock;


    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    error NoETHToTwap();
    error TwapDelayNotMet();
    error NotOwnerOrDestination();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Constructor initializes the factory with required dependencies
    /// @param _destination Destination for 50% of the incoming ETH.
    /// @param _router Uniswap V4 Router address
    constructor(address _destination, address payable _router) {
        destination = _destination;
        router = IUniswapV4Router04(_router);
        _initializeOwner(msg.sender);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    ADMIN FUNCTIONS                  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Updates the destination address for ETH
    /// @param _destination New destination address
    /// @dev Only callable by owner or current destination
    function updateDestination(address _destination) external {
        if (msg.sender != owner() && msg.sender != destination) revert NotOwnerOrDestination();
        destination = _destination;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    USER FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Processes APESTR token buyback using TWAP mechanism
    /// @dev Can be called once every twapDelayInBlocks, caller receives 0.5% reward
    /// @dev Uses contract's ETH balance to split ETH between buying and burning APESTR tokens and sending to team.
    function processTokenTwap() external nonReentrant {
        uint256 balance = address(this).balance;
        if (balance == 0) revert NoETHToTwap();

        // Check if enough blocks have passed since last TWAP
        if (block.number < lastTwapBlock + twapDelayInBlocks) revert TwapDelayNotMet();

        // Calculate amount to process - either twapIncrement or remaining ethToTwap
        uint256 totalAmount = twapIncrement;
        if (balance < twapIncrement) {
            totalAmount = balance;
        }

        // Set reward to 0.5% of totalAmount
        uint256 reward = (totalAmount * 5) / 1000;
        totalAmount -= reward;

        // Split remaining amount between burning and destination
        uint256 burnAmount = totalAmount / 2;
        uint256 destinationAmount = totalAmount - burnAmount;

        // Update state
        lastTwapBlock = block.number;

        // Buy and burn APESTR with half
        _buyAndBurnAPESTR(burnAmount);

        // Send other half to destination
        SafeTransferLib.forceSafeTransferETH(destination, destinationAmount);

        // Send reward to caller
        SafeTransferLib.forceSafeTransferETH(msg.sender, reward);
    }

    /// @notice Buys APESTR tokens with ETH and burns them by sending to dead address
    /// @param amountIn The amount of ETH to spend on APESTR tokens
    /// @dev Uses ApeStrategy pool to swap ETH for APESTR and burn
    function _buyAndBurnAPESTR(uint256 amountIn) internal {
        PoolKey memory key =
            PoolKey(Currency.wrap(address(0)), Currency.wrap(APESTR_ADDRESS), 0, 60, IHooks(APESTR_HOOK_ADDRESS));

        router.swapExactTokensForTokens{value: amountIn}(amountIn, 0, true, key, "", DEAD_ADDRESS, block.timestamp);
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
