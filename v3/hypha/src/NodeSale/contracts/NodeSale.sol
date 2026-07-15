// SPDX-License-Identifier: GPL-3.0
pragma solidity =0.8.29;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract NodeSale is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;
    
    address constant TREASURY = 0x1E3D04c315eDBb584A9fB85F5Aa30d6385a6859C;
    uint256 public price = 4000 * 10**18;
    uint256 public maxNodes = 50;
    uint256 public maxSupply = 249;
    uint256 public supply;
    bool public salesActive = false;
    bool public isWhitelistEnabled = false;

    address[] private supportedTokenList;
    address[] public buyers;

    mapping(address => bool) public whitelist;
    mapping(address => uint256) public nodesPurchased;
    mapping(address => bool) public supportedTokens;
    

    event NodePurchased(address buyer, address token, uint256 amount);
    event WhitelistAdded(address user);
    event WhitelistRemoved(address user);
    event TokenAdded(address token);
    event TokenRemoved(address token);
    event PriceUpdated(uint256 newPrice);
    event SalesStatusChanged(bool isActive);
    event WhitelistStatusChanged(bool isEnabled);
    event MaxNodesUpdated(uint256 newMaxNodes);
    event MaxSupplyUpdated(uint256 newMaxSupply);

    constructor() Ownable(msg.sender) {}

    function buy(uint256 nodeAmount) external nonReentrant {
        require(salesActive, "Sales are not active");
        if (isWhitelistEnabled) {
            require(whitelist[msg.sender], "Not whitelisted");
        }
        address selectedToken = address(0);
        uint256 requiredAmount = 0;
        
        for (uint i; i < supportedTokenList.length; i++) {
            address token = supportedTokenList[i];
            if (!supportedTokens[token]) continue;
            
            IERC20 tokenContract = IERC20(token);
            
            uint8 decimals;
            (bool success, bytes memory data) = token.staticcall(abi.encodeWithSignature("decimals()"));
            if (success && data.length >= 32) {
                decimals = uint8(abi.decode(data, (uint8)));
            } else {
                decimals = 18;
            }
            
            uint256 tokenPrice = price * 10**decimals / 10**18;
            uint256 totalPrice = tokenPrice * nodeAmount;
            
            uint256 allowance = tokenContract.allowance(msg.sender, address(this));
            uint256 balanceOf = tokenContract.balanceOf(msg.sender);
            if ((allowance >= totalPrice) && (balanceOf >= totalPrice)) {
                selectedToken = token;
                requiredAmount = totalPrice;
                break;
            }
        }
        
        require(selectedToken != address(0), "No token with sufficient allowance");
        IERC20(selectedToken).safeTransferFrom(msg.sender, address(this), requiredAmount);
        
        if (nodesPurchased[msg.sender] == 0) {
            buyers.push(msg.sender);
        }
        nodesPurchased[msg.sender] += nodeAmount;
        supply += nodeAmount;
        require(nodesPurchased[msg.sender] <= maxNodes, "You can't buy more nodes");
        require(supply <= maxSupply, "Max number of nodes reached");
        emit NodePurchased(msg.sender, selectedToken, nodeAmount);
    }
    
    function addSupportedToken(address token) external onlyOwner {
        if (!supportedTokens[token]) {
            supportedTokens[token] = true;
            supportedTokenList.push(token);
            emit TokenAdded(token);
        }
    }

    function removeSupportedToken(address token) external onlyOwner {
        if (supportedTokens[token]) {
            supportedTokens[token] = false;
            for (uint i; i < supportedTokenList.length; i++) {
                if (supportedTokenList[i] == token) {
                    if (i < supportedTokenList.length - 1) {
                        supportedTokenList[i] = supportedTokenList[supportedTokenList.length - 1];
                    }
                    supportedTokenList.pop();
                    break;
                }
            }            
            emit TokenRemoved(token);
        }
    }
    function setWhitelistEnabled(bool enabled) external onlyOwner {
        isWhitelistEnabled = enabled;
        emit WhitelistStatusChanged(enabled);
    }
    
    function setPrice(uint256 newPrice) external onlyOwner {
        price = newPrice;
        emit PriceUpdated(newPrice);
    }
    
    function addWhitelist(address user) external onlyOwner {
        whitelist[user] = true;
        emit WhitelistAdded(user);
    }
    
    function removeWhitelist(address user) external onlyOwner {
        whitelist[user] = false;
        emit WhitelistRemoved(user);
    }
    
    function stop() external onlyOwner {
        salesActive = false;
        emit SalesStatusChanged(false);
    }
    
    function start() external onlyOwner {
        salesActive = true;
        emit SalesStatusChanged(true);
    }
    function setMaxNodes(uint256 newMaxNodes) external onlyOwner {
        maxNodes = newMaxNodes;
        emit MaxNodesUpdated(newMaxNodes);
    }

    function setMaxSupply(uint256 newMaxSupply) external onlyOwner {
        maxSupply = newMaxSupply;
        emit MaxSupplyUpdated(newMaxSupply);
    }
    
    function withdraw() external onlyOwner {
        for (uint i; i < supportedTokenList.length; i++) {
            address token = supportedTokenList[i];
            if (supportedTokens[token]) {
                uint256 balance = IERC20(token).balanceOf(address(this));
                if (balance > 0) {
                    IERC20(token).safeTransfer(TREASURY, balance);
                }
            }
        }
    }

    function getSupportedTokens() external view returns (address[] memory) {
        return supportedTokenList;
    }

    function nodesPurchasedFromOtherChain(address buyerAddres, uint256 nodeAmount) external onlyOwner {
        nodesPurchased[buyerAddres] += nodeAmount;
        supply += nodeAmount;
    }

    function getAllBuyers() external view returns (address[] memory, uint256[] memory) {
        uint256[] memory counts = new uint256[](buyers.length);
        for (uint i; i < buyers.length; i++) {
            counts[i] = nodesPurchased[buyers[i]];
        }
        return (buyers, counts);
    }
}

