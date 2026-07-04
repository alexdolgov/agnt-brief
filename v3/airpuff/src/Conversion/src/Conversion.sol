// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Conversion is Ownable, ReentrancyGuard {
    IERC20 public mShardsToken;
    IERC20 public enaToken;

    // rate
    uint256 public constant EXCHANGE_RATE = 582;

    // pause
    bool public paused;

    modifier notPaused() {
        require(!paused, "Contract is paused");
        _;
    }

    constructor(IERC20 _mShardsTokenAddress, IERC20 _enaTokenAddress) Ownable(msg.sender) {
        mShardsToken = _mShardsTokenAddress;
        enaToken = _enaTokenAddress;
        paused = true;
    }

    function pause() external onlyOwner {
        paused = true;
    }

    function unpause() external onlyOwner {
        paused = false;
    }

    // "Lock" mShards by sending them to a designated 'burn' address
    function exchangeMShardsForENA(uint256 _mShardAmount) public notPaused nonReentrant {
        require(_mShardAmount > 0, "Amount must be greater than 0");
        require(mShardsToken.balanceOf(msg.sender) >= _mShardAmount, "Insufficient MShards balance");

        uint256 enaAmount = _mShardAmount / EXCHANGE_RATE;

        require(enaToken.balanceOf(address(this)) >= enaAmount, "Insufficient ENA balance in contract");

        // Transfer mShardsToken to the contract
        bool shardTransferSuccess = mShardsToken.transferFrom(msg.sender, address(this), _mShardAmount);
        require(shardTransferSuccess, "mShards transfer failed");

        // Transfer equivalent ENA to the user
        bool enaTransferSuccess = enaToken.transfer(msg.sender, enaAmount);
        require(enaTransferSuccess, "ENA transfer failed");
    }

    // Allows the owner of the contract to withdraw a certain amount of ENA tokens from the contract.
    function withdrawENATokens(uint256 amount) external onlyOwner {
        uint256 enaBalance = enaToken.balanceOf(address(this));
        require(amount <= enaBalance, "Insufficient ENA balance in contract");
        bool enaTransferSuccess = enaToken.transfer(msg.sender, amount);
        require(enaTransferSuccess, "ENA transfer failed");
    }
}
