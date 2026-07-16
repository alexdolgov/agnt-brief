// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IWAVAX {
    function withdraw(uint256 wad) external;
}

interface IArenaContract {
    function setFeeDestination(address _feeDestination) external;
}

/// @title TokenSeller
/// @notice Receives ERC20 tokens and sells them via an external aggregator into AVAX.
/// Splits AVAX proceeds 70/30 between two beneficiaries. Supports default and per-token
/// parameters with packed storage, enforced sell intervals, and post-sell balance checks.
contract TokenSeller is Ownable, ReentrancyGuard {

    uint256 public constant MAX_SUPPLY_DENOMINATOR = 1_000_000_000; // 100%
    address public constant AGGREGATOR = 0xF708e11A7C94abdE8f6217B13e6fE39C8b9cC0a6;
    address public constant ARENA_TOKEN_ADDRESS = 0xB8d7710f7d8349A506b75dD184F05777c82dAd0C;
    address public constant WAVAX_ADDRESS = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
    address public constant ARENA_TICKETS_CONTRACT = 0xC605C2cf66ee98eA925B1bb4FeA584b71C00cC4C;


    // ============ Errors ============
    error LengthMismatch();
    error InvalidAddress();
    error InvalidParams();
    error SellIntervalNotElapsed(address token, uint256 lastSwapTs, uint256 requiredNextTs);
    error AmountExceedsLimits(address token, uint256 requested, uint256 allowed);
    error InsufficientPostSellBalance(address token, uint256 postBalance, uint256 requiredMinBalance);
    error AggregatorCallFailed(bytes data);
    error TransferFailed(address to, uint256 amount);
    error NotSellerAdmin();

    // ============ Events ============
    event AggregatorUpdated(address indexed oldAggregator, address indexed newAggregator);
    event BeneficiariesUpdated(address indexed foundationWallet, address indexed arenaFeeWallet);
    event DefaultParamsUpdated(uint40 maxSupplyNumerator, uint136 amountToKeep, uint32 minSellInterval);
    event TokenParamsUpdated(address indexed token, uint40 maxSupplyNumerator, uint136 amountToKeep, uint32 minSellInterval);
    event TokensSold(address[] tokens, uint256[] amounts, uint256 avaxProceeds, uint256 timestamp);
    event ProceedsSplit(uint256 totalProceeds, uint256 foundationWalletProceeds, uint256 arenaFeeWalletProceeds);
    event DEBUG(string message, uint256 value);
    event FeeSourceToFeeDestinationSet(address indexed feeSource, address indexed feeDestination, string feeSourceName);

    modifier onlySellerAdmin() {
        if (msg.sender != sellerAdmin) revert NotSellerAdmin();
        _;
    }


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
    mapping(address => address) public feeSourceToFeeDestination;

    address payable public foundationWallet;
    address payable public arenaFeeWallet;
    uint256 public splitBps = 7000; // 70%
    address public sellerAdmin;


    // ============ Constructor ============
    constructor(address payable _foundationWallet, address payable _arenaFeeWallet) Ownable(msg.sender) {
        IERC20(ARENA_TOKEN_ADDRESS).approve(AGGREGATOR, type(uint256).max);
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


    // ============ Owner Functions ============

    function setSellerAdmin(address newSellerAdmin) external onlyOwner {
        sellerAdmin = newSellerAdmin;
    }

    function setFeeDestinationOnArenaTicketsContract(address _feeDestination) external onlyOwner {
        IArenaContract(ARENA_TICKETS_CONTRACT).setFeeDestination(_feeDestination);
    }


    function setFeeSourceToFeeDestination(address _feeSource, address _feeDestination, string memory _feeSourceName) external onlyOwner {
        feeSourceToFeeDestination[_feeSource] = _feeDestination;
        emit FeeSourceToFeeDestinationSet(_feeSource, _feeDestination, _feeSourceName);
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

    function removeApprovalForTokens(address[] calldata tokenList) external onlyOwner {
        for (uint256 i = 0; i < tokenList.length; i++) {
            IERC20(tokenList[i]).approve(AGGREGATOR, 0);
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


    // ============ Seller Admin Functions ============

    function handleWavaxAndNativeAvaxSplit() external onlySellerAdmin {
        require(isWavaxAndNativeAvaxBalanceThresholdMet(), "WAVAX balance threshold not met");
        IWAVAX(WAVAX_ADDRESS).withdraw( IERC20(WAVAX_ADDRESS).balanceOf(address(this)));
        _splitAvaxProceeds(address(this).balance);
    }


    function handleArena(uint256 amount, bytes calldata data) external onlySellerAdmin {
        uint256 wavaxBalance = IERC20(WAVAX_ADDRESS).balanceOf(address(this));
        uint256 arenaBalance = IERC20(ARENA_TOKEN_ADDRESS).balanceOf(address(this));
        uint256 foundationSplit = amount * (10000 - splitBps) / splitBps;
        (bool ok, bytes memory ret) = AGGREGATOR.call(data);
        if (!ok) {
            assembly { revert(add(ret, 0x20), mload(ret)) }
        }
        uint256 arenaSold =  arenaBalance - IERC20(ARENA_TOKEN_ADDRESS).balanceOf(address(this));
        if(arenaSold  > 0) {
            uint256 wavaxDiff = IERC20(WAVAX_ADDRESS).balanceOf(address(this)) - wavaxBalance;
            address[] memory tokens = new address[](1);
            tokens[0] = ARENA_TOKEN_ADDRESS;
            uint256[] memory amounts = new uint256[](1);
            amounts[0] = arenaSold;
            uint256[] memory prevTokenBalances = new uint256[](1);
            prevTokenBalances[0] = arenaBalance;
            _applyChecksAndUpdates(tokens, prevTokenBalances);
            IERC20(ARENA_TOKEN_ADDRESS).transfer(foundationWallet, foundationSplit);
            IWAVAX(WAVAX_ADDRESS).withdraw(wavaxDiff);
            (bool sentArenaFeeWallet, ) = arenaFeeWallet.call{value: wavaxDiff}("");
            if (!sentArenaFeeWallet) revert TransferFailed(arenaFeeWallet, wavaxDiff);
            emit TokensSold(tokens, amounts, wavaxDiff, block.timestamp);
            emit ProceedsSplit(wavaxDiff, 0, wavaxDiff);

        }
        
    }

    function batchSell(address[] calldata tokenList, bytes calldata aggregatorCalldata) external onlySellerAdmin nonReentrant {
        uint256[] memory prevTokenBalances = _getTokenBalances(tokenList);
        uint256 wavaxBalance = IERC20(WAVAX_ADDRESS).balanceOf(address(this));
        // execute aggregator call
        (bool aggregatorSuccess, bytes memory aggregatorReturnData) = AGGREGATOR.call(aggregatorCalldata);
        if (!aggregatorSuccess) revert AggregatorCallFailed(aggregatorReturnData);
        // post-sell checks and updates
        uint256[] memory amountsSold = _applyChecksAndUpdates(tokenList, prevTokenBalances);
        uint256 wavaxBalanceDiff = wavaxBalance - IERC20(WAVAX_ADDRESS).balanceOf(address(this));
        IWAVAX(WAVAX_ADDRESS).withdraw(wavaxBalanceDiff);
        _splitAvaxProceeds(wavaxBalanceDiff);
        emit TokensSold(tokenList, amountsSold, wavaxBalanceDiff, block.timestamp);

    }

    function approveTokensIfNeededBatch(address[] calldata tokenList) external onlySellerAdmin {
        for (uint256 i = 0; i < tokenList.length; i++) { // TODO check if maxApproving causes issues
            address tokenAddress = tokenList[i];
            uint256 currentAllowance = IERC20(tokenAddress).allowance(address(this), AGGREGATOR);
            if (currentAllowance < type(uint256).max / 2) {
                IERC20(tokenAddress).approve(AGGREGATOR, type(uint256).max);
            }
        }
    }

    // ============ View Functions ============

    function isWavaxAndNativeAvaxBalanceThresholdMet() public view returns (bool) {
        uint256 nativeAssetBaalance = IERC20(WAVAX_ADDRESS).balanceOf(address(this)) + address(this).balance;
        return nativeAssetBaalance > 5 ether;
    }

    function isApprovalNeededBatch(address[] calldata tokenList) external view returns (bool[] memory isApprovalNeeded) {
        isApprovalNeeded = new bool[](tokenList.length);
        for (uint256 i = 0; i < tokenList.length; i++) {
            isApprovalNeeded[i] = IERC20(tokenList[i]).allowance(address(this), AGGREGATOR) < type(uint256).max / 2;
        }
    }

    function tokenTotalSupplyBatch(address[] calldata tokenList) external view returns (uint256[] memory totalSupplies) {
        totalSupplies = new uint256[](tokenList.length);
        for (uint256 i = 0; i < tokenList.length; i++) {
            totalSupplies[i] = IERC20(tokenList[i]).totalSupply();
        }
    }

    // ============ Internal Functions ============

    function _applyChecksAndUpdates(address[] memory tokenList, uint256[] memory prevTokenBalances) internal returns (uint256[] memory amountsSold) {
        TokenParams memory defaultParamsLocal = defaultParams;
        amountsSold = new uint256[](tokenList.length);
        for (uint256 i = 0; i < tokenList.length; i++) {
            address tokenAddress = tokenList[i];
            require(tokenAddress != WAVAX_ADDRESS && tokenAddress != ARENA_TOKEN_ADDRESS, "WAVAX and ARENA are not supported");
            TokenParams memory effectiveParams = _getEffectiveTokenConfig(tokenAddress, defaultParamsLocal);
            // check if balance changes contradicts maxSupplyNumerator
            uint256 postBalance = IERC20(tokenAddress).balanceOf(address(this));
            uint256 previousTokenBalance = prevTokenBalances[i];
            uint256 amountSold = 0;
            if(previousTokenBalance >= postBalance) { // its possible you end up with more tokens due to fee routing etc.
                amountSold = previousTokenBalance - postBalance;
            }
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
            if(amountSold > 0) {
                tokenParams[tokenAddress].latestSwapTs = uint32(block.timestamp);
            }
        }
        
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

    function _splitAvaxProceeds(uint256 avaxProceeds) internal {
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


    // ============ Receive Native Token ============
    receive() external payable {
        if(msg.sender == WAVAX_ADDRESS) { 
            // split based on source
            emit DEBUG("WAVAX received", msg.value);
            return;
        }
        address feeDestination = feeSourceToFeeDestination[msg.sender];
        if(feeDestination == address(0)) { // just let it sit in the contract
            return;
        }

        uint256 arenaFeeWalletProceeds = (msg.value * splitBps) / 10000;
        uint256 foundationWalletProceeds = msg.value - arenaFeeWalletProceeds;
        (bool sentFoundationWallet, ) = foundationWallet.call{value: foundationWalletProceeds}("");
        if (!sentFoundationWallet) revert TransferFailed(foundationWallet, foundationWalletProceeds);
        (bool sentArenaFeeWallet, ) = feeDestination.call{value: arenaFeeWalletProceeds}("");
        if (!sentArenaFeeWallet) revert TransferFailed(feeDestination, arenaFeeWalletProceeds);
        
  
    }


    fallback() external payable {}
}


