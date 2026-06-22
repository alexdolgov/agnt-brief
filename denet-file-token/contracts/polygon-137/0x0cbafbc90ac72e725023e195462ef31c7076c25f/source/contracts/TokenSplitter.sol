// SPDX-License-Identifier: MIT

/**
    This contract doing wrap function for tokens, 
    to use this tokens as Depositable for $DE.
*/

pragma solidity ^0.8.10;

// Default Ownable
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ThePoolManager is Ownable {

    uint public constant two_days = 60*60*48; // in seconds;
    uint public ratio = 365; // 365 days;
    address public DAO_address;
    address public treasury;

    modifier onlyDAO() {
        require(msg.sender == DAO_address, "Only the DAO can call this function");
        _;
    }

    mapping (address => uint) public last_claim_time;
    
    function claim(address token) public {
        require(treasury != address(0), "treasury not set");

        uint time_from_last_claim = block.timestamp - last_claim_time[token];
        if (time_from_last_claim > two_days) {
            time_from_last_claim = two_days;
        }
        last_claim_time[token] = block.timestamp;
        
        IERC20 tok = IERC20(token);
        uint balance = tok.balanceOf(address(this));

        // calc it, like transfer portion of 1/365 of each day. max = 2 days await.
        uint to_transfer = balance * time_from_last_claim / (ratio * 60 * 60 * 24);
        tok.transfer(treasury, to_transfer);
    }

    function claimMany(address[] calldata tokens) public {
        for (uint i = 0; i < tokens.length; i++) {
            claim(tokens[i]);
        }
    }

    function setDAO(address new_DAO) public onlyOwner {
        DAO_address = new_DAO;
    }
    
    function set_treasury(address new_treasury) public onlyOwner {
        treasury = new_treasury;
    }

    function setRatio(uint new_ratio) public onlyDAO {
        require(new_ratio >= 128 && new_ratio <= 1024, "ratio not set");
        ratio = new_ratio;
    }

    // if this contract will paused
    function safeFunds(address token) public onlyOwner {
        IERC20(token).transfer(msg.sender, IERC20(token).balanceOf(address(this)));
    }
}

contract TokenSplitter is Ownable {
    
    address public revenueAddress;
    address public reserveAddress;
    address public poolManagerAddress;

    function SetRecievers(
        address revenueMultisig,
        address reserveMultisig,
        address poolManager
    ) external onlyOwner {
        revenueAddress = revenueMultisig;
        reserveAddress = reserveMultisig;
        poolManagerAddress = poolManager;
    }

    function Split(address[] calldata tokenList) public {
        for (uint i = 0; i < tokenList.length; i++) {
            IERC20 tok = IERC20(tokenList[i]);
            uint balance = tok.balanceOf(address(this));
            
            uint portion = balance * 3333 / 10000;
            balance = balance - portion - portion;

            tok.transfer(revenueAddress, balance);
            tok.transfer(poolManagerAddress, portion);
            tok.transfer(reserveAddress, portion);
        }
    }

    function SplitAndClaim(address[] calldata tokenList) external {
        for (uint i = 0; i < tokenList.length; i++) {
            IERC20 tok = IERC20(tokenList[i]);
            uint balance = tok.balanceOf(address(this));
            
            uint portion = balance * 3333 / 10000;
            balance = balance - portion - portion;

            tok.transfer(revenueAddress, balance);
            tok.transfer(poolManagerAddress, portion);
            tok.transfer(reserveAddress, portion);
            
            // do claim
            ThePoolManager(poolManagerAddress).claim(tokenList[i]);
        }
    }
}