// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./PerryEgg.sol";
import "./Whitelist.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract PerryShop is AccessControl, ReentrancyGuard {

    bytes32 public constant SHOP_MANAGER_ROLE = keccak256("SHOP_MANAGER_ROLE");

    IERC20 public ffToken;

    uint256 public constant WHITELIST_PRICE = 1000 * 10 ** 18; // 1000 FF
    uint256 public constant PREFERRED_PRICE = 1900 * 10 ** 18; // 1900 FF
    uint256 public constant PUBLIC_PRICE = 2000 * 10 ** 18; // 2000 FF

    PerryEgg public perryEgg;
    Whitelist public whitelist;
    address public treasury;

    uint256 public saleStartTime;
    uint256 public constant WHITELIST_DURATION = 24 hours;
    uint256 public constant TOTAL_DURATION = 72 hours;

    // Track purchases to enforce pricing rules
    mapping(address => bool) public whitelistPurchased; // Used 1000 FF whitelist price
    mapping(address => bool) public preferredPurchased; // Used 1900 FF preferred price
    mapping(address => bool) public publicSalePurchased; // Used 2000 FF public price
    mapping(address => uint256) public totalPurchased; // Total eggs purchased

    event PerryEggPurchased(address indexed buyer, uint256 tokenId, uint256 price);
    event SaleStarted(uint256 startTime);
    event TreasuryUpdated(address newTreasury);

    error SaleNotStarted();
    error SaleEnded();
    error NotWhitelisted();
    error AlreadyPurchasedAtWhitelistPrice();
    error AlreadyPurchasedAtPreferredPrice();
    error AlreadyPurchasedAtPublicPrice();
    error InvalidTreasury();
    error InvalidStartTime();

    constructor(address _perryEgg, address _whitelist, address _treasury, address _ffToken) {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(SHOP_MANAGER_ROLE, msg.sender);

        perryEgg = PerryEgg(_perryEgg);
        whitelist = Whitelist(_whitelist);
        treasury = _treasury;
        ffToken = IERC20(_ffToken);
    }

    function startSale(uint256 _startTime) external onlyRole(SHOP_MANAGER_ROLE) {
        if (_startTime == 0) {
            revert InvalidStartTime();
        }
        saleStartTime = _startTime;
        emit SaleStarted(saleStartTime);
    }

    function startSaleNow() external onlyRole(SHOP_MANAGER_ROLE) {
        saleStartTime = block.timestamp;
        emit SaleStarted(saleStartTime);
    }

    function setTreasury(address _treasury) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_treasury == address(0)) {
            revert InvalidTreasury();
        }
        treasury = _treasury;
        emit TreasuryUpdated(_treasury);
    }

    function _purchase(uint256 price) internal {
        // Transfer FF tokens from buyer to treasury
        ffToken.transferFrom(msg.sender, treasury, price);

        totalPurchased[msg.sender]++;

        // Mint the PerryEgg
        uint256 tokenId = perryEgg.mint(msg.sender);

        emit PerryEggPurchased(msg.sender, tokenId, price);
    }

    function purchase() external nonReentrant {
        if (saleStartTime == 0 || block.timestamp < saleStartTime) {
            revert SaleNotStarted();
        }

        if (block.timestamp > saleStartTime + TOTAL_DURATION) {
            revert SaleEnded();
        }

        bool isWhitelistedUser = whitelist.isWhitelisted(msg.sender);
        bool isStakedUser = whitelist.isStaked(msg.sender);
        bool inWhitelistPeriod = block.timestamp <= saleStartTime + WHITELIST_DURATION;

        if (inWhitelistPeriod) {
            // During whitelist period - only whitelisted users can purchase at whitelist price
            if (!isWhitelistedUser) {
                revert NotWhitelisted();
            }
            if (whitelistPurchased[msg.sender]) {
                revert AlreadyPurchasedAtWhitelistPrice();
            }

            whitelistPurchased[msg.sender] = true;
            _purchase(WHITELIST_PRICE);
        } else {
            // After whitelist period - determine best price for user
            if (
                (isWhitelistedUser || isStakedUser) && !whitelistPurchased[msg.sender]
                    && !preferredPurchased[msg.sender]
            ) {
                // Eligible for preferred price
                preferredPurchased[msg.sender] = true;
                _purchase(PREFERRED_PRICE);
            } else {
                // Public price for everyone else
                if (publicSalePurchased[msg.sender]) {
                    revert AlreadyPurchasedAtPublicPrice();
                }
                publicSalePurchased[msg.sender] = true;
                _purchase(PUBLIC_PRICE);
            }
        }
    }

    function isWhitelistPeriod() external view returns (bool) {
        if (saleStartTime == 0) {
            return false;
        }
        return block.timestamp >= saleStartTime && block.timestamp <= saleStartTime + WHITELIST_DURATION;
    }

    function isPublicSalePeriod() external view returns (bool) {
        if (saleStartTime == 0) {
            return false;
        }
        return block.timestamp > saleStartTime + WHITELIST_DURATION && block.timestamp <= saleStartTime + TOTAL_DURATION;
    }

    function getTimeUntilPublicSale() external view returns (uint256) {
        if (saleStartTime == 0) {
            return 0;
        }
        uint256 publicSaleStart = saleStartTime + WHITELIST_DURATION;
        if (block.timestamp >= publicSaleStart) {
            return 0;
        }
        return publicSaleStart - block.timestamp;
    }

    function getTimeUntilSaleStart() external view returns (uint256) {
        if (saleStartTime == 0 || block.timestamp >= saleStartTime) {
            return 0;
        }
        return saleStartTime - block.timestamp;
    }

    function getPriceForUser(address user) external view returns (uint256) {
        if (saleStartTime == 0 || block.timestamp < saleStartTime || block.timestamp > saleStartTime + TOTAL_DURATION) {
            return 0;
        }

        bool isWhitelistedUser = whitelist.isWhitelisted(user);
        bool isStakedUser = whitelist.isStaked(user);
        bool inWhitelistPeriod = block.timestamp <= saleStartTime + WHITELIST_DURATION;

        if (inWhitelistPeriod) {
            if (isWhitelistedUser && !whitelistPurchased[user]) {
                return WHITELIST_PRICE;
            }
            return 0; // Not eligible during whitelist period
        } else {
            if ((isWhitelistedUser || isStakedUser) && !whitelistPurchased[user] && !preferredPurchased[user]) {
                return PREFERRED_PRICE;
            }
            if (publicSalePurchased[user]) {
                return 0;
            }
            return PUBLIC_PRICE;
        }
    }

    function getUserPurchaseInfo(address user)
        external
        view
        returns (bool hasWhitelistPurchase, bool hasPreferredPurchase, bool hasPublicPurchase, uint256 totalPurchases)
    {
        return (whitelistPurchased[user], preferredPurchased[user], publicSalePurchased[user], totalPurchased[user]);
    }

}
