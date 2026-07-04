// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract JuicySubscriptions is ReentrancyGuard, Ownable {
    using ECDSA for bytes32;

    address public signer;  // Off-chain system that signs pricing details
    address public feeReceiver;  // Address to receive the 20% fee

    uint8 public subscriberReferralPercentage = 25;  // 2.5% to subscriber referrer (out of 1000 basis points)
    uint8 public creatorReferralPercentage = 25;     // 2.5% to creator referrer (out of 1000 basis points)
    uint8 public platformFeePercentage = 200;        // 20% platform fee (out of 1000 basis points)

    struct Subscription {
        uint8 level; // 1 = Premium, 2 = VIP, could add more later
        uint256 expiry;
    }

    struct SubscriptionDetails {
        address creator;
        address subscriberReferrer;
        address creatorReferrer;
        uint8 level;
        uint256 duration;
        uint256 amount;
        address tokenAddress;
        uint256 expiry;
        bytes signature;
    }

    // Mapping to store subscriptions by subscriber and creator
    mapping(address => mapping(address => Subscription)) public subscriptions;

    event SubscriptionPurchased(
        address indexed subscriber,
        address indexed creator,
        address tokenAddress,
        uint256 amount,
        address subscriberReferrer,
        address creatorReferrer,
        uint8 level,
        uint256 duration,
        uint256 expiry
    );
    event FeeReceiverUpdated(address indexed newFeeReceiver);
    event ReferralPercentagesUpdated(uint8 newSubscriberReferralPercentage, uint8 newCreatorReferralPercentage);

    constructor(address _signer, address _feeReceiver) {
        signer = _signer;
        feeReceiver = _feeReceiver;
    }

    function setFeeReceiver(address _feeReceiver) external onlyOwner {
        feeReceiver = _feeReceiver;
        emit FeeReceiverUpdated(_feeReceiver);
    }

    function setReferralPercentages(uint8 _subscriberReferralPercentage, uint8 _creatorReferralPercentage) external onlyOwner {
        require(_subscriberReferralPercentage + _creatorReferralPercentage <= platformFeePercentage, "Referral percentages too high");
        subscriberReferralPercentage = _subscriberReferralPercentage;
        creatorReferralPercentage = _creatorReferralPercentage;
        emit ReferralPercentagesUpdated(_subscriberReferralPercentage, _creatorReferralPercentage);
    }

    function purchaseSubscription(SubscriptionDetails memory details) external payable nonReentrant {
        require(details.level > 0, "Level cannot be 0");
        require(details.duration > 0, "Subscription length cannot be 0");
        require(block.timestamp <= details.expiry, "Signature expired");

        // Verify the signature including the new referrer addresses
        bytes32 messageHash = keccak256(
            abi.encodePacked(
                msg.sender, 
                details.creator, 
                details.subscriberReferrer, 
                details.creatorReferrer, 
                details.level, 
                details.duration, 
                details.amount, 
                details.tokenAddress, 
                details.expiry
            )
        );
        require(_verify(messageHash, details.signature), "Invalid signature");

        // Calculate payment split: 80% to creator, and 20% platform fee
        uint256 creatorAmount = (details.amount * 80) / 100;
        uint256 feeAmount = (details.amount * platformFeePercentage) / 1000;

        // Calculate referral fees (from platform fee)
        uint256 subscriberReferralAmount = 0;
        uint256 creatorReferralAmount = 0;
        
        if (details.subscriberReferrer != address(0)) {
          subscriberReferralAmount = (feeAmount * subscriberReferralPercentage) / 1000;
        }

        if (details.creatorReferrer != address(0)) {
          creatorReferralAmount = (feeAmount * creatorReferralPercentage) / 1000;
        }
    
        uint256 remainingPlatformFee = feeAmount - (subscriberReferralAmount + creatorReferralAmount);

        if (details.tokenAddress == address(0)) {
            // Native Token Transfer (ETH, AVAX, etc.)
            nativeTransfer(details.creator, creatorAmount);
            if (details.subscriberReferrer != address(0)) {
                nativeTransfer(details.subscriberReferrer, subscriberReferralAmount);
            }
            if (details.creatorReferrer != address(0)) {
                nativeTransfer(details.creatorReferrer, creatorReferralAmount);
            }
            nativeTransfer(feeReceiver, remainingPlatformFee);
        } else {
            // ERC20 Token Transfer
            erc20Transfer(IERC20(details.tokenAddress), details.creator, creatorAmount);
            if (details.subscriberReferrer != address(0)) {
                erc20Transfer(IERC20(details.tokenAddress), details.subscriberReferrer, subscriberReferralAmount);
            }
            if (details.creatorReferrer != address(0)) {
                erc20Transfer(IERC20(details.tokenAddress), details.creatorReferrer, creatorReferralAmount);
            }
            erc20Transfer(IERC20(details.tokenAddress), feeReceiver, remainingPlatformFee);
        }

        // Update subscription details
        Subscription storage sub = subscriptions[msg.sender][details.creator];
        if (block.timestamp < sub.expiry) {
            // Extend current subscription
            sub.expiry += details.duration;
        } else {
            // Create new subscription
            sub.expiry = block.timestamp + details.duration;
        }
        sub.level = details.level;

        emit SubscriptionPurchased(
          msg.sender, 
          details.creator, 
          details.tokenAddress,
          details.amount,
          details.subscriberReferrer, 
          details.creatorReferrer, 
          details.level, 
          details.duration,
          sub.expiry
        );
    }

    function erc20Transfer(IERC20 token, address to, uint256 amount) internal {
        require(token.transferFrom(msg.sender, to, amount), "ERC20 transfer failed");
    }

    function nativeTransfer(address to, uint256 amount) internal {
        (bool success, ) = to.call{value: amount}("");
        require(success, "Native token transfer failed");
    }

    function _verify(bytes32 messageHash, bytes memory signature) internal view returns (bool) {
        return messageHash.toEthSignedMessageHash().recover(signature) == signer;
    }

    function setSigner(address _signer) external onlyOwner {
        signer = _signer;
    }

    function withdraw(address tokenAddress, uint256 amount) external onlyOwner {
        if (tokenAddress == address(0)) {
            // Withdraw ETH
            payable(owner()).transfer(amount);
        } else {
            // Withdraw ERC20
            IERC20 token = IERC20(tokenAddress);
            require(token.transfer(owner(), amount), "Token transfer failed");
        }
    }

    // To get subscription details of a specific subscriber for a creator
    function getSubscription(address subscriber, address creator) external view returns (Subscription memory) {
        return subscriptions[subscriber][creator];
    }
}
