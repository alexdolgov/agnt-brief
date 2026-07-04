// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "./interfaces/ISOUCore.sol";
import "./PriceOracle.sol";
import "./SOUActivityTracker.sol";
import "./ISOUMetadata.sol";

/**
 * @title SOUCore
 * @notice Core SOU NFT contract - Minimal, stable NFT that tracks user compensation claims
 * @dev Implements ISOUCore interface. Distribution logic moved to SOUDistributionManager
 */
contract SOUCore is
    Initializable,
    ERC721Upgradeable,
    ERC721EnumerableUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    UUPSUpgradeable,
    ISOUCore
{
    // ============================================
    // ROLES
    // ============================================

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant DISTRIBUTION_MANAGER_ROLE = keccak256("DISTRIBUTION_MANAGER_ROLE");

    // ============================================
    // STATE VARIABLES
    // ============================================

    // Core NFT data
    mapping(uint256 => SOUClaim) private _claims;
    // 2D mapping: tokenId => tokenAddress => tokenAmount
    mapping(uint256 => mapping(address => uint256)) private _tokenLosses;
    // Track which tokens each SOU has lost (for iteration)
    mapping(uint256 => address[]) private _lostTokens;
    uint256 private _nextTokenId;

    // Global tracking
    uint256 public override totalOutstandingPrincipalUSD;
    uint256 public override totalPaidOutUSD;

    // Token to holders mapping (for eligibility queries)
    mapping(address => uint256[]) private _tokenToHolders;

    // References to other contracts
    address public distributionManager;
    PriceOracle public priceOracle;
    SOUActivityTracker public activityTracker;
    ISOUMetadata public souMetadata;

    // Storage gap for future upgrades
    uint256[48] private __gap;

    // ============================================
    // ERRORS
    // ============================================

    error SOUCore__NotOwner();
    error SOUCore__TokenDoesNotExist();
    error SOUCore__InsufficientPrincipal();
    error SOUCore__InvalidPercentage();
    error SOUCore__NoTokensToMerge();
    error SOUCore__TokenNotFound();
    error SOUCore__InsufficientTokenAmount();
    error SOUCore__ZeroAddress();
    error SOUCore__ZeroAmount();
    error SOUCore__InvalidTokenAllocation();
    error SOUCore__TokenNotInSOU();

    // ============================================
    // INITIALIZATION
    // ============================================

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _priceOracle,
        address admin,
        address _activityTracker,
        address _souMetadata
    ) public initializer {
        if (_priceOracle == address(0) || admin == address(0)) {
            revert SOUCore__ZeroAddress();
        }

        __ERC721_init("Shib Owes You", "SOU");
        __ERC721Enumerable_init();
        __AccessControl_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();

        priceOracle = PriceOracle(_priceOracle);
        _nextTokenId = 1;

        activityTracker = SOUActivityTracker(_activityTracker);

        souMetadata = ISOUMetadata(_souMetadata);

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(ADMIN_ROLE, admin);
    }

    // ============================================
    // MINTING & TOKEN LOSS TRACKING
    // ============================================

    /**
     * @notice Internal function to mint a new SOU
     * @dev Shared logic used by handleBridgeCompensation
     */
    function _mintSOU(
        address to,
        address token,
        uint256 amount,
        bytes32 snapshotId
    ) internal returns (uint256 tokenId) {
        if (to == address(0)) revert SOUCore__ZeroAddress();
        if (amount == 0) revert SOUCore__ZeroAmount();

        tokenId = _nextTokenId++;

        // Get token price from oracle
        uint256 usdValue = priceOracle.calculateUSDValue(token, snapshotId, amount);

        // Create claim
        _claims[tokenId] = SOUClaim({
            originalPrincipalUSD: usdValue,
            currentPrincipalUSD: usdValue,
            totalPaidOutUSD: 0,
            donationsReceivedUSD: 0,
            rewardsReceivedUSD: 0,
            isActive: true,
            originalOwner: to,
            createdAt: block.timestamp
        });

        // Add token loss using 2D mapping
        _tokenLosses[tokenId][token] = amount;
        _lostTokens[tokenId].push(token);

        // Track token to holders
        _tokenToHolders[token].push(tokenId);

        // Update global state
        totalOutstandingPrincipalUSD += usdValue;

        // Mint NFT
        _safeMint(to, tokenId);

        emit SOUMinted(tokenId, to, usdValue);
        emit TokenLossAdded(tokenId, token, amount, usdValue);

        return tokenId;
    }

    /**
     * @notice Handle bridge compensation - mints new SOU or adds to existing
     * @dev If user has no SOU: mints new one. If user has SOU: adds to their first SOU
     * @param user The user who lost tokens
     * @param token The token address that was lost
     * @param amount The amount of token lost
     * @return tokenId The SOU token ID (new or existing)
     */
    function handleBridgeCompensation(
        address user,
        address token,
        uint256 amount
    ) external onlyRole(MINTER_ROLE) returns (uint256 tokenId) {
        if (user == address(0)) revert SOUCore__ZeroAddress();
        if (amount == 0) revert SOUCore__ZeroAmount();

        bytes32 snapshotId = priceOracle.PRE_HACK_SNAPSHOT();

        // Check if user already has a SOU
        uint256 userBalance = balanceOf(user);

        if (userBalance == 0) {
            // User has no SOU - mint new one using internal function
            tokenId = _mintSOU(user, token, amount, snapshotId);

            // Record bridge compensation activity
            if (address(activityTracker) != address(0)) {
                activityTracker.recordActivity(user, tokenId, SOUActivityTracker.ActivityType.MINT, abi.encode(token, amount, snapshotId));
            }
        } else {
            // User has SOU - get their first SOU and add to it
            tokenId = tokenOfOwnerByIndex(user, 0);

            if (!_exists(tokenId)) revert SOUCore__TokenDoesNotExist();

            // Get token price from oracle
            uint256 usdValue = priceOracle.calculateUSDValue(token, snapshotId, amount);

            // Add to existing token loss using 2D mapping
            if (_tokenLosses[tokenId][token] == 0) {
                // First time losing this token - track it
                _lostTokens[tokenId].push(token);
                _tokenToHolders[token].push(tokenId);
            }
            _tokenLosses[tokenId][token] += amount;

            // Update claim totals
            _claims[tokenId].originalPrincipalUSD += usdValue;
            _claims[tokenId].currentPrincipalUSD += usdValue;
            _claims[tokenId].isActive = true;

            // Update global state
            totalOutstandingPrincipalUSD += usdValue;

            emit TokenLossAdded(tokenId, token, amount, usdValue);

            // Record activity if tracker is set
            if (address(activityTracker) != address(0)) {
                activityTracker.recordActivity(user, tokenId, SOUActivityTracker.ActivityType.UPDATE, abi.encode(token, amount, snapshotId, usdValue));
            }
        }

        return tokenId;
    }

    // ============================================
    // PRINCIPAL MANAGEMENT
    // ============================================

    /**
     * @notice Reduce principal after USD-based payout
     * @dev Also proportionally reduces all token amounts in _tokenLosses
     *      to keep token-level data in sync with currentPrincipalUSD.
     *      This prevents stale token amounts if token-specific payouts happen later.
     */
    function reducePrincipal(
        uint256 tokenId,
        uint256 amountUSD
    ) external override onlyRole(DISTRIBUTION_MANAGER_ROLE) {
        if (!_exists(tokenId)) revert SOUCore__TokenDoesNotExist();
        uint256 currentPrincipal = _claims[tokenId].currentPrincipalUSD;
        if (currentPrincipal < amountUSD) {
            revert SOUCore__InsufficientPrincipal();
        }

        // Proportionally reduce all token amounts
        // ratio = amountUSD / currentPrincipalUSD
        // Each token reduced by: tokenAmount * amountUSD / currentPrincipalUSD
        address[] storage lostTokens = _lostTokens[tokenId];
        for (uint256 i = 0; i < lostTokens.length; i++) {
            address tokenAddr = lostTokens[i];
            uint256 tokenAmount = _tokenLosses[tokenId][tokenAddr];
            if (tokenAmount > 0) {
                uint256 reduction = (tokenAmount * amountUSD) / currentPrincipal;
                _tokenLosses[tokenId][tokenAddr] -= reduction;
            }
        }

        _claims[tokenId].currentPrincipalUSD -= amountUSD;
        totalOutstandingPrincipalUSD -= amountUSD;

        // Auto-deactivate when fully paid
        if (_claims[tokenId].currentPrincipalUSD == 0) {
            _claims[tokenId].isActive = false;
        }

        emit PrincipalReduced(tokenId, amountUSD, _claims[tokenId].currentPrincipalUSD);
    }

    /**
     * @notice Reduce principal and track specific token claimed
     * @dev Token validation is handled by caller (DistributionManager) which has role check
     *      Token amount claimed is tracked by reducing _tokenLosses mapping
     */
    function reducePrincipalWithToken(
        uint256 tokenId,
        address tokenAddress,
        uint256 tokenAmount,
        uint256 usdValueReduction
    ) external override onlyRole(DISTRIBUTION_MANAGER_ROLE) {
        if (!_exists(tokenId)) revert SOUCore__TokenDoesNotExist();
        if (_claims[tokenId].currentPrincipalUSD < usdValueReduction) {
            revert SOUCore__InsufficientPrincipal();
        }

        // Update token loss tracking by reducing the amount in mapping
        // Caller (DistributionManager) ensures token exists and amount is valid
        _tokenLosses[tokenId][tokenAddress] -= tokenAmount;

        // Update principal
        _claims[tokenId].currentPrincipalUSD -= usdValueReduction;
        totalOutstandingPrincipalUSD -= usdValueReduction;

        emit PrincipalReducedWithToken(tokenId, tokenAddress, tokenAmount, usdValueReduction);
        emit PrincipalReduced(tokenId, usdValueReduction, _claims[tokenId].currentPrincipalUSD);
    }

    /**
     * @notice Increase paid out amount
     */
    function increasePaidOut(
        uint256 tokenId,
        uint256 amountUSD
    ) external override onlyRole(DISTRIBUTION_MANAGER_ROLE) {
        if (!_exists(tokenId)) revert SOUCore__TokenDoesNotExist();

        _claims[tokenId].totalPaidOutUSD += amountUSD;
        totalPaidOutUSD += amountUSD;

        emit PaidOutIncreased(tokenId, amountUSD, _claims[tokenId].totalPaidOutUSD);
    }

    /**
     * @notice Track reward received (does NOT reduce principal)
     */
    function increaseRewardsReceived(
        uint256 tokenId,
        uint256 amountUSD
    ) external override onlyRole(DISTRIBUTION_MANAGER_ROLE) {
        if (!_exists(tokenId)) revert SOUCore__TokenDoesNotExist();

        _claims[tokenId].rewardsReceivedUSD += amountUSD;

        emit RewardsIncreased(tokenId, amountUSD, _claims[tokenId].rewardsReceivedUSD);
    }

    /**
     * @notice Track donation received (does NOT reduce principal)
     */
    function increaseDonationsReceived(
        uint256 tokenId,
        uint256 amountUSD
    ) external override onlyRole(DISTRIBUTION_MANAGER_ROLE) {
        if (!_exists(tokenId)) revert SOUCore__TokenDoesNotExist();

        _claims[tokenId].donationsReceivedUSD += amountUSD;

        emit DonationsIncreased(tokenId, amountUSD, _claims[tokenId].donationsReceivedUSD);
    }

    // ============================================
    // ACTIVITY TRACKING
    // ============================================

    /**
     * @notice Record activity in ActivityTracker
     * @dev Only callable by DistributionManager
     */
    function recordActivity(
        address user,
        uint256 tokenId,
        uint8 activityType,
        bytes calldata data
    ) external override onlyRole(DISTRIBUTION_MANAGER_ROLE) {
        if (address(activityTracker) != address(0)) {
            activityTracker.recordActivity(
                user,
                tokenId,
                SOUActivityTracker.ActivityType(activityType),
                data
            );
        }
    }

    // ============================================
    // QUERY FUNCTIONS
    // ============================================

    /**
     * @notice Get full claim data
     */
    function getClaim(uint256 tokenId) external view override returns (SOUClaim memory) {
        if (!_exists(tokenId)) revert SOUCore__TokenDoesNotExist();
        return _claims[tokenId];
    }

    /**
     * @notice Check if user lost specific token
     */
    function hasLostToken(uint256 tokenId, address token) external view override returns (bool) {
        if (!_exists(tokenId)) return false;
        return _tokenLosses[tokenId][token] > 0;
    }

    /**
     * @notice Get amount of specific token user lost (remaining claimable)
     */
    function getTokenLost(uint256 tokenId, address token) external view override returns (uint256) {
        if (!_exists(tokenId)) return 0;
        return _tokenLosses[tokenId][token];
    }

    /**
     * @notice Get all tokens user lost
     * @dev Returns array of TokenLoss structs for compatibility
     */
    function getTokenLosses(uint256 tokenId) external view override returns (TokenLoss[] memory) {
        if (!_exists(tokenId)) revert SOUCore__TokenDoesNotExist();

        address[] storage lostTokens = _lostTokens[tokenId];
        TokenLoss[] memory losses = new TokenLoss[](lostTokens.length);

        for (uint256 i = 0; i < lostTokens.length; i++) {
            address tokenAddr = lostTokens[i];
            uint256 amount = _tokenLosses[tokenId][tokenAddr];

            bytes32 snapshotId = priceOracle.PRE_HACK_SNAPSHOT();

            // Get reference price from oracle (use current price as reference)
            (uint256 priceUSD,,) = priceOracle.getTokenPrice(tokenAddr, snapshotId);
            uint256 usdValue = priceOracle.calculateUSDValue(tokenAddr, snapshotId, amount);

            losses[i] = TokenLoss({
                tokenAddress: tokenAddr,
                tokenAmount: amount,
                referencePriceUSD: priceUSD,
                usdValueAtLoss: usdValue
            });
        }

        return losses;
    }

    /**
     * @notice Get all token IDs that lost specific token
     * @dev WARNING: This array grows unbounded and should NOT be used for on-chain iteration.
     *      Use off-chain indexing or implement aggregate tracking for production use.
     *      The array is never cleaned up when tokens are burned, split, or merged.
     */
    function getTokenIdsWithLoss(address token) external view override returns (uint256[] memory) {
        return _tokenToHolders[token];
    }

    // ============================================
    // OPERATIONS
    // ============================================

    /**
     * @notice Split SOU into two new tokens and burn original (like old contract)
     * @param tokenId The SOU token ID to split
     * @param percentage Percentage to allocate to first new token (1-99)
     * @return newTokenId The ID of the first newly created token
     */
    function splitSOU(uint256 tokenId, uint256 percentage) external override nonReentrant returns (uint256 newTokenId) {
        if (ownerOf(tokenId) != msg.sender) revert SOUCore__NotOwner();
        if (percentage == 0 || percentage >= 100) revert SOUCore__InvalidPercentage();
        if (!_claims[tokenId].isActive) revert SOUCore__TokenDoesNotExist();

        SOUClaim storage claim = _claims[tokenId];
        address owner = ownerOf(tokenId);

        // Calculate split amounts based on percentage
        uint256 firstAmount = (claim.currentPrincipalUSD * percentage) / 100;
        uint256 secondAmount = claim.currentPrincipalUSD - firstAmount;

        _burn(tokenId);

        // Create first split token
        uint256 newTokenId1 = _createSplitToken(tokenId, firstAmount, owner);
        // Create second split token
        uint256 newTokenId2 = _createSplitToken(tokenId, secondAmount, owner);

        // Deactivate and burn original token
        claim.isActive = false;

        emit SOUSplit(tokenId, newTokenId1, percentage);

        // Record split activity
        if (address(activityTracker) != address(0)) {
            activityTracker.recordActivity(owner, tokenId, SOUActivityTracker.ActivityType.SPLIT, abi.encode(tokenId, newTokenId1, newTokenId2, percentage));
        }

        // Return first token ID (interface expects single return value)
        return newTokenId1;
    }

    /**
     * @notice Split SOU by specific token allocation
     * @param tokenId The SOU token ID to split
     * @param tokensForFirstSOU Array of token addresses to allocate to the first SOU (remaining tokens go to second SOU)
     * @return newTokenId1 The ID of the first newly created token
     * @return newTokenId2 The ID of the second newly created token
     */
    function splitSOUByTokens(
        uint256 tokenId,
        address[] calldata tokensForFirstSOU
    ) external override nonReentrant returns (uint256 newTokenId1, uint256 newTokenId2) {
        if (ownerOf(tokenId) != msg.sender) revert SOUCore__NotOwner();
        if (!_claims[tokenId].isActive) revert SOUCore__TokenDoesNotExist();
        if (tokensForFirstSOU.length == 0) revert SOUCore__InvalidTokenAllocation();

        SOUClaim storage claim = _claims[tokenId];
        address owner = ownerOf(tokenId);
        address[] storage allLostTokens = _lostTokens[tokenId];

        // Ensure not all tokens are allocated to first SOU (second SOU would be empty)
        if (tokensForFirstSOU.length >= allLostTokens.length) {
            revert SOUCore__InvalidTokenAllocation();
        }

        // Build arrays for both SOUs in a single loop
        // This validates tokens and separates them simultaneously
        address[] memory tokensForSecondSOU = new address[](allLostTokens.length - tokensForFirstSOU.length);
        uint256[] memory firstTokenAmounts = new uint256[](tokensForFirstSOU.length);
        uint256[] memory secondTokenAmounts = new uint256[](tokensForSecondSOU.length);
        bool[] memory foundInFirst = new bool[](tokensForFirstSOU.length);
        uint256 secondIndex = 0;

        // Loop through all tokens once
        for (uint256 i = 0; i < allLostTokens.length; i++) {
            address tokenAddr = allLostTokens[i];
            bool isInFirstSOU = false;

            // Check if this token is in the first SOU
            for (uint256 j = 0; j < tokensForFirstSOU.length; j++) {
                if (tokenAddr == tokensForFirstSOU[j]) {
                    isInFirstSOU = true;
                    foundInFirst[j] = true;
                    // Store amount for first SOU
                    firstTokenAmounts[j] = _tokenLosses[tokenId][tokenAddr];
                    break;
                }
            }

            // If not in first SOU, add to second SOU
            if (!isInFirstSOU) {
                tokensForSecondSOU[secondIndex] = tokenAddr;
                secondTokenAmounts[secondIndex] = _tokenLosses[tokenId][tokenAddr];
                secondIndex++;
            }
        }

        // Validate that all specified tokens were found in the SOU
        for (uint256 i = 0; i < foundInFirst.length; i++) {
            if (!foundInFirst[i]) {
                revert SOUCore__TokenNotInSOU();
            }
        }

        // Calculate USD values for each split based on token allocations
        (uint256 firstSouUsdValue, uint256 secondSouUsdValue) = _calculateSplitValues(
            tokenId,
            tokensForFirstSOU
        );

        _burn(tokenId);

        // Create both SOUs with stored token data
        newTokenId1 = _createSplitTokenWithAllocations(
            tokenId,
            tokensForFirstSOU,
            firstTokenAmounts,
            firstSouUsdValue,
            owner
        );

        newTokenId2 = _createSplitTokenWithAllocations(
            tokenId,
            tokensForSecondSOU,
            secondTokenAmounts,
            secondSouUsdValue,
            owner
        );

        // Deactivate original token
        claim.isActive = false;

        emit SOUSplit(tokenId, newTokenId1, 0); // percentage = 0 for token-based split

        // Record split activity
        if (address(activityTracker) != address(0)) {
            activityTracker.recordActivity(
                owner,
                tokenId,
                SOUActivityTracker.ActivityType.SPLIT,
                abi.encode(tokenId, newTokenId1, newTokenId2, 0) // 0 percentage for token-based split
            );
        }

        return (newTokenId1, newTokenId2);
    }

    /**
     * @notice Calculate USD values for each split based on token allocations
     */
    function _calculateSplitValues(
        uint256 tokenId,
        address[] calldata tokensForFirstSOU
    ) internal view returns (uint256 firstSouUsdValue, uint256 secondSouUsdValue) {
        SOUClaim storage claim = _claims[tokenId];
        bytes32 snapshotId = priceOracle.PRE_HACK_SNAPSHOT();

        // Calculate USD value of tokens going to first SOU
        uint256 firstSouTokensUsdValue = 0;
        for (uint256 i = 0; i < tokensForFirstSOU.length; i++) {
            address tokenAddr = tokensForFirstSOU[i];
            uint256 tokenAmount = _tokenLosses[tokenId][tokenAddr];

            // Convert token amount to USD value
            uint256 usdValue = priceOracle.calculateUSDValue(tokenAddr, snapshotId, tokenAmount);
            firstSouTokensUsdValue += usdValue;
        }

        // Proportionally split the USD principal based on token values
        // We use originalPrincipalUSD which already contains the total USD value of all tokens
        if (claim.originalPrincipalUSD > 0) {
            firstSouUsdValue = (claim.currentPrincipalUSD * firstSouTokensUsdValue) / claim.originalPrincipalUSD;
            secondSouUsdValue = claim.currentPrincipalUSD - firstSouUsdValue;
        } else {
            // Fallback: split evenly if no original principal exists
            firstSouUsdValue = claim.currentPrincipalUSD / 2;
            secondSouUsdValue = claim.currentPrincipalUSD - firstSouUsdValue;
        }

        return (firstSouUsdValue, secondSouUsdValue);
    }

    /**
     * @notice Create a new SOU token from splitting by token allocation
     */
    function _createSplitTokenWithAllocations(
        uint256 originalTokenId,
        address[] memory tokens,
        uint256[] memory tokenAmounts,
        uint256 splitCurrentPrincipalUSD,
        address owner
    ) internal returns (uint256 newTokenId) {
        newTokenId = _nextTokenId++;
        SOUClaim storage originalClaim = _claims[originalTokenId];

        // Calculate proportion based on current principal
        uint256 proportion = (splitCurrentPrincipalUSD * 1e18) / originalClaim.currentPrincipalUSD;
        uint256 splitOriginalUSD = (originalClaim.originalPrincipalUSD * proportion) / 1e18;
        uint256 splitPaidOutUSD = (originalClaim.totalPaidOutUSD * proportion) / 1e18;
        uint256 splitDonationsUSD = (originalClaim.donationsReceivedUSD * proportion) / 1e18;
        uint256 splitRewardsUSD = (originalClaim.rewardsReceivedUSD * proportion) / 1e18;

        // Create new claim with split amounts
        _claims[newTokenId] = SOUClaim({
            originalPrincipalUSD: splitOriginalUSD,
            currentPrincipalUSD: splitCurrentPrincipalUSD,
            totalPaidOutUSD: splitPaidOutUSD,
            donationsReceivedUSD: splitDonationsUSD,
            rewardsReceivedUSD: splitRewardsUSD,
            isActive: true,
            originalOwner: owner,
            createdAt: block.timestamp
        });

        // Allocate specified tokens with their amounts to new SOU
        for (uint256 i = 0; i < tokens.length; i++) {
            address tokenAddr = tokens[i];
            uint256 tokenAmount = tokenAmounts[i];

            // Add token amount to new SOU
            _tokenLosses[newTokenId][tokenAddr] = tokenAmount;
            _lostTokens[newTokenId].push(tokenAddr);

            // Track new token for this token type
            _tokenToHolders[tokenAddr].push(newTokenId);
        }

        // Mint new NFT
        _safeMint(owner, newTokenId);

        emit SOUMinted(newTokenId, owner, splitCurrentPrincipalUSD);

        return newTokenId;
    }

    /**
     * @notice Internal function to create a new SOU from splitting an existing one
     * @dev Proportionally splits all token losses and claim data
     */
    function _createSplitToken(
        uint256 originalTokenId,
        uint256 splitCurrentPrincipalUSD,
        address owner
    ) internal returns (uint256 newTokenId) {
        newTokenId = _nextTokenId++;
        SOUClaim storage originalClaim = _claims[originalTokenId];

        // Calculate proportional amounts based on current principal
        uint256 proportion = (splitCurrentPrincipalUSD * 1e18) / originalClaim.currentPrincipalUSD;
        uint256 splitOriginalUSD = (originalClaim.originalPrincipalUSD * proportion) / 1e18;
        uint256 splitPaidOutUSD = (originalClaim.totalPaidOutUSD * proportion) / 1e18;
        uint256 splitDonationsUSD = (originalClaim.donationsReceivedUSD * proportion) / 1e18;
        uint256 splitRewardsUSD = (originalClaim.rewardsReceivedUSD * proportion) / 1e18;

        // Create new claim with split amounts
        _claims[newTokenId] = SOUClaim({
            originalPrincipalUSD: splitOriginalUSD,
            currentPrincipalUSD: splitCurrentPrincipalUSD,
            totalPaidOutUSD: splitPaidOutUSD,
            donationsReceivedUSD: splitDonationsUSD,
            rewardsReceivedUSD: splitRewardsUSD,
            isActive: true,
            originalOwner: owner,
            createdAt: block.timestamp
        });

        // Split token losses proportionally using new 2D mapping
        address[] storage lostTokens = _lostTokens[originalTokenId];
        for (uint256 i = 0; i < lostTokens.length; i++) {
            address tokenAddr = lostTokens[i];
            uint256 originalAmount = _tokenLosses[originalTokenId][tokenAddr];

            // Calculate split amount
            uint256 splitAmount = (originalAmount * proportion) / 1e18;

            // Add to new token
            _tokenLosses[newTokenId][tokenAddr] = splitAmount;
            _lostTokens[newTokenId].push(tokenAddr);

            // Reduce from original
            _tokenLosses[originalTokenId][tokenAddr] -= splitAmount;

            // Track new token for this token type
            _tokenToHolders[tokenAddr].push(newTokenId);
        }

        // Reduce original claim amounts
        originalClaim.originalPrincipalUSD -= splitOriginalUSD;
        originalClaim.currentPrincipalUSD -= splitCurrentPrincipalUSD;
        originalClaim.totalPaidOutUSD -= splitPaidOutUSD;
        originalClaim.donationsReceivedUSD -= splitDonationsUSD;
        originalClaim.rewardsReceivedUSD -= splitRewardsUSD;

        // Mint new NFT
        _safeMint(owner, newTokenId);

        emit SOUMinted(newTokenId, owner, splitCurrentPrincipalUSD);

        return newTokenId;
    }

    /**
     * @notice Merge multiple SOUs into one
     */
    function mergeSOU(uint256[] calldata tokenIds) external override nonReentrant returns (uint256 newTokenId) {
        if (tokenIds.length == 0) revert SOUCore__NoTokensToMerge();

        // Verify ownership and calculate totals
        uint256 totalOriginalUSD = 0;
        uint256 totalCurrentUSD = 0;
        uint256 mergedPaidOutUSD = 0;
        uint256 totalDonationsUSD = 0;
        uint256 totalRewardsUSD = 0;

        for (uint256 i = 0; i < tokenIds.length; i++) {
            if (ownerOf(tokenIds[i]) != msg.sender) revert SOUCore__NotOwner();
            if (!_claims[tokenIds[i]].isActive) revert SOUCore__TokenDoesNotExist();

            SOUClaim storage claim = _claims[tokenIds[i]];
            totalOriginalUSD += claim.originalPrincipalUSD;
            totalCurrentUSD += claim.currentPrincipalUSD;
            mergedPaidOutUSD += claim.totalPaidOutUSD;
            totalDonationsUSD += claim.donationsReceivedUSD;
            totalRewardsUSD += claim.rewardsReceivedUSD;
        }

        // Create new merged SOU
        newTokenId = _nextTokenId++;

        _claims[newTokenId] = SOUClaim({
            originalPrincipalUSD: totalOriginalUSD,
            currentPrincipalUSD: totalCurrentUSD,
            totalPaidOutUSD: mergedPaidOutUSD,
            donationsReceivedUSD: totalDonationsUSD,
            rewardsReceivedUSD: totalRewardsUSD,
            isActive: true,
            originalOwner: msg.sender,
            createdAt: block.timestamp
        });

        // Merge token losses using new 2D mapping
        for (uint256 i = 0; i < tokenIds.length; i++) {
            address[] storage lostTokens = _lostTokens[tokenIds[i]];

            for (uint256 j = 0; j < lostTokens.length; j++) {
                address tokenAddr = lostTokens[j];
                uint256 amount = _tokenLosses[tokenIds[i]][tokenAddr];

                // Add to merged token (or create if first time)
                if (_tokenLosses[newTokenId][tokenAddr] == 0) {
                    _lostTokens[newTokenId].push(tokenAddr);
                    _tokenToHolders[tokenAddr].push(newTokenId);
                }
                _tokenLosses[newTokenId][tokenAddr] += amount;
            }

            // Deactivate old claim
            _claims[tokenIds[i]].isActive = false;

            // Burn old NFT
            _burn(tokenIds[i]);
        }

        // Mint new NFT
        _safeMint(msg.sender, newTokenId);

        emit SOUMerged(tokenIds, newTokenId);
        emit SOUMinted(newTokenId, msg.sender, totalCurrentUSD);

        // Record merge activity
        if (address(activityTracker) != address(0)) {
            activityTracker.recordActivity(msg.sender, newTokenId, SOUActivityTracker.ActivityType.MERGE, abi.encode(tokenIds, newTokenId, totalCurrentUSD));
        }

        return newTokenId;
    }

    // ============================================
    // ADMIN FUNCTIONS
    // ============================================

    /**
     * @notice Set distribution manager contract
     */
    function setDistributionManager(address _distributionManager) external onlyRole(ADMIN_ROLE) {
        if (_distributionManager == address(0)) revert SOUCore__ZeroAddress();
        if(distributionManager != address(0)) {
            // Revoke role from previous manager
            _revokeRole(DISTRIBUTION_MANAGER_ROLE, distributionManager);
        }
        // Assign new manager and grant role
        distributionManager = _distributionManager;
        _grantRole(DISTRIBUTION_MANAGER_ROLE, _distributionManager);
    }

    /**
     * @notice Set price oracle
     */
    function setPriceOracle(address _priceOracle) external onlyRole(ADMIN_ROLE) {
        if (_priceOracle == address(0)) revert SOUCore__ZeroAddress();
        priceOracle = PriceOracle(_priceOracle);
    }

    /**
     * @notice Set activity tracker contract
     */
    function setActivityTracker(address _activityTracker) external onlyRole(ADMIN_ROLE) {
        activityTracker = SOUActivityTracker(_activityTracker);
    }

    /**
     * @notice Set SOU metadata contract
     */
    function setSOUMetadata(address _souMetadata) external onlyRole(ADMIN_ROLE) {
        souMetadata = ISOUMetadata(_souMetadata);
    }

    // ============================================
    // HELPER FUNCTIONS
    // ============================================

    /**
     * @notice Check if token exists
     */
    function exists(uint256 tokenId) external view override returns (bool) {
        return _exists(tokenId);
    }

    function _exists(uint256 tokenId) internal view returns (bool) {
        return _ownerOf(tokenId) != address(0);
    }

    // ============================================
    // REQUIRED OVERRIDES
    // ============================================

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ADMIN_ROLE) {}

    function _update(address to, uint256 tokenId, address auth)
        internal
        override(ERC721Upgradeable, ERC721EnumerableUpgradeable)
        returns (address)
    {
        address from = _ownerOf(tokenId);
        address previousOwner = super._update(to, tokenId, auth);

        // Record transfer activity (only for actual transfers, not mints/burns)
        if (from != address(0) && to != address(0) && address(activityTracker) != address(0)) {
            activityTracker.recordActivity(
                to,
                tokenId,
                SOUActivityTracker.ActivityType.TRANSFER,
                abi.encode(from, to, block.timestamp)
            );
        }

        return previousOwner;
    }

    function _increaseBalance(address account, uint128 value)
        internal
        override(ERC721Upgradeable, ERC721EnumerableUpgradeable)
    {
        super._increaseBalance(account, value);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721Upgradeable, ERC721EnumerableUpgradeable, AccessControlUpgradeable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    /**
     * @notice Generate tokenURI for SOU NFT
     * @dev Returns metadata URI if souMetadata is set, otherwise returns empty string
     */
    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        if (!_exists(tokenId)) revert SOUCore__TokenDoesNotExist();

        // Return empty string if metadata contract not set
        if (address(souMetadata) == address(0)) {
            return "";
        }

        SOUClaim memory claim = _claims[tokenId];

        return souMetadata.tokenURI(
            tokenId,
            claim.currentPrincipalUSD,
            claim.originalPrincipalUSD,
            claim.totalPaidOutUSD
        );
    }
}
