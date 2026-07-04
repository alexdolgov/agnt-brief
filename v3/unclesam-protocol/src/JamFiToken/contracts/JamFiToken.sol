// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

interface ICrowdSale {
    event TokensPurchased(address indexed purchaser, address indexed beneficiary, uint256 value, uint256 amount);

    function token() external view returns (IERC20);
    function wallet() external view returns (address payable);
    function fundsRaised() external view returns (uint256);
    function tokensAvailable() external view returns (uint256);
    function buyTokens(address beneficiary) external payable;
    function externalBuyTokens(address beneficiary, uint256 tokenAmount) external;
}

contract JamFiToken is ERC20, Ownable, ReentrancyGuard, Pausable, ICrowdSale {
    AggregatorV3Interface public immutable priceFeed;
    address payable public ethReceiver;
    uint256 public immutable totalTokensForPresale = 160_000_000 * 10**18;
    uint256 public totalFundsRaised;
    uint256 public totalTokensSold; // Tracks total tokens sold across all phases
    bool public presaleEnded;
    bool public listingStarted;

    uint256 public immutable presaleStart;
    uint256 public constant PHASES = 4;
    uint256 public constant PHASE_TOKENS = 40_000_000 * 10**18;
    uint256 public constant TEAM_TOKENS = 150_000_000 * 10**18;
    uint256 public constant TREASURY_TOKENS = 100_000_000 * 10**18;
    uint256 public constant MARKETING_TOKENS = 100_000_000 * 10**18;
    uint256 public constant AIRDROP_TOKENS = 50_000_000 * 10**18;
    uint256 public constant EARLY_INVESTOR_TOKENS = 40_000_000 * 10**18;
    uint256 public constant POOLS_TOKENS = 400_000_000 * 10**18;
    uint256 public constant INVESTOR_CLIFF = 180 days;
    uint256 public constant INVESTOR_SECOND_CLIFF = 360 days; // Second cliff at 12 months
    uint256 public constant TEAM_CLIFF = 16 * 30 days; // 16 months
    uint256 public constant TREASURY_CLIFF = 730 days;

    address public immutable teamWallet;
    address public immutable treasuryWallet;
    address public immutable marketingWallet;

    mapping(address => uint256) public purchased;
    mapping(address => bool) public claimed; // First 50% claimed
    mapping(address => bool) public claimedSecond; // Second 50% claimed
    uint256 public investorTokensReleased; // Tracks total early investor tokens released
    uint256 public investorReleaseCount; // Tracks number of release calls (max 3)
    bool public teamTokensReleased;
    bool public treasuryTokensReleased;
    bool public marketingTokensReleased;

    uint256[4] private phasePrices = [2e16, 4e16, 6e16, 8e16]; // USD prices: 0.02, 0.04, 0.06, 0.08

    event TokensGrantedByAdmin(address indexed beneficiary, uint256 amount);
    event TokensClaimed(address indexed claimer, uint256 amount);
    event ETHReceived(address indexed sender, uint256 amount);
    event PresaleEnded();
    event ListingStarted();
    event TokensReleased(string purpose, address indexed recipient, uint256 amount);

    modifier onlyWhilePresaleActive() {
        require(!presaleEnded, "Presale ended");
        require(totalTokensSold < totalTokensForPresale, "All phases complete");
        _;
    }

    constructor(
        address payable _ethReceiver,
        address _priceFeed,
        address _teamWallet,
        address _treasuryWallet,
        address _marketingWallet
    ) ERC20("JamFi", "JAMI") Ownable(msg.sender) {
        ethReceiver = _ethReceiver;
        priceFeed = AggregatorV3Interface(_priceFeed);
        teamWallet = _teamWallet;
        treasuryWallet = _treasuryWallet;
        marketingWallet = _marketingWallet;
        presaleStart = block.timestamp;

        _mint(address(this), totalSupplyAmount());
    }

    function totalSupplyAmount() public pure returns (uint256) {
        return 1_000_000_000 * 10**18;
    }

    function buyTokens(address beneficiary) public payable nonReentrant onlyWhilePresaleActive whenNotPaused {
        require(msg.value > 0, "No ETH sent");
        require(beneficiary != address(0), "Invalid beneficiary");

        uint256 currentPhase = getCurrentPhase();
        uint256 tokenPrice = phasePrices[currentPhase];
        uint256 ethPrice = getETHPrice();
        uint256 tokensToBuy = (msg.value * ethPrice) / tokenPrice;
        require(tokensToBuy > 0, "Zero tokens");

        uint256 newTotalTokensSold = totalTokensSold + tokensToBuy;
        require(newTotalTokensSold <= totalTokensForPresale, "Presale cap reached");
        require(balanceOf(address(this)) >= tokensToBuy, "Insufficient tokens");

        purchased[beneficiary] += tokensToBuy;
        totalTokensSold = newTotalTokensSold;
        totalFundsRaised += msg.value;

        (bool success, ) = ethReceiver.call{value: msg.value}("");
        require(success, "ETH transfer failed");

        if (totalTokensSold >= totalTokensForPresale) {
            presaleEnded = true;
            emit PresaleEnded();
        }

        emit TokensPurchased(msg.sender, beneficiary, msg.value, tokensToBuy);
    }

    function getETHPrice() public view returns (uint256) {
        (, int256 amount, , uint256 updatedAt, ) = priceFeed.latestRoundData();
        require(amount > 0, "Invalid amount");
        require(updatedAt >= block.timestamp - 1 hours, "Stale price");
        return uint256(amount) * 10**10; // Adjust to 18 decimals
    }

    function getCurrentPhase() public view returns (uint256) {
        if (totalTokensSold >= totalTokensForPresale) {
            return PHASES;
        }
        return totalTokensSold / PHASE_TOKENS;
    }

    function getTokenPrice() public view returns (uint256) {
        return phasePrices[getCurrentPhase()];
    }

    function getPurchasedAmount(address user) external view returns (uint256) {
        return purchased[user];
    }

    function claimTokens() external nonReentrant {
        require(purchased[msg.sender] > 0, "Nothing to claim");
        require(block.timestamp >= presaleStart + INVESTOR_CLIFF, "Investor cliff active");

        uint256 amount;
        if (!claimed[msg.sender]) {
            // First unlock: 50% after 6 months
            amount = purchased[msg.sender] / 2;
            claimed[msg.sender] = true;
            _transfer(address(this), msg.sender, amount);
            emit TokensClaimed(msg.sender, amount);
        } else if (!claimedSecond[msg.sender] && block.timestamp >= presaleStart + INVESTOR_SECOND_CLIFF) {
            // Second unlock: remaining 50% after 12 months
            amount = purchased[msg.sender] / 2;
            claimedSecond[msg.sender] = true;
            _transfer(address(this), msg.sender, amount);
            emit TokensClaimed(msg.sender, amount);
        } else {
            revert("Nothing to claim at this time");
        }
    }

    function releaseInvestorTokensBatch(address[] calldata investors, uint256[] calldata amounts) external onlyOwner {
        require(investors.length == amounts.length, "Arrays length mismatch");
        require(investorReleaseCount < 3, "Max releases reached");
        require(investors.length > 0, "No investors provided");

        uint256 totalAmount;
        for (uint256 i = 0; i < amounts.length; i++) {
            totalAmount += amounts[i];
        }
        require(totalAmount > 0, "Zero tokens to release");
        require(investorTokensReleased + totalAmount <= EARLY_INVESTOR_TOKENS, "Exceeds early investor allocation");
        require(block.timestamp >= presaleStart + INVESTOR_CLIFF, "Investor cliff active");

        for (uint256 i = 0; i < investors.length; i++) {
            require(investors[i] != address(0), "Invalid investor address");
            require(amounts[i] > 0, "Invalid amount");
            _transfer(address(this), investors[i], amounts[i]);
            emit TokensReleased("Early Investor", investors[i], amounts[i]);
        }

        investorTokensReleased += totalAmount;
        investorReleaseCount += 1;
    }

    function releaseRemainingInvestorTokens() external onlyOwner {
        require(investorTokensReleased < EARLY_INVESTOR_TOKENS, "No tokens left");

        uint256 remaining = EARLY_INVESTOR_TOKENS - investorTokensReleased;
        investorTokensReleased = EARLY_INVESTOR_TOKENS;
        _transfer(address(this), treasuryWallet, remaining);
        emit TokensReleased("Remaining Investor Tokens", treasuryWallet, remaining);
    }

    function endPresale() external onlyOwner {
        require(!presaleEnded, "Presale already ended");
        presaleEnded = true;
        emit PresaleEnded();
    }

    function startListing() external onlyOwner {
        require(presaleEnded, "Presale not ended");
        require(!listingStarted, "Listing already started");
        listingStarted = true;
        emit ListingStarted();
    }

    function updateETHReceiver(address payable newWallet) external onlyOwner {
        require(newWallet != address(0), "Invalid wallet");
        ethReceiver = newWallet;
    }

    function releaseTeamTokens() external onlyOwner {
        require(block.timestamp >= presaleStart + TEAM_CLIFF, "Team cliff active");
        require(!teamTokensReleased, "Team tokens released");

        teamTokensReleased = true;
        _transfer(address(this), teamWallet, TEAM_TOKENS);
        emit TokensReleased("Team", teamWallet, TEAM_TOKENS);
    }

    function releaseTreasuryTokens() external onlyOwner {
        require(block.timestamp >= presaleStart + TREASURY_CLIFF, "Treasury cliff active");
        require(!treasuryTokensReleased, "Treasury tokens released");

        treasuryTokensReleased = true;
        _transfer(address(this), treasuryWallet, TREASURY_TOKENS);
        emit TokensReleased("Treasury", treasuryWallet, TREASURY_TOKENS);
    }

    function releasePoolTokens(address pool) external onlyOwner {
        require(listingStarted, "Listing not started");
        require(pool != address(0), "Invalid pool");
        _transfer(address(this), pool, POOLS_TOKENS);
        emit TokensReleased("Liquidity Pools", pool, POOLS_TOKENS);
    }

    function releaseMarketingTokens() external onlyOwner {
        require(listingStarted, "Listing not started");
        require(!marketingTokensReleased, "Marketing tokens already released");

        marketingTokensReleased = true;
        _transfer(address(this), marketingWallet, MARKETING_TOKENS);
        emit TokensReleased("Marketing", marketingWallet, MARKETING_TOKENS);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function canClaim(address user) external view returns (bool) {
        if (purchased[user] == 0) return false;
        if (!claimed[user] && block.timestamp >= presaleStart + INVESTOR_CLIFF) return true;
        if (!claimedSecond[user] && block.timestamp >= presaleStart + INVESTOR_SECOND_CLIFF) return true;
        return false;
    }

    function getTokensLeftInPhase() external view returns (uint256) {
        uint256 currentPhase = getCurrentPhase();
        if (currentPhase >= PHASES) {
            return 0;
        }
        uint256 tokensSoldInPhase = totalTokensSold % PHASE_TOKENS;
        return PHASE_TOKENS - tokensSoldInPhase;
    }

    function getCliffStatus() external view returns (uint256 investorCliffEnd, uint256 investorSecondCliffEnd, uint256 teamCliffEnd, uint256 treasuryCliffEnd) {
        investorCliffEnd = presaleStart + INVESTOR_CLIFF;
        investorSecondCliffEnd = presaleStart + INVESTOR_SECOND_CLIFF;
        teamCliffEnd = presaleStart + TEAM_CLIFF;
        treasuryCliffEnd = presaleStart + TREASURY_CLIFF;
    }

    receive() external payable {
        if (msg.value > 0 && !presaleEnded && totalTokensSold < totalTokensForPresale) {
            emit ETHReceived(msg.sender, msg.value);
            buyTokens(msg.sender);
        }
    }

    fallback() external payable {
        if (msg.value > 0 && !presaleEnded && totalTokensSold < totalTokensForPresale) {
            emit ETHReceived(msg.sender, msg.value);
            buyTokens(msg.sender);
        }
    }

    function token() external view override returns (IERC20) {
        return IERC20(address(this));
    }

    function wallet() external view override returns (address payable) {
        return ethReceiver;
    }

    function fundsRaised() external view override returns (uint256) {
        return totalFundsRaised;
    }

    function tokensAvailable() external view returns (uint256) {
        return balanceOf(address(this));
    }

    function externalBuyTokens(address beneficiary, uint256 tokenAmount) external override onlyOwner {
        require(beneficiary != address(0), "Invalid beneficiary");
        require(balanceOf(address(this)) >= tokenAmount, "Insufficient tokens");
        require(!presaleEnded, "Presale ended");

        uint256 newTotalTokensSold = totalTokensSold + tokenAmount;
        require(newTotalTokensSold <= totalTokensForPresale, "Presale cap reached");

        purchased[beneficiary] += tokenAmount;
        totalTokensSold = newTotalTokensSold;

        if (totalTokensSold >= totalTokensForPresale) {
            presaleEnded = true;
            emit PresaleEnded();
        }

        emit TokensGrantedByAdmin(beneficiary, tokenAmount);
    }
}