// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title TokenSeller
/// @notice Receives ERC20 tokens and sells them via an external aggregator into AVAX.
/// Splits AVAX proceeds 70/30 between two beneficiaries. Supports default and per-token
/// parameters with packed storage, enforced sell intervals, and post-sell balance checks.
contract TokenSeller is Ownable, ReentrancyGuard {

    uint256 public constant MAX_SUPPLY_DENOMINATOR = 1_000_000_000; // 100%
    // ============ Errors ============
    error LengthMismatch();
    error InvalidAddress();
    error InvalidParams();
    error SellIntervalNotElapsed(address token, uint256 lastSwapTs, uint256 requiredNextTs);
    error AmountExceedsLimits(address token, uint256 requested, uint256 allowed);
    error InsufficientPostSellBalance(address token, uint256 postBalance, uint256 requiredMinBalance);
    error AggregatorCallFailed(bytes data);
    error TransferFailed(address to, uint256 amount);



    // ============ Storage ============
    // Packed parameters per token
    // Layout packs into a single 32-byte storage slot (29 bytes used)
    struct TokenParams {
        uint32 latestSwapTs;            // Last successful sell timestamp
        uint32 minSellInterval;         // Token-specific minimum interval in seconds
        uint40 maxSupplyNumerator;       // Max basis points of current balance to sell (0..10000)
        bool individualParamsSet;       // Whether this token uses individual params
        uint136 amountToKeep;           // Minimum token balance to keep after sells
    }

    // Default parameters used when a token does not have individual params set
    TokenParams public defaultParams;

    // Per-token parameters and state
    mapping(address => TokenParams) public tokenParams;

    // External aggregator to execute swaps against
    address public constant aggregator = 0xF708e11A7C94abdE8f6217B13e6fE39C8b9cC0a6;

    // Beneficiaries for 70/30 split of AVAX proceeds
    address payable public foundationWallet;
    address payable public arenaFeeWallet;
    uint256 splitBps = 7000; // 70%

    // ============ Events ============
    event AggregatorUpdated(address indexed oldAggregator, address indexed newAggregator);
    event BeneficiariesUpdated(address indexed foundationWallet, address indexed arenaFeeWallet);
    event DefaultParamsUpdated(uint40 maxSupplyNumerator, uint136 amountToKeep, uint32 minSellInterval);
    event TokenParamsUpdated(address indexed token, uint40 maxSupplyNumerator, uint136 amountToKeep, uint32 minSellInterval);
    event TokensSold(address[] tokens, uint256[] amounts, uint256 avaxProceeds, uint256 timestamp);
    event ProceedsSplit(uint256 totalProceeds, uint256 foundationWalletProceeds, uint256 arenaFeeWalletProceeds);
    event LastSwapTsUpdated(address indexed token, uint256 lastSwapTs);

    // ============ Constructor ============
    constructor(address payable _foundationWallet, address payable _arenaFeeWallet) Ownable(msg.sender) {
        if (_foundationWallet == address(0) || _arenaFeeWallet == address(0)) {
            revert InvalidAddress();
        }
        foundationWallet = _foundationWallet;
        arenaFeeWallet = _arenaFeeWallet;
        emit BeneficiariesUpdated(foundationWallet, arenaFeeWallet);

        // Sensible defaults: allow up to 100% sell, keep 0 tokens, token-specific min interval 0
        defaultParams = TokenParams({
            latestSwapTs: 0,
            minSellInterval: 20 * 60, // 20 minutes
            maxSupplyNumerator: uint40(MAX_SUPPLY_DENOMINATOR / 100000), // 100 / 1_000_000_000 = 0.01%
            individualParamsSet: false,
            amountToKeep: 0
        });
        emit DefaultParamsUpdated(defaultParams.maxSupplyNumerator, defaultParams.amountToKeep, defaultParams.minSellInterval);
    }



    // Default params (latestSwapTs is ignored for defaults)
    function setDefaultParams(uint40 maxSupplyNumerator, uint136 amountToKeep, uint32 minSellInterval) external onlyOwner {
        if (maxSupplyNumerator > MAX_SUPPLY_DENOMINATOR) revert InvalidParams();
        defaultParams.maxSupplyNumerator = maxSupplyNumerator;
        defaultParams.amountToKeep = amountToKeep;
        defaultParams.minSellInterval = minSellInterval;
        emit DefaultParamsUpdated(maxSupplyNumerator, amountToKeep, minSellInterval);
    }

    // Individual token params
    function setTokenParams(address tokenAddress, uint40 maxSupplyNumerator, uint136 amountToKeep, uint32 minSellInterval) external onlyOwner {
        if (tokenAddress == address(0) || maxSupplyNumerator > MAX_SUPPLY_DENOMINATOR) revert InvalidParams();
        TokenParams storage tokenConfig = tokenParams[tokenAddress];
        tokenConfig.maxSupplyNumerator = maxSupplyNumerator;
        tokenConfig.amountToKeep = amountToKeep;
        tokenConfig.minSellInterval = minSellInterval;
        tokenConfig.individualParamsSet = true;
        emit TokenParamsUpdated(tokenAddress, maxSupplyNumerator, amountToKeep, minSellInterval);
    }


    function approveTokensIfNeeded(address[] memory tokenList) internal {
        for (uint256 i = 0; i < tokenList.length; i++) { // TODO check if maxApproving causes issues
            address tokenAddress = tokenList[i];
            uint256 currentAllowance = IERC20(tokenAddress).allowance(address(this), aggregator);
            if (currentAllowance < type(uint256).max) {
                IERC20(tokenAddress).approve(aggregator, type(uint256).max);
            }
        }
    }

    function _applyChecksAndUpdates(address[] memory tokenList, uint256[] memory prevTokenBalances) internal {
        TokenParams memory defaultParamsLocal = defaultParams;
        uint256[] memory amountsSold = new uint256[](tokenList.length);
        for (uint256 i = 0; i < tokenList.length; i++) {
            address tokenAddress = tokenList[i];
            TokenParams memory effectiveParams = _getEffectiveTokenConfig(tokenAddress, defaultParamsLocal);
            // check if balance changes contradicts maxSupplyNumerator
            uint256 postBalance = IERC20(tokenAddress).balanceOf(address(this));
            uint256 previousTokenBalance = prevTokenBalances[i];
            uint256 amountSold = previousTokenBalance - postBalance;
            amountsSold[i] = amountSold;
            uint256 maxSellAmount = IERC20(tokenAddress).totalSupply() * effectiveParams.maxSupplyNumerator / MAX_SUPPLY_DENOMINATOR;
            if (amountSold > maxSellAmount) {
                revert AmountExceedsLimits(tokenAddress, amountSold, maxSellAmount);
            }
            // check the balance change contradicts amountToKeep
            if (postBalance < effectiveParams.amountToKeep) {
                revert InsufficientPostSellBalance(tokenAddress, postBalance, effectiveParams.amountToKeep);
            }
            // check if the interval since last swap contradicts minSellInterval
            if(effectiveParams.latestSwapTs != 0) {
                uint256 timePassedSinceLastSwap = block.timestamp - effectiveParams.latestSwapTs;
                if(timePassedSinceLastSwap < effectiveParams.minSellInterval) {
                    revert SellIntervalNotElapsed(tokenAddress, effectiveParams.latestSwapTs, effectiveParams.minSellInterval);
                }
            }
            // update latestSwapTs
            tokenParams[tokenAddress].latestSwapTs = uint32(block.timestamp);
            emit LastSwapTsUpdated(tokenAddress, tokenParams[tokenAddress].latestSwapTs);
        }
        
    }


    function approveTokensIfNeededBatch(address[] calldata tokenList) external onlyOwner {
        for (uint256 i = 0; i < tokenList.length; i++) { // TODO check if maxApproving causes issues
            address tokenAddress = tokenList[i];
            uint256 currentAllowance = IERC20(tokenAddress).allowance(address(this), aggregator);
            if (currentAllowance < type(uint256).max / 2) {
                IERC20(tokenAddress).approve(aggregator, type(uint256).max);
            }
        }
    }

    function removeApprovalForTokens(address[] calldata tokenList) external onlyOwner {
        for (uint256 i = 0; i < tokenList.length; i++) {
            IERC20(tokenList[i]).approve(aggregator, 0);
        }
    }


    function batchSell(address[] calldata tokenList, uint256[] calldata amountsToSell, bytes calldata aggregatorCalldata) external onlyOwner nonReentrant {
        approveTokensIfNeeded(tokenList);
        uint256[] memory prevTokenBalances = _getTokenBalances(tokenList);
        // execute aggregator call
        (bool aggregatorSuccess, bytes memory aggregatorReturnData) = aggregator.call(aggregatorCalldata);
        if (!aggregatorSuccess) revert AggregatorCallFailed(aggregatorReturnData);
        // post-sell checks and updates
        _applyChecksAndUpdates(tokenList, prevTokenBalances);
        uint256 avaxProceeds = address(this).balance;
        _splitAvaxProceeds();
        emit TokensSold(tokenList, amountsToSell, avaxProceeds, block.timestamp);

    }

    function batchSellSimple(address[] calldata tokenList, uint256[] calldata amountsToSell, bytes calldata aggregatorCalldata) external onlyOwner nonReentrant {
        approveTokensIfNeeded(tokenList);
        // execute aggregator call
        (bool aggregatorSuccess, bytes memory aggregatorReturnData) = aggregator.call(aggregatorCalldata);
        if (!aggregatorSuccess) revert AggregatorCallFailed(aggregatorReturnData);
        uint256 avaxProceeds = address(this).balance;
        _splitAvaxProceeds();
        emit TokensSold(tokenList, amountsToSell, avaxProceeds, block.timestamp);
    }

    function _getTokenBalances(address[] memory tokenList) internal view returns (uint256[] memory balances) {
        balances = new uint256[](tokenList.length);
        for (uint256 i = 0; i < tokenList.length; i++) {
            balances[i] = IERC20(tokenList[i]).balanceOf(address(this));
        }
    }


    function _getEffectiveTokenConfig(address tokenAddress, TokenParams memory _defaultParams) internal view returns (TokenParams memory effectiveParams) { 
        effectiveParams = tokenParams[tokenAddress];
        if (!effectiveParams.individualParamsSet) {
            effectiveParams = _defaultParams;
        }
    }

    function _splitAvaxProceeds() internal {
        uint256 avaxProceeds =  address(this).balance;
        if (avaxProceeds > 0) {
            uint256 arenaFeeWalletProceeds = (avaxProceeds * splitBps) / 10000;
            uint256 foundationWalletProceeds = avaxProceeds - arenaFeeWalletProceeds;

            (bool sentFoundationWallet, ) = foundationWallet.call{value: foundationWalletProceeds}("");
            if (!sentFoundationWallet) revert TransferFailed(foundationWallet, foundationWalletProceeds);
            (bool sentArenaFeeWallet, ) = arenaFeeWallet.call{value: arenaFeeWalletProceeds}("");
            if (!sentArenaFeeWallet) revert TransferFailed(arenaFeeWallet, arenaFeeWalletProceeds);

            emit ProceedsSplit(avaxProceeds, foundationWalletProceeds, arenaFeeWalletProceeds);
        }
    }

    function emergencyWithdraw(address tokenAddress) external onlyOwner {
        if (tokenAddress == address(0)) revert InvalidAddress();
        IERC20(tokenAddress).transfer(msg.sender, IERC20(tokenAddress).balanceOf(address(this)));
    }

    function emergencyWithdrawAvax() external onlyOwner {
        payable(msg.sender).transfer(address(this).balance);
    }


    function emergencyWithdrawTokens(address[] calldata tokenList, address to) external onlyOwner {
        for (uint256 i = 0; i < tokenList.length; i++) {
            IERC20(tokenList[i]).transfer(to, IERC20(tokenList[i]).balanceOf(address(this)));
        }
    }

    function setSplitBps(uint256 newSplitBps) external onlyOwner {
        if (newSplitBps > 10000) revert InvalidParams();
        splitBps = newSplitBps;
    }

    function setFoundationWallet(address newFoundationWallet) external onlyOwner {
        if (newFoundationWallet == address(0)) revert InvalidAddress();
        foundationWallet = payable(newFoundationWallet);
    }

    function setArenaFeeWallet(address newArenaFeeWallet) external onlyOwner {
        if (newArenaFeeWallet == address(0)) revert InvalidAddress();
        arenaFeeWallet = payable(newArenaFeeWallet);
    }

    // ============ Receive Native Token ============
    receive() external payable {}
    fallback() external payable {}
}


