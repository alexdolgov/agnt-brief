// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Ownable} from "solady/auth/Ownable.sol";
import {ERC20} from "solady/tokens/ERC20.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {IAllowanceTransfer} from "permit2/src/interfaces/IAllowanceTransfer.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {IUniswapV4Router04} from "v4-router/interfaces/IUniswapV4Router04.sol";
import "./Interfaces.sol";

/// @title PunkStrategyPatch - The Perpetual Punk Machine Patch
/// @author TokenWorks (https://token.works/)
contract PunkStrategyPatch is Ownable, ReentrancyGuard {
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™                ™™™™™™™™™™™                ™™™™™™™™™™™ */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™               ™™™™™™™™™™™™™              ™™™™™™™™™™  */
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
    
    IAllowanceTransfer private immutable permit2;
    IUniswapV4Router04 private immutable router;

    uint256 public constant minimumPunkPrice = 6.9 ether;
    address payable constant hookAddress = payable(0xfAaad5B731F52cDc9746F2414c823eca9B06E844);
    address payable constant punkStrategy = payable(0xc50673EDb3A7b94E8CAD8a7d4E0cD68864E33eDF);
    address payable constant PUNKS = payable(0xb47e3cd837dDF8e4c57F05d70Ab865de6e193BBB);
    address public constant DEADADDRESS = 0x000000000000000000000000000000000000dEaD;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   STATE VARIABLES                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    uint256 public reward;
    uint256 public lastPunkSalePrice;
    uint256 public priceMultiplier;
    uint256 public ethToTwap;
    uint256 public twapIncrement;
    uint256 public twapDelayInBlocks;
    uint256 public lastTwapBlock;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM EVENTS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    event ProtocolFeesFromSales(uint256 ethFees);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    error PunkNotForSale();
    error PunkPriceTooLow();
    error InsufficientContractBalance();
    error NoSaleToProcess();
    error PunkNotOwned();
    error InvalidMultiplier();
    error NoPunksBoughtYet();
    error NoETHToTwap();
    error TwapDelayNotMet();
    error NotEnoughEth();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /// @notice Initializes the contract with required addresses and permissions
    /// @param _owner Address that becomes the owner of the contract
    constructor(
        address _owner,
        address payable _router
    ) {
        priceMultiplier = 1200; // 1.2x
        reward = 0.005 ether;   // 0.005e prize for calling mechanism functions
        twapIncrement = 1 ether;
        twapDelayInBlocks = 1;

        router = IUniswapV4Router04(_router);
        _initializeOwner(_owner);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    ADMIN FUNCTIONS                  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Emergency function to withdraw ETH
    /// @param _to Address to send ETH to
    /// @param _amount Amount of ETH to send
    /// @dev Only callable by owner
    function transferEther(
        address _to,
        uint256 _amount
    ) external payable onlyOwner {
        SafeTransferLib.forceSafeTransferETH(_to, _amount);
    }

    /// @notice Updates the reward amount for calling buyPunkAndRelist and processPunkSale
    /// @param _newReward New reward amount in wei
    /// @dev Only callable by owner
    function setReward(uint256 _newReward) external onlyOwner {
        reward = _newReward;
    }

    /// @notice Updates the price multiplier for relisting punks
    /// @param _newMultiplier New multiplier in basis points (1100 = 1.1x, 10000 = 10.0x)
    /// @dev Only callable by owner. Must be between 1.1x (1100) and 10.0x (10000)
    function setPriceMultiplier(uint256 _newMultiplier) external onlyOwner {
        if (_newMultiplier < 1100 || _newMultiplier > 10000) revert InvalidMultiplier();
        priceMultiplier = _newMultiplier;
    }

    /// @notice Updates the TWAP increment amount
    /// @param _newIncrement New increment amount in wei
    /// @dev Only callable by owner
    function setTwapIncrement(uint256 _newIncrement) external onlyOwner {
        twapIncrement = _newIncrement;
    }

    /// @notice Updates the TWAP delay in blocks
    /// @param _newDelay New delay in number of blocks
    /// @dev Only callable by owner
    function setTwapDelayInBlocks(uint256 _newDelay) external onlyOwner {
        twapDelayInBlocks = _newDelay;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                 MECHANISM FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Buys a punk from the market and relists it, paying a reward to the caller
    /// @param punkId The ID of the punk to buy and relist
    /// @dev Requires the punk to be for sale to anyone and sufficient fees (price + reward)
    function buyPunkAndRelist(uint256 punkId) external nonReentrant returns (uint256) {        
        // Fetch punk offer details
        (bool isForSale, , , uint256 minValue, address onlySellTo) = IPunks(PUNKS).punksOfferedForSale(punkId);
        
        // Validate punk is for sale and available to anyone
        if (!isForSale) revert PunkNotForSale();
        if (onlySellTo != address(0)) revert PunkNotForSale();
        // Validate punk price is greater than minimumPunkPrice
        if (minValue <= minimumPunkPrice) revert PunkPriceTooLow();
        
        // Calculate required ETH (punk price + reward)
        uint256 totalRequired = minValue + reward;
        
        // Check punkStrategy has sufficient balance
        if (punkStrategy.balance < totalRequired) revert InsufficientContractBalance();

        // Withdraw ETH from punkStrategy to this address
        IPunkStrategy(punkStrategy).transferEther(address(this), totalRequired);
        
        // Buy the punk
        IPunks(PUNKS).buyPunk{value: minValue}(punkId);

        // Make sure we own it
        if (IPunks(PUNKS).punkIndexToAddress(punkId) != address(this)) revert PunkNotOwned();
        
        // Relist the punk at the configured multiplier price
        IPunks(PUNKS).offerPunkForSale(punkId, minValue * priceMultiplier / 1000);
        
        // Send reward to caller
        SafeTransferLib.forceSafeTransferETH(msg.sender, reward);

        // Set last sale price to the punk price
        lastPunkSalePrice = minValue;

        return lastPunkSalePrice;
    }

    /// @notice Processes a punk sale by checking for new ETH, rewarding caller, and burning tokens
    /// @dev Withdraw's ETH from a punk sale, rewards caller, burns tokens with remaining ETH
    /// @return The amount of ETH processed from the sale
    function processPunkSale() external nonReentrant returns (uint256) {
        if (lastPunkSalePrice == 0) revert NoPunksBoughtYet();

        uint256 ethInPunksContract = IPunks(PUNKS).pendingWithdrawals(address(this));
        
        // Verify excess matches a punk sale
        if (ethInPunksContract <= reward) revert NotEnoughEth();

        // Withdraw ETH from punks contract
        IPunks(PUNKS).withdraw();
        
        // Use remaining ETH to buy and burn tokens via twap
        uint256 twapAmount = ethInPunksContract - reward;
        ethToTwap += twapAmount;

        // Send reward to caller after burn completes
        SafeTransferLib.forceSafeTransferETH(msg.sender, reward);
        
        emit ProtocolFeesFromSales(ethInPunksContract);
        return ethInPunksContract;
    }

    // This function lets someone process _buyAndBurnTokens once every twapDelayInBlocks
    // Eth amount to TWAP is twapIncrement, if we have less than that use the remaining amount
    // Payout reward to the caller at the end, we also need to subtract this from burnAmount. Also fail if ethToTwap is less than reward
    function processTokenTwap() external nonReentrant {
        if(ethToTwap == 0) revert NoETHToTwap();
        
        // Check if enough blocks have passed since last TWAP
        if(block.number < lastTwapBlock + twapDelayInBlocks) revert TwapDelayNotMet();
        
        // Calculate amount to burn - either twapIncrement or remaining ethToTwap
        uint256 burnAmount = twapIncrement;
        if(ethToTwap < twapIncrement) {
            burnAmount = ethToTwap;
        }

        if(burnAmount <= reward) revert NotEnoughEth();
        burnAmount -= reward;
        
        // Update state
        ethToTwap -= burnAmount + reward;
        lastTwapBlock = block.number;
        
        _buyAndBurnTokens(burnAmount);

        // Send reward to caller
        SafeTransferLib.forceSafeTransferETH(msg.sender, reward);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  INTERNAL FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Buys tokens with ETH and burns them by sending to dead address
    /// @param amountIn The amount of ETH to spend on tokens that will be burned
    function _buyAndBurnTokens(uint256 amountIn) internal {
        PoolKey memory key = PoolKey(
            Currency.wrap(address(0)),
            Currency.wrap(punkStrategy),
            0,
            60,
            IHooks(hookAddress)
        );

        router.swapExactTokensForTokens{value: amountIn}(
            amountIn,
            0,
            true,
            key,
            "",
            DEADADDRESS,
            block.timestamp
        );
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   WRAPPER FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Transfers ownership of the PunkStrategy contract to a new owner
    /// @param newOwner Address of the new owner
    /// @dev Can only be called by the current owner
    function transferPunkStrategyOwnership(address newOwner) external onlyOwner {
        IPunkStrategy(punkStrategy).transferOwnership(newOwner);
    }

    /// @notice Allows the Owner to deposit trading fees into the contract
    /// @dev Only callable by the owner
    /// @dev Fees are added to currentFees balance of punkStrategy
    function addFees() external payable onlyOwner {
        IPunkStrategy(punkStrategy).addFees{value: msg.value}();
    }

    /// @notice Emergency function to rescue any ERC20 tokens accidentally sent to the hook
    /// @param _token Address of the token to rescue
    /// @param _to Address to send the tokens to
    /// @param _amount Amount of tokens to send
    /// @dev Can only be called by the contract owner
    function transferToken(
        address _token,
        address _to,
        uint256 _amount
    ) external payable onlyOwner {
        IPunkStrategyHook(hookAddress).transferToken(_token, _to, _amount);
    }

    /// @notice Updates the minimum trading fee
    /// @param _feeBips New trading fee in Bips
    /// @dev Can only be called by the contract owner
    function updateFeeBips(uint128 _feeBips) external onlyOwner {
        IPunkStrategyHook(hookAddress).updateFeeBips(_feeBips);
    }

    /// @notice Updates the state to manually move fees from the hook to the contract
    /// @param _manuallyProcessFees The new state of manuallyProcessFees
    /// @dev Can only be called by the contract owner
    function updateManualFees(bool _manuallyProcessFees) external onlyOwner {
        IPunkStrategyHook(hookAddress).updateManualFees(_manuallyProcessFees);
    }

    /// @notice Updates the FeeSplit contract address
    /// @param _feeSplit New FeeSplit contract address
    /// @dev Can only be called by the contract owner
    function updateFeeSplit(IFeeSplit _feeSplit) external onlyOwner {
        IPunkStrategyHook(hookAddress).updateFeeSplit(_feeSplit);
    }

    /// @notice Allows the contract to receive ETH
    receive() external payable {}
}
