// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

interface IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
    function mint(address to, uint256 value) external returns (uint256);
    function burn(address from, uint256 value) external;
}

interface Vault {
    function burn(address onBehalfOf, uint256 amount) external;
}

/**
 * @title Repayment
 * @dev Contract that allows users to repay with USDC and redeem USDC with EUSD or PeUSD
 */
contract Repayment is Ownable, ReentrancyGuard {
    IERC20 public immutable USDC = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    IERC20 public immutable EUSD = IERC20(0xdf3ac4F479375802A821f7b7b46Cd7EB5E4262cC);
    IERC20 public immutable PeUSD = IERC20(0xD585aaafA2B58b1CD75092B51ade9Fa4Ce52F247);
    Vault public immutable vault = Vault(0xa980d4c0C2E48d305b582AA439a3575e3de06f0E);
    
    uint256 public unlockTime;
    uint256 public constant MINT_RATIO = 1e12;
    
    event TokensMinted(address indexed user, uint256 usdcAmount, uint256 eusdAmount);
    event TokensRedeemed(address indexed user, uint256 tokenAmount, uint256 usdcAmount, bool isEUSD);
    
    /**
     * @dev Constructor
     * @param _unlockTime Unlock timestamp
     */
    constructor(
        uint256 _unlockTime
    ) Ownable(msg.sender) {
        require(_unlockTime > block.timestamp, "Invalid unlock time");
        unlockTime = _unlockTime;
    }
    
    /**
     * @dev Allows users to repay with USDC
     * @param usdcAmount Amount of USDC to pay
     */
    function repay(uint256 usdcAmount) external nonReentrant {
        require(usdcAmount > 0, "Amount must be greater than 0");
        uint256 eusdAmount = usdcAmount * MINT_RATIO;
        require(USDC.transferFrom(msg.sender, address(this), usdcAmount), "USDC transfer failed");
        EUSD.mint(address(this), eusdAmount);
        vault.burn(msg.sender, eusdAmount);
        
        emit TokensMinted(msg.sender, usdcAmount, eusdAmount);
    }
    
    /**
     * @dev Allows users to redeem USDC with EUSD or PeUSD
     * @param tokenAmount Amount of tokens to redeem
     * @param isToken1 Whether to use EUSD (true) or PeUSD (false)
     */
    function redeemUSDC(uint256 tokenAmount, bool isToken1) external nonReentrant {
        require(tokenAmount > 0, "Amount must be greater than 0");
        require(block.timestamp >= unlockTime || msg.sender == owner(), "Not unlocked yet");
        
        IERC20 token = isToken1 ? EUSD : PeUSD;
        uint256 usdcAmount = tokenAmount / MINT_RATIO;
        token.burn(msg.sender, tokenAmount);
        USDC.transfer(msg.sender, usdcAmount);
        
        emit TokensRedeemed(msg.sender, tokenAmount, usdcAmount, isToken1);
    }
    
    /**
     * @dev Get the USDC balance of the contract
     */
    function getUSDCBalance() external view returns (uint256) {
        return USDC.balanceOf(address(this));
    }
    
    /**
     * @dev Allows the owner to set a new unlock time
     * @param _unlockTime The new unlock timestamp
     */
    function setUnlockTime(uint256 _unlockTime) external onlyOwner {
        require(_unlockTime > block.timestamp, "Invalid unlock time");
        unlockTime = _unlockTime;
    }
} 