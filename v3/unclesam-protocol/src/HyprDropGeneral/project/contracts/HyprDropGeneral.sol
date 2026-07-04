// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {ERC721URIStorage} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";

interface IHyprBurn {
    function tierNameOf(address user) external view returns (string memory);
}

contract HyprDropGeneral is ERC721, ERC721URIStorage, Ownable, ReentrancyGuard, Pausable {
    uint256 private _nextTokenId = 1;
    
    // External contracts
    IHyprBurn public hyprBurnContract;
    IERC20 public usdToken;
    
    // NFT Price Tiers (in USDC with 6 decimals)
    uint256 public constant BRONZE_PRICE = 100 * 10**6;   // 100 USDC
    uint256 public constant SILVER_PRICE = 500 * 10**6;   // 500 USDC
    uint256 public constant GOLD_PRICE = 1000 * 10**6;    // 1000 USDC
    
    // Drop configuration
    struct DropConfig {
        uint256 startTime;              // Drop start timestamp
        uint256 maxTotalRaise;          // Total amount that can be raised
        uint256 phase1MaxRaise;         // Max for first 30 minutes
        bool active;                    // Drop active status
        bool ended;                     // Drop ended status
        string baseTokenURI;            // Base URI for NFT metadata
    }
    
    DropConfig public dropConfig;
    
    // Timing configuration (in seconds) 
    uint256 public constant HYPR_ONLY_DURATION = 15 * 60;      // 15 minutes
    uint256 public constant HyprSuprPhase_DURATION = 15 * 60;   // 15 minutes  
    uint256 public constant PHASE1_TOTAL_DURATION = 30 * 60;    // 30 minutes total
    
    uint256 public constant MAX_NFTS_PER_TX = 100;
    
    // Per-wallet tier allocation tracking (in USDC amount)
    mapping(string => uint256) public tierMaxInvestmentPerWallet;
    mapping(address => mapping(string => uint256)) public walletTierInvestment;
    
    // NFT metadata tracking
    mapping(uint256 => string) public nftTier;          // User's tier (Hypr/Supr/Commonr)
    mapping(uint256 => string) public nftPriceTier;     // NFT price tier (Bronze/Silver/Gold)
    mapping(uint256 => uint256) public nftPurchaseAmount; // Amount paid for this NFT
    
    // Wallet investment tracking
    mapping(address => uint256) public walletTotalInvestment;
    mapping(address => uint256[]) public walletTokenIds;
    
    // Price tier statistics
    mapping(string => uint256) public totalNFTsPerPriceTier;
    mapping(address => mapping(string => uint256)) public walletNFTCountPerPriceTier;
    mapping(address => mapping(string => uint256)) public walletPriceTierInvestment; // FIXED: Added USDC tracking per price tier
    
    uint256 public totalAmountRaised;
    uint256 public totalNFTsMinted;
    
    // ============ EVENTS ============
    
    event DropConfigured(
        uint256 startTime,
        uint256 maxTotalRaise,
        uint256 phase1MaxRaise
    );
    
    event InvestmentMade(
        address indexed investor,
        uint256 totalAmount,
        uint256 nftCount,
        string userTier,
        string priceTier,
        uint256 startTokenId,
        uint256 timestamp
    );
    
    event NFTMinted(
        address indexed investor,
        uint256 indexed tokenId,
        string userTier,
        string priceTier,
        uint256 purchaseAmount,
        uint256 timestamp
    );
    
    event PhaseChanged(
        string phase,
        uint256 timestamp
    );
    
    event DropCompleted(
        uint256 totalRaised,
        uint256 totalNFTs,
        uint256 timestamp
    );
    
    event TierLimitsConfigured(
        uint256 hyprMaxPerWallet,
        uint256 suprMaxPerWallet,
        uint256 commonrMaxPerWallet
    );
    
    // ============ CONSTRUCTOR ============
    
    constructor(
        address _hyprBurnContract,
        address _usdToken,
        string memory _name,
        string memory _symbol
    ) ERC721(_name, _symbol) Ownable(msg.sender) {
        require(_hyprBurnContract != address(0), "Invalid HyprBurn contract");
        require(_usdToken != address(0), "Invalid USDT token");
        
        hyprBurnContract = IHyprBurn(_hyprBurnContract);
        usdToken = IERC20(_usdToken);
    }
    
    // ============ VIEW FUNCTIONS ============
    
    function getCurrentPhase() public view returns (string memory) {
        if (!dropConfig.active || dropConfig.ended) {
            return "CLOSED";
        }
        
        uint256 elapsed = block.timestamp - dropConfig.startTime;
        
        if (elapsed < HYPR_ONLY_DURATION) {
            return "HyprPhase";
        } else if (elapsed < PHASE1_TOTAL_DURATION) {
            return "HyprSuprPhase";
        } else {
            return "PublicPhase";
        }
    }
    
    function isValidTier(string memory tier) public pure returns (bool) {
        return (
            keccak256(abi.encodePacked(tier)) == keccak256(abi.encodePacked("Hypr")) ||
            keccak256(abi.encodePacked(tier)) == keccak256(abi.encodePacked("Supr")) ||
            keccak256(abi.encodePacked(tier)) == keccak256(abi.encodePacked("Commonr"))
        );
    }
    
    function isValidPriceTier(string memory priceTier) public pure returns (bool) {
        return (
            keccak256(abi.encodePacked(priceTier)) == keccak256(abi.encodePacked("Bronze")) ||
            keccak256(abi.encodePacked(priceTier)) == keccak256(abi.encodePacked("Silver")) ||
            keccak256(abi.encodePacked(priceTier)) == keccak256(abi.encodePacked("Gold"))
        );
    }
    
    function getPriceForTier(string memory priceTier) public pure returns (uint256) {
        if (keccak256(abi.encodePacked(priceTier)) == keccak256(abi.encodePacked("Bronze"))) {
            return BRONZE_PRICE;
        } else if (keccak256(abi.encodePacked(priceTier)) == keccak256(abi.encodePacked("Silver"))) {
            return SILVER_PRICE;
        } else if (keccak256(abi.encodePacked(priceTier)) == keccak256(abi.encodePacked("Gold"))) {
            return GOLD_PRICE;
        } else {
            revert("Invalid price tier");
        }
    }
    
    function isTierEligible(string memory tier) public view returns (bool) {
        if (!dropConfig.active || dropConfig.ended) {
            return false;
        }
        
        if (!isValidTier(tier)) {
            return false;
        }
        
        string memory currentPhase = getCurrentPhase();
        
        if (keccak256(abi.encodePacked(currentPhase)) == keccak256(abi.encodePacked("HyprPhase"))) {
            return keccak256(abi.encodePacked(tier)) == keccak256(abi.encodePacked("Hypr"));
        } else if (keccak256(abi.encodePacked(currentPhase)) == keccak256(abi.encodePacked("HyprSuprPhase"))) {
            return (
                keccak256(abi.encodePacked(tier)) == keccak256(abi.encodePacked("Hypr")) ||
                keccak256(abi.encodePacked(tier)) == keccak256(abi.encodePacked("Supr"))
            );
        } else if (keccak256(abi.encodePacked(currentPhase)) == keccak256(abi.encodePacked("PublicPhase"))) {
            return true; // All valid tiers are eligible
        }
        
        return false;
    }
    
    // FIXED: Now returns actual USDC invested per price tier and NFT counts
    function getWalletInvestment(address wallet) public view returns (
        uint256 totalInvested,
        uint256 bronzeInvested,
        uint256 silverInvested,
        uint256 goldInvested,
        uint256 bronzeCount,
        uint256 silverCount,
        uint256 goldCount
    ) {
        totalInvested = walletTotalInvestment[wallet];
        bronzeInvested = walletPriceTierInvestment[wallet]["Bronze"];
        silverInvested = walletPriceTierInvestment[wallet]["Silver"];
        goldInvested = walletPriceTierInvestment[wallet]["Gold"];
        bronzeCount = walletNFTCountPerPriceTier[wallet]["Bronze"];
        silverCount = walletNFTCountPerPriceTier[wallet]["Silver"];
        goldCount = walletNFTCountPerPriceTier[wallet]["Gold"];
    }
    
    function getTierAllocation(string memory tier) public view returns (
        uint256 maxInvestmentPerWallet,
        uint256 remainingForWallet
    ) {
        maxInvestmentPerWallet = tierMaxInvestmentPerWallet[tier];
        uint256 currentInvestment = walletTierInvestment[msg.sender][tier];
        remainingForWallet = maxInvestmentPerWallet > currentInvestment ? 
            maxInvestmentPerWallet - currentInvestment : 0;
    }
    
    function canUserInvest(address user, uint256 amount, string memory priceTier) public view returns (bool, string memory) {
        if (!dropConfig.active || dropConfig.ended) {
            return (false, "Drop not active");
        }
        
        if (!isValidPriceTier(priceTier)) {
            return (false, "Invalid price tier");
        }
        
        uint256 pricePerNFT = getPriceForTier(priceTier);
        
        if (amount == 0 || amount % pricePerNFT != 0) {
            return (false, "Amount must be multiple of NFT price for selected tier");
        }
        
        string memory userTier = hyprBurnContract.tierNameOf(user);
        
        if (!isTierEligible(userTier)) {
            return (false, "Tier not eligible in current phase");
        }
        
        // Check per-wallet tier investment limits
        if (walletTierInvestment[user][userTier] + amount > tierMaxInvestmentPerWallet[userTier]) {
            return (false, "Exceeds wallet tier allocation");
        }
        
        // Check phase limits
        string memory currentPhase = getCurrentPhase();
        if (keccak256(abi.encodePacked(currentPhase)) != keccak256(abi.encodePacked("PublicPhase"))) {
            if (totalAmountRaised + amount > dropConfig.phase1MaxRaise) {
                return (false, "Exceeds phase 1 limit");
            }
        } else {
            if (totalAmountRaised + amount > dropConfig.maxTotalRaise) {
                return (false, "Exceeds total raise limit");
            }
        }
        
        uint256 nftCount = amount / pricePerNFT;
        if (nftCount > MAX_NFTS_PER_TX) {
            return (false, "Exceeds max NFTs per transaction");
        }
        
        return (true, "Can invest");
    }
    
    function getDropProgress() public view returns (
        uint256 totalRaised,
        uint256 totalTarget,
        uint256 totalNFTs,
        string memory currentPhase,
        uint256 phase1Target,
        uint256 remainingInPhase
    ) {
        totalRaised = totalAmountRaised;
        totalTarget = dropConfig.maxTotalRaise;
        totalNFTs = totalNFTsMinted;
        currentPhase = getCurrentPhase();
        phase1Target = dropConfig.phase1MaxRaise;
        
        if (keccak256(abi.encodePacked(currentPhase)) != keccak256(abi.encodePacked("PublicPhase"))) {
            remainingInPhase = phase1Target > totalRaised ? phase1Target - totalRaised : 0;
        } else {
            remainingInPhase = totalTarget > totalRaised ? totalTarget - totalRaised : 0;
        }
    }
    
    function getTokenURI(uint256 tokenId) external view returns (string memory) {
        require(_ownerOf(tokenId) != address(0), "Token does not exist");
        return tokenURI(tokenId);
    }
    
    // FIXED: Added pagination limit to prevent gas issues
    function getNFTsByPriceTier(address user, string memory priceTier, uint256 limit) external view returns (
        uint256 count,
        uint256[] memory tokenIds
    ) {
        require(isValidPriceTier(priceTier), "Invalid price tier");
        require(limit > 0 && limit <= 100, "Limit must be between 1 and 100");
        
        count = walletNFTCountPerPriceTier[user][priceTier];
        uint256 returnCount = count > limit ? limit : count;
        tokenIds = new uint256[](returnCount);
        
        uint256 index = 0;
        uint256 totalTokens = walletTokenIds[user].length;
        
        for (uint256 i = 0; i < totalTokens && index < returnCount; i++) {
            uint256 tokenId = walletTokenIds[user][i];
            if (keccak256(abi.encodePacked(nftPriceTier[tokenId])) == keccak256(abi.encodePacked(priceTier))) {
                tokenIds[index] = tokenId;
                index++;
            }
        }
    }
    
    function getTotalNFTsPerTier() external view returns (
        uint256 bronzeCount,
        uint256 silverCount,
        uint256 goldCount
    ) {
        bronzeCount = totalNFTsPerPriceTier["Bronze"];
        silverCount = totalNFTsPerPriceTier["Silver"];
        goldCount = totalNFTsPerPriceTier["Gold"];
    }
    
    function getWalletTokenIds(address wallet) external view returns (uint256[] memory) {
        return walletTokenIds[wallet];
    }
    
    // ============ MAIN INVESTMENT FUNCTION ============
    
    function invest(uint256 amount, string memory priceTier) external nonReentrant whenNotPaused {
        require(dropConfig.active && !dropConfig.ended, "Drop not active");
        require(block.timestamp >= dropConfig.startTime, "Drop not started");
        require(isValidPriceTier(priceTier), "Invalid price tier");
        
        uint256 pricePerNFT = getPriceForTier(priceTier);
        require(amount > 0 && amount % pricePerNFT == 0, "Invalid amount for selected tier");
        
        string memory userTier = hyprBurnContract.tierNameOf(msg.sender);
        
        require(isValidTier(userTier), "Invalid tier");
        require(isTierEligible(userTier), "Tier not eligible");
        
        uint256 nftCount = amount / pricePerNFT;
        require(nftCount <= MAX_NFTS_PER_TX, "Exceeds max NFTs per transaction");
        
        // Check per-wallet tier allocation
        require(
            walletTierInvestment[msg.sender][userTier] + amount <= tierMaxInvestmentPerWallet[userTier],
            "Exceeds wallet tier allocation"
        );
        
        string memory currentPhase = getCurrentPhase();
        if (keccak256(abi.encodePacked(currentPhase)) != keccak256(abi.encodePacked("PublicPhase"))) {
            require(
                totalAmountRaised + amount <= dropConfig.phase1MaxRaise,
                "Exceeds phase 1 limit"
            );
        } else {
            require(
                totalAmountRaised + amount <= dropConfig.maxTotalRaise,
                "Exceeds total raise limit"
            );
        }
        
        require(
            usdToken.allowance(msg.sender, address(this)) >= amount,
            "Insufficient USDC allowance"
        );
        
        // USDC transfer
        require(
            usdToken.transferFrom(msg.sender, address(this), amount),
            "USDC transfer failed"
        );
        
        // Mint NFTs
        uint256 startTokenId = _nextTokenId;
        for (uint256 i = 0; i < nftCount; i++) {
            uint256 tokenId = _nextTokenId++;
            _mint(msg.sender, tokenId);
            
            // FIXED: Removed _setTokenURI call - tokenURI function will handle it
            
            // Store metadata
            nftTier[tokenId] = userTier;
            nftPriceTier[tokenId] = priceTier;
            nftPurchaseAmount[tokenId] = pricePerNFT;
            
            // Update tracking
            walletTokenIds[msg.sender].push(tokenId);
            totalNFTsMinted++;
            
            // Emit detailed event per NFT for backend tracking
            emit NFTMinted(
                msg.sender,
                tokenId,
                userTier,
                priceTier,
                pricePerNFT,
                block.timestamp
            );
        }
        
        // Update investment tracking
        walletTotalInvestment[msg.sender] += amount;
        walletTierInvestment[msg.sender][userTier] += amount;
        walletPriceTierInvestment[msg.sender][priceTier] += amount; // FIXED: Track USDC per price tier
        totalAmountRaised += amount;
        
        // Update price tier statistics
        totalNFTsPerPriceTier[priceTier] += nftCount;
        walletNFTCountPerPriceTier[msg.sender][priceTier] += nftCount;
        
        // Emit investment event
        emit InvestmentMade(
            msg.sender,
            amount,
            nftCount,
            userTier,
            priceTier,
            startTokenId,
            block.timestamp
        );
        
        // Auto-end if target reached
        if (totalAmountRaised >= dropConfig.maxTotalRaise) {
            dropConfig.ended = true;
            emit DropCompleted(totalAmountRaised, totalNFTsMinted, block.timestamp);
        }
    }
    
    // ============ ADMIN FUNCTIONS ============
    
    function configureDrop(
        uint256 _startTime,
        uint256 _maxTotalRaise,
        uint256 _phase1MaxRaise,
        uint256 _hyprMaxInvestmentPerWallet,
        uint256 _suprMaxInvestmentPerWallet,
        uint256 _commonrMaxInvestmentPerWallet,
        string memory _baseTokenURI
    ) external onlyOwner {
        require(_startTime > block.timestamp, "Start time must be future");
        require(_maxTotalRaise > 0, "Max raise must be > 0");
        require(_phase1MaxRaise <= _maxTotalRaise, "Phase 1 max exceeds total");
        require(bytes(_baseTokenURI).length > 0, "Base URI cannot be empty");
        
        dropConfig = DropConfig({
            startTime: _startTime,
            maxTotalRaise: _maxTotalRaise,
            phase1MaxRaise: _phase1MaxRaise,
            active: false,
            ended: false,
            baseTokenURI: _baseTokenURI
        });
        
        tierMaxInvestmentPerWallet["Hypr"] = _hyprMaxInvestmentPerWallet;
        tierMaxInvestmentPerWallet["Supr"] = _suprMaxInvestmentPerWallet;
        tierMaxInvestmentPerWallet["Commonr"] = _commonrMaxInvestmentPerWallet;
        
        emit DropConfigured(_startTime, _maxTotalRaise, _phase1MaxRaise);
        emit TierLimitsConfigured(
            _hyprMaxInvestmentPerWallet,
            _suprMaxInvestmentPerWallet,
            _commonrMaxInvestmentPerWallet
        );
    }
    
    function activateDrop() external onlyOwner {
        require(!dropConfig.active, "Drop already active");
        require(dropConfig.startTime > 0, "Drop not configured");
        
        dropConfig.active = true;
        emit PhaseChanged("ACTIVATED", block.timestamp);
    }
    
    function endDrop() external onlyOwner {
        require(dropConfig.active, "Drop not active");
        require(!dropConfig.ended, "Drop already ended");
        
        dropConfig.ended = true;
        emit DropCompleted(totalAmountRaised, totalNFTsMinted, block.timestamp);
    }

    function withdrawUSDT(address to) external onlyOwner {
        require(to != address(0), "Cannot withdraw to zero address");
        require(dropConfig.ended, "Drop must be ended");
        
        uint256 balance = usdToken.balanceOf(address(this));
        require(balance > 0, "No USDT to withdraw");
        
        require(usdToken.transfer(to, balance), "Transfer failed");
    }
    
    function emergencyWithdraw(address to) external onlyOwner whenPaused {
        require(to != address(0), "Cannot withdraw to zero address");
        
        uint256 balance = usdToken.balanceOf(address(this));
        require(balance > 0, "No USD to withdraw");
        
        require(usdToken.transfer(to, balance), "Transfer failed");
    }
    
    function updateBaseTokenURI(string memory newBaseURI) external onlyOwner {
        require(bytes(newBaseURI).length > 0, "URI cannot be empty");
        dropConfig.baseTokenURI = newBaseURI;
    }
    
    function setTokenURI(uint256 tokenId, string memory _tokenURI) external onlyOwner {
        require(_ownerOf(tokenId) != address(0), "Token does not exist");
        _setTokenURI(tokenId, _tokenURI);
    }
    
    function updateTierLimits(
        uint256 _hyprMaxInvestmentPerWallet,
        uint256 _suprMaxInvestmentPerWallet,
        uint256 _commonrMaxInvestmentPerWallet
    ) external onlyOwner {
        require(!dropConfig.active || dropConfig.ended, "Cannot update during active drop");
        
        tierMaxInvestmentPerWallet["Hypr"] = _hyprMaxInvestmentPerWallet;
        tierMaxInvestmentPerWallet["Supr"] = _suprMaxInvestmentPerWallet;
        tierMaxInvestmentPerWallet["Commonr"] = _commonrMaxInvestmentPerWallet;
        
        emit TierLimitsConfigured(
            _hyprMaxInvestmentPerWallet,
            _suprMaxInvestmentPerWallet,
            _commonrMaxInvestmentPerWallet
        );
    }
    
    function pause() external onlyOwner {
        _pause();
    }
    
    function unpause() external onlyOwner {
        _unpause();
    }
    
    // ============ OVERRIDE FUNCTIONS ============
    
    function _baseURI() internal view override returns (string memory) {
        return dropConfig.baseTokenURI;
    }
    
    // FIXED: Simplified tokenURI to just return baseURI + tokenId
    function tokenURI(uint256 tokenId) 
        public 
        view 
        override(ERC721, ERC721URIStorage) 
        returns (string memory) 
    {
        require(_ownerOf(tokenId) != address(0), "Token does not exist");
        
        // Check if individual URI was set by admin
        string memory _tokenURI = super.tokenURI(tokenId);
        if (bytes(_tokenURI).length > 0) {
            return _tokenURI;
        }
        
        // Otherwise return baseURI + tokenId (no .json suffix)
        return string(abi.encodePacked(_baseURI(), Strings.toString(tokenId)));
    }
    
    function supportsInterface(bytes4 interfaceId) 
        public 
        view 
        override(ERC721, ERC721URIStorage) 
        returns (bool) 
    {
        return super.supportsInterface(interfaceId);
    }
    
    // ============ HELPER FUNCTIONS ============
    
    function getRemainingInvestmentForUser(address user) external view returns (
        uint256 remaining,
        string memory userTier,
        uint256 maxAllowed,
        uint256 alreadyInvested
    ) {
        userTier = hyprBurnContract.tierNameOf(user);
        
        if (!isValidTier(userTier) || !isTierEligible(userTier)) {
            return (0, userTier, 0, 0);
        }
        
        maxAllowed = tierMaxInvestmentPerWallet[userTier];
        alreadyInvested = walletTierInvestment[user][userTier];
        remaining = maxAllowed > alreadyInvested ? maxAllowed - alreadyInvested : 0;
        
        // Also check against phase/total limits
        string memory currentPhase = getCurrentPhase();
        uint256 phaseRemaining;
        
        if (keccak256(abi.encodePacked(currentPhase)) != keccak256(abi.encodePacked("PublicPhase"))) {
            phaseRemaining = dropConfig.phase1MaxRaise > totalAmountRaised ? 
                dropConfig.phase1MaxRaise - totalAmountRaised : 0;
        } else {
            phaseRemaining = dropConfig.maxTotalRaise > totalAmountRaised ? 
                dropConfig.maxTotalRaise - totalAmountRaised : 0;
        }
        
        // Return the minimum of wallet limit and phase limit
        if (phaseRemaining < remaining) {
            remaining = phaseRemaining;
        }
    }
    
    function getPhaseTimeRemaining() external view returns (
        string memory currentPhase,
        uint256 secondsRemaining
    ) {
        currentPhase = getCurrentPhase();
        
        if (!dropConfig.active || dropConfig.ended) {
            return (currentPhase, 0);
        }
        
        uint256 elapsed = block.timestamp - dropConfig.startTime;
        
        if (elapsed < HYPR_ONLY_DURATION) {
            secondsRemaining = HYPR_ONLY_DURATION - elapsed;
        } else if (elapsed < PHASE1_TOTAL_DURATION) {
            secondsRemaining = PHASE1_TOTAL_DURATION - elapsed;
        } else {
            secondsRemaining = 0; // In public phase, no time limit
        }
    }
}