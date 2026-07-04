pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract FeeRecipientV2 {
    using SafeERC20 for IERC20;

    address public owner;
    address public feeManager;
    mapping(address => uint256) public recipientShares;
    address[] public recipients;

    event Send(address token, address recipient, uint256 amount);
    event SendNative(address recipient, uint256 amount);
    event RecipientAdded(address recipient, uint256 share);
    event RecipientRemoved(address recipient);
    event ShareUpdated(address recipient, uint256 share);
    event OwnershipTransferred(address oldOwner, address newOwner);
    event FeeManagerTransferred(address oldFeeManager, address newFeeManager);
    event RescueERC20(address token, address to, uint256 amount);

    constructor(address _owner, address _feeManager) {
        owner = _owner;
        feeManager = _feeManager;
    }

    function addRecipient(address _recipient, uint256 _share) external onlyOwner {
        require(_recipient != address(0), "Cannot add zero address as recipient");
        require(!isRecipient(_recipient), "Recipient already added");
        recipients.push(_recipient);
        recipientShares[_recipient] = _share;
        emit RecipientAdded(_recipient, _share);
    }

    function isRecipient(address _address) public view returns (bool) {
        for (uint256 i = 0; i < recipients.length; i++) {
            if (recipients[i] == _address) {
                return true;
            }
        }
        return false;
    }

    function removeRecipient(address _recipient) external onlyOwner returns (bool) {
        for (uint256 i = 0; i < recipients.length; i++) {
            if (recipients[i] == _recipient) {
                recipientShares[_recipient] = 0;
                recipients[i] = recipients[recipients.length - 1];
                recipients.pop();
                emit RecipientRemoved(_recipient);
                return true;
            }
        }
        revert("Recipient not found");
    }

    function setRecipientShare(address _recipient, uint256 _share) external onlyOwner {
        require(isRecipient(_recipient), "Address is not a valid recipient");
        require(_share > 0, "Share must be greater than 0");
        recipientShares[_recipient] = _share;
        emit ShareUpdated(_recipient, _share);
    }

    function sendToken(address[] calldata tokens) external onlyFeeManagerOrRecipient {
        uint256 totalShares = 0;
        uint256 precisionFactor = 10**36;

        // Calculate the total shares
        for (uint256 i = 0; i < recipients.length; i++) {
            totalShares = totalShares + recipientShares[recipients[i]];
        }

        // Process each token
        for (uint256 t = 0; t < tokens.length; t++) {
            address token = tokens[t];
            uint256 totalAmount = IERC20(token).balanceOf(address(this));

            // Distribute token according to the shares
            for (uint256 i = 0; i < recipients.length; i++) {
                address recipient = recipients[i];
                uint256 share = recipientShares[recipient];
                uint256 amountToSend = totalAmount * share * precisionFactor / totalShares / precisionFactor;
            
                if (amountToSend > 0) {
                    IERC20(token).safeTransfer(recipient, amountToSend);
                    emit Send(token, recipient, amountToSend);
                }
            }
        }
    }

    function sendNative() external onlyFeeManagerOrRecipient {
        uint256 totalShares = 0;
        uint256 precisionFactor = 10**36;
        uint256 totalAmount = address(this).balance;
        
        require(totalAmount > 0, "No native balance to distribute");

        // Calculate the total shares
        for (uint256 i = 0; i < recipients.length; i++) {
            totalShares = totalShares + recipientShares[recipients[i]];
        }

        // Distribute native tokens according to the shares
        for (uint256 i = 0; i < recipients.length; i++) {
            address recipient = recipients[i];
            uint256 share = recipientShares[recipient];
            uint256 amountToSend = totalAmount * share * precisionFactor / totalShares / precisionFactor;
            
            if (amountToSend > 0) {
                (bool success, ) = payable(recipient).call{value: amountToSend}("");
                require(success, "Native transfer failed");
                emit SendNative(recipient, amountToSend);
            }
        }
    }

    function transferOwnership(address newOwner) external onlyOwner {
        require(newOwner != address(0), "New owner cannot be the zero address");
        require(newOwner != owner, "New owner must be different");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    function transferFeeManager(address newFeeManager) external onlyOwner {
        require(newFeeManager != address(0), "New fee manager cannot be the zero address");
        require(newFeeManager != feeManager, "New fee manager must be different");
        emit FeeManagerTransferred(feeManager, newFeeManager);
        feeManager = newFeeManager;
    }

    function rescueERC20(address tokenAddress, address to, uint256 amount) external onlyOwner {
        IERC20(tokenAddress).safeTransfer(to, amount);
        emit RescueERC20(tokenAddress, to, amount);
    }

    // Add ability to receive ETH
    receive() external payable {}

    modifier onlyOwner {
        require(msg.sender == owner, "only owner");
        _;
    }

    modifier onlyFeeManager {
        require(msg.sender == feeManager, "only fee manager");
        _;
    }

    modifier onlyFeeManagerOrRecipient() {
        require(msg.sender == feeManager || isRecipient(msg.sender), "Caller is not fee manager or recipient");
        _;
    }
}
