// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interface/IERC20.sol";
import "./interface/IERC677Receiver.sol";
import "./interface/IOracleFreeDollar.sol";

/**
 * @title Decimal-Adjusted Stable Coin Bridge
 * @notice A minting contract that handles decimal conversion between USDT (6 decimals) and OFD (18 decimals)
 * @author OracleFreeDollar
 */
contract StablecoinBridge {
    IERC20 public immutable usd; // the source stablecoin (USDT)
    IOracleFreeDollar public immutable ofd; // the OracleFreeDollar
    uint256 public immutable horizon;
    uint256 public immutable limit;
    uint256 public minted;
    
    // Constants for decimal conversion
    uint256 private constant USDT_DECIMALS = 6;
    uint256 private constant OFD_DECIMALS = 18;
    uint256 private constant DECIMAL_CONVERTER = 10**(OFD_DECIMALS - USDT_DECIMALS); // 10^12
    
    error Limit(uint256 amount, uint256 limit);
    error Expired(uint256 time, uint256 expiration);
    error UnsupportedToken(address token);
    
    constructor(address other, address ofdAddress, uint256 limit_) {
        usd = IERC20(other);
        ofd = IOracleFreeDollar(ofdAddress);
        horizon = block.timestamp + 52 weeks;
        limit = limit_;
        minted = 0;
    }
    
    /**
     * @notice Convenience method for mint(msg.sender, amount)
     * @param amount Amount in USDT decimals (6)
     */
    function mint(uint256 amount) external {
        mintTo(msg.sender, amount);
    }
    
    /**
     * @notice Mint the target amount of OracleFreeDollars, taking USDT from the sender
     * @param target Address to receive the OFD tokens
     * @param amount Amount in USDT decimals (6)
     * @dev Converts 6 decimal USDT amount to 18 decimal OFD amount
     */
    function mintTo(address target, uint256 amount) public {
        // Transfer USDT (6 decimals) from sender
        usd.transferFrom(msg.sender, address(this), amount);
        
        // Convert to 18 decimals for OFD minting
        uint256 ofdAmount = amount * DECIMAL_CONVERTER;
        _mint(target, ofdAmount);
    }
    
    function _mint(address target, uint256 ofdAmount) internal {
        if (block.timestamp > horizon) revert Expired(block.timestamp, horizon);
        ofd.mint(target, ofdAmount);
        minted += ofdAmount;
        if (minted > limit) revert Limit(ofdAmount, limit);
    }
    
    /**
     * @notice Convenience method for burnAndSend(msg.sender, amount)
     * @param amount Amount in OFD decimals (18)
     */
    function burn(uint256 amount) external {
        _burn(msg.sender, msg.sender, amount);
    }
    
    /**
     * @notice Burn OFD and send USDT to the target address
     * @param target Address to receive the USDT
     * @param amount Amount in OFD decimals (18)
     */
    function burnAndSend(address target, uint256 amount) external {
        _burn(msg.sender, target, amount);
    }
    
    function _burn(address ofdHolder, address target, uint256 ofdAmount) internal {
        ofd.burnFrom(ofdHolder, ofdAmount);
        
        // Convert 18 decimal OFD amount back to 6 decimal USDT amount
        uint256 usdtAmount = ofdAmount / DECIMAL_CONVERTER;
        usd.transfer(target, usdtAmount);
        minted -= ofdAmount;
    }
}