// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {OwnableUpgradeable} from "@openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC20MetadataUpgradeable as IToken} from
    "@openzeppelin-contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol";

interface IWETH {
    function withdraw(uint256) external;
}

/// @notice a very simple tax splitter contract
contract TaxSplitter is OwnableUpgradeable {
    address public immutable WETH_ADDRESS;

    address public beneficiary;
    address public feeReceiver;
    uint256 public splitRatio; // in basis points (1/100 of a percent)
    address public token;
    address public quoteToken; // new state variable for quote token

    event TaxSentToBeneficiary(address beneficiary, uint256 amount);
    event TaxSentToFeeReceiver(address feeReceiver, uint256 amount);

    constructor(address _wethAddress) {
        require(_wethAddress != address(0), "WETH address cannot be zero");
        WETH_ADDRESS = _wethAddress;
    }

    function initialize(address _beneficiary, address _feeReceiver, address _token, address _quoteToken)
        external
        initializer
    {
        __Ownable_init();
        require(_beneficiary != address(0), "Beneficiary cannot be zero");
        require(_feeReceiver != address(0), "FeeReceiver cannot be zero");
        beneficiary = _beneficiary;
        feeReceiver = _feeReceiver;
        splitRatio = 9000; // default 90% to beneficiary, 10% to feeReceiver
        token = _token;
        quoteToken = _quoteToken; // set quote token
    }

    /// @notice Split the tax based on the current balance of the quote token
    /// @dev Anyone can call this function. If quoteToken is zero address, use WETH and unwrap to ETH
    function split() external {
        if (quoteToken == address(0)) {
            // Handle native token case: unwrap WETH to ETH and send ETH
            uint256 bal = IToken(WETH_ADDRESS).balanceOf(address(this));
            if (bal == 0) {
                return;
            }

            // Unwrap WETH to ETH
            IWETH(WETH_ADDRESS).withdraw(bal);

            uint256 beneficiaryAmount = (bal * splitRatio) / 10000;
            uint256 feeAmount = bal - beneficiaryAmount;
            uint256 remainingAmount = 0;

            // Try to send ETH to beneficiary first
            if (beneficiaryAmount > 0) {
                (bool successB,) = beneficiary.call{value: beneficiaryAmount}("");
                if (successB) {
                    emit TaxSentToBeneficiary(beneficiary, beneficiaryAmount);
                } else {
                    // If beneficiary refuses, add to amount for feeReceiver
                    remainingAmount += beneficiaryAmount;
                }
            }

            // Send fee amount + any refused amount to feeReceiver
            uint256 totalFeeAmount = feeAmount + remainingAmount;
            if (totalFeeAmount > 0) {
                (bool successF,) = feeReceiver.call{value: totalFeeAmount}("");
                require(successF, "FeeReceiver must accept payment to drain contract");
                emit TaxSentToFeeReceiver(feeReceiver, totalFeeAmount);
            }
        } else {
            // Handle ERC20 token case
            uint256 bal = IToken(quoteToken).balanceOf(address(this));
            if (bal == 0) {
                return;
            }

            uint256 beneficiaryAmount = (bal * splitRatio) / 10000;
            uint256 feeAmount = bal - beneficiaryAmount;
            uint256 remainingAmount = 0;

            // Try to send to beneficiary first
            if (beneficiaryAmount > 0) {
                bool successB = IToken(quoteToken).transfer(beneficiary, beneficiaryAmount);
                if (successB) {
                    emit TaxSentToBeneficiary(beneficiary, beneficiaryAmount);
                } else {
                    // If beneficiary refuses, add to amount for feeReceiver
                    remainingAmount += beneficiaryAmount;
                }
            }

            // Send fee amount + any refused amount to feeReceiver
            uint256 totalFeeAmount = feeAmount + remainingAmount;
            if (totalFeeAmount > 0) {
                bool successF = IToken(quoteToken).transfer(feeReceiver, totalFeeAmount);
                require(successF, "FeeReceiver must accept payment to drain contract");
                emit TaxSentToFeeReceiver(feeReceiver, totalFeeAmount);
            }
        }
    }

    /// @notice Fallback function - no longer handles splitting logic
    /// @dev Reserved for future use or accidental ETH sends
    receive() external payable {
        // ETH sent here will not be automatically split
        // Use the split() function instead after wrapping ETH to WETH
    }

    function setBeneficiary(address _beneficiary) external onlyOwner {
        require(_beneficiary != address(0), "Beneficiary cannot be zero");
        beneficiary = _beneficiary;
    }

    function setFeeReceiver(address _feeReceiver) external onlyOwner {
        require(_feeReceiver != address(0), "FeeReceiver cannot be zero");
        feeReceiver = _feeReceiver;
    }

    function setSplitRatio(uint256 _splitRatio) external onlyOwner {
        require(_splitRatio <= 10000, "Split ratio too high");
        splitRatio = _splitRatio;
    }

    // Renamed and updated: allow passing token address
    function sweep(address _token) external onlyOwner {
        if (_token == address(0)) {
            uint256 balance = address(this).balance;
            require(balance > 0, "No ETH balance");
            (bool sent,) = owner().call{value: balance}("");
            require(sent, "ETH transfer failed");
        } else {
            uint256 balance = IToken(_token).balanceOf(address(this));
            require(balance > 0, "No token balance");
            IToken(_token).transfer(owner(), balance);
        }
    }
}
