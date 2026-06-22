// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

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

contract HyprDropDore is ERC721, ERC721URIStorage, Ownable, ReentrancyGuard, Pausable {
    uint256 private _nextTokenId = 1;
    
    // External contracts
    IHyprBurn public hyprBurnContract;
    IERC20 public usdtToken;
    
    // Drop configuration
    struct DropConfig {
        uint256 startTime;              // Drop start timestamp
        uint256 nftPrice;               // Price per NFT (100 USDT)
        uint256 maxTotalRaise;          // Total amount that can be raised (100k for Dore)
        uint256 phase1MaxRaise;         // Max for first 30 minutes (80k)
        bool active;                    // Drop active status
        bool ended;                     // Drop ended status
        string baseTokenURI;            // Base URI for NFT metadata
    }
    
    DropConfig public dropConfig;
    
    // Timing configuration (in seconds) 
    uint256 public constant HYPR_ONLY_DURATION = 15 * 60;      // 15 minutes
    uint256 public constant HyprSuprPhase_DURATION = 15 * 60;      // 15 minutes  
    uint256 public constant PHASE1_TOTAL_DURATION = 30 * 60;   // 30 minutes total (fixed from 9999)
    
    uint256 public constant MAX_NFTS_PER_TX = 100;
    
    // Tier allocation tracking (in USDT amount, not NFT count)
    mapping(string => uint256) public tierMaxInvestment;
    mapping(string => uint256) public tierCurrentInvestment;
    
    // Wallet investment tracking
    mapping(address => uint256) public walletTotalInvestment;
    mapping(address => uint256[]) public walletTokenIds;
    
    // NFT metadata tracking
    struct NFTData {
        uint256 nftNumber;          // Sequential NFT number in the drop
        string tier;                // Investor's tier at mint time
        uint256 investmentAmount;   // Amount invested for this specific NFT
        uint256 investmentDate;     // Timestamp of investment
    }
    
    mapping(uint256 => NFTData) public nftData;
    
    // Investment batch tracking
    struct InvestmentBatch {
        address investor;
        uint256 totalAmount;
        uint256 nftCount;
        string tier;
        uint256 timestamp;
        uint256[] tokenIds;
    }
    
    InvestmentBatch[] public allInvestmentBatches;
    uint256 public totalAmountRaised;
    uint256 public totalNFTsMinted;
    
    // ============ EVENTS ============
    
    event DropConfigured(
        uint256 startTime,
        uint256 nftPrice,
        uint256 maxTotalRaise
    );
    
    event InvestmentMade(
        address indexed investor,
        uint256 totalAmount,
        uint256 nftCount,
        string tier,
        uint256[] tokenIds,
        uint256 timestamp
    );
    
    event NFTMinted(
        address indexed investor,
        uint256 indexed tokenId,
        uint256 nftNumber,
        string tier,
        uint256 investmentDate
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
    
    // ============ CONSTRUCTOR ============
    
    constructor(
        address _hyprBurnContract,
        address _usdtToken,
        string memory _name,
        string memory _symbol
    ) ERC721(_name, _symbol) Ownable(msg.sender) {
        require(_hyprBurnContract != address(0), "Invalid HyprBurn contract");
        require(_usdtToken != address(0), "Invalid USDT token");
        
        hyprBurnContract = IHyprBurn(_hyprBurnContract);
        usdtToken = IERC20(_usdtToken);
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
    
    function getWalletInvestment(address wallet) public view returns (
        uint256 totalInvested,
        uint256 nftCount,
        uint256[] memory tokenIds
    ) {
        totalInvested = walletTotalInvestment[wallet];
        nftCount = walletTokenIds[wallet].length;
        tokenIds = walletTokenIds[wallet];
    }
    
    function getTierAllocation(string memory tier) public view returns (
        uint256 maxInvestment,
        uint256 currentInvestment,
        uint256 remainingInvestment
    ) {
        maxInvestment = tierMaxInvestment[tier];
        currentInvestment = tierCurrentInvestment[tier];
        remainingInvestment = maxInvestment > currentInvestment ? maxInvestment - currentInvestment : 0;
    }
    
    function canUserInvest(address user, uint256 amount) public view returns (bool, string memory) {
        if (!dropConfig.active || dropConfig.ended) {
            return (false, "Drop not active");
        }
        
        if (amount == 0 || amount % dropConfig.nftPrice != 0) {
            return (false, "Amount must be multiple of NFT price");
        }
        
        string memory userTier = hyprBurnContract.tierNameOf(user);
        
        if (!isTierEligible(userTier)) {
            return (false, "Tier not eligible in current phase");
        }
        
        // Check tier investment limits
        if (tierCurrentInvestment[userTier] + amount > tierMaxInvestment[userTier]) {
            return (false, "Exceeds tier investment allocation");
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
        
        uint256 nftCount = amount / dropConfig.nftPrice;
        if (nftCount > MAX_NFTS_PER_TX) {
            return (false, "Exceeds max NFTs per transaction");
        }
        
        return (true, "Can invest");
    }
    
    function getDropProgress() public view returns (
        uint256 totalRaised,
        uint256 totalTarget,
        uint256 totalNFTs,
        uint256 participantCount,
        string memory currentPhase
    ) {
        totalRaised = totalAmountRaised;
        totalTarget = dropConfig.maxTotalRaise;
        totalNFTs = totalNFTsMinted;
        participantCount = allInvestmentBatches.length;
        currentPhase = getCurrentPhase();
    }
    
    // ============ MAIN INVESTMENT FUNCTION ============
    
    function invest(uint256 amount) external nonReentrant whenNotPaused {
        require(dropConfig.active && !dropConfig.ended, "Drop not active");
        require(block.timestamp >= dropConfig.startTime, "Drop not started");
        require(amount > 0 && amount % dropConfig.nftPrice == 0, "Invalid amount");
        
        string memory userTier = hyprBurnContract.tierNameOf(msg.sender);
        

        require(isValidTier(userTier), "Invalid tier");
        require(isTierEligible(userTier), "Tier not eligible");
        
        // Calculate NFT count
        uint256 nftCount = amount / dropConfig.nftPrice;

        require(nftCount <= MAX_NFTS_PER_TX, "Exceeds max NFTs per transaction");
        
        // Check allocation limits
        require(
            tierCurrentInvestment[userTier] + amount <= tierMaxInvestment[userTier],
            "Exceeds tier allocation"
        );
        
        // Check phase limits
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
            usdtToken.allowance(msg.sender, address(this)) >= amount,
            "Insufficient USDT allowance"
        );
        
        // Transfer USDT from user to contract

        usdtToken.transferFrom(msg.sender, address(this), amount);

        
        // Mint NFTs
        uint256[] memory tokenIds = new uint256[](nftCount);
        
        for (uint256 i = 0; i < nftCount; i++) {
            uint256 tokenId = _nextTokenId++;
            
            _safeMint(msg.sender, tokenId);
            
            // Store NFT metadata
            totalNFTsMinted++;
            nftData[tokenId] = NFTData({
                nftNumber: totalNFTsMinted,
                tier: userTier,
                investmentAmount: dropConfig.nftPrice,
                investmentDate: block.timestamp
            });
            
            // Set token URI - individual URIs for dynamic metadata
            string memory uri = string(abi.encodePacked(
                dropConfig.baseTokenURI,
                "/",
                Strings.toString(tokenId)
            ));
            _setTokenURI(tokenId, uri);
            
            tokenIds[i] = tokenId;
            walletTokenIds[msg.sender].push(tokenId);
            
            emit NFTMinted(
                msg.sender,
                tokenId,
                totalNFTsMinted,
                userTier,
                block.timestamp
            );
        }
        
        // Update tracking
        walletTotalInvestment[msg.sender] += amount;
        tierCurrentInvestment[userTier] += amount;
        totalAmountRaised += amount;
        
        // Record investment batch
        allInvestmentBatches.push(InvestmentBatch({
            investor: msg.sender,
            totalAmount: amount,
            nftCount: nftCount,
            tier: userTier,
            timestamp: block.timestamp,
            tokenIds: tokenIds
        }));
        
        emit InvestmentMade(
            msg.sender,
            amount,
            nftCount,
            userTier,
            tokenIds,
            block.timestamp
        );
        
        // Auto-end drop if target reached
        if (totalAmountRaised >= dropConfig.maxTotalRaise) {
            dropConfig.ended = true;
            emit DropCompleted(totalAmountRaised, totalNFTsMinted, block.timestamp);
        }
    }
    
    // ============ ADMIN FUNCTIONS ============
    
    function configureDrop(
        uint256 _startTime,
        uint256 _nftPrice,
        uint256 _maxTotalRaise,
        uint256 _phase1MaxRaise,
        uint256 _hyprMaxInvestment,
        uint256 _suprMaxInvestment,
        uint256 _commonrMaxInvestment,
        string memory _baseTokenURI
    ) external onlyOwner {
        require(_startTime > block.timestamp, "Start time must be future");
        require(_nftPrice > 0, "NFT price must be > 0");
        require(_maxTotalRaise > 0, "Max raise must be > 0");
        require(_phase1MaxRaise <= _maxTotalRaise, "Phase 1 max exceeds total");
        
        dropConfig = DropConfig({
            startTime: _startTime,
            nftPrice: _nftPrice,
            maxTotalRaise: _maxTotalRaise,
            phase1MaxRaise: _phase1MaxRaise,
            active: false,
            ended: false,
            baseTokenURI: _baseTokenURI
        });
        
        // Set tier allocations (in USDT amount)
        tierMaxInvestment["Hypr"] = _hyprMaxInvestment;
        tierMaxInvestment["Supr"] = _suprMaxInvestment;
        tierMaxInvestment["Commonr"] = _commonrMaxInvestment;
        
        emit DropConfigured(_startTime, _nftPrice, _maxTotalRaise);
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
        
        uint256 balance = usdtToken.balanceOf(address(this));
        require(balance > 0, "No USDT to withdraw");
        
        require(usdtToken.transfer(to, balance), "Transfer failed");
    }
    
    function emergencyWithdraw(address to) external onlyOwner whenPaused {
        require(to != address(0), "Cannot withdraw to zero address");
        
        uint256 balance = usdtToken.balanceOf(address(this));
        require(balance > 0, "No USDT to withdraw");
        
        require(usdtToken.transfer(to, balance), "Transfer failed");
    }
    
    function updateBaseTokenURI(string memory newBaseURI) external onlyOwner {
        dropConfig.baseTokenURI = newBaseURI;
    }
    
    function pause() external onlyOwner {
        _pause();
    }
    
    function unpause() external onlyOwner {
        _unpause();
    }
    
    // ============ OVERRIDE FUNCTIONS ============
    
    function tokenURI(uint256 tokenId) 
        public 
        view 
        override(ERC721, ERC721URIStorage) 
        returns (string memory) 
    {
        return super.tokenURI(tokenId);
    }
    
    function supportsInterface(bytes4 interfaceId) 
        public 
        view 
        override(ERC721, ERC721URIStorage) 
        returns (bool) 
    {
        return super.supportsInterface(interfaceId);
    }
}