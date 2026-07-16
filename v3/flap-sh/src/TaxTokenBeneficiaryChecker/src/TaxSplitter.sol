// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {OwnableUpgradeable} from "@openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC20MetadataUpgradeable as IToken} from
    "@openzeppelin-contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol";

/// @notice a very simple tax splitter contract
contract TaxSplitter is OwnableUpgradeable {
    address public beneficiary;
    address public feeReceiver;
    uint256 public splitRatio; // in basis points (1/100 of a percent)
    address public token;
    address public quoteToken; // new state variable for quote token

    event TaxSentToBeneficiary(address beneficiary, uint256 amount);
    event TaxSentToFeeReceiver(address feeReceiver, uint256 amount);

    function initialize(address _beneficiary, address _feeReceiver, address _token, address _quoteToken)
        external
        initializer
    {
        __Ownable_init();
        require(_beneficiary != address(0), "Beneficiary cannot be zero");
        require(_feeReceiver != address(0), "FeeReceiver cannot be zero");
        beneficiary = _beneficiary;
        feeReceiver = _feeReceiver;
        splitRatio = 8000; // 80%
        token = _token;
        quoteToken = _quoteToken; // set quote token
    }

    receive() external payable {
        // note: We allow failure in sending ether to beneficiary and feeReceiver to avoid DOS.
        if (quoteToken == address(0)) {
            // Native token (ETH/BNB) splitting
            uint256 bal = address(this).balance;
            if (bal == 0) {
                return;
            }
            uint256 beneficiaryAmount = (bal * splitRatio) / 10000;
            uint256 feeAmount = bal - beneficiaryAmount;
            if (beneficiaryAmount > 0) {
                (bool successB,) = beneficiary.call{value: beneficiaryAmount}("");
                if (successB) {
                    emit TaxSentToBeneficiary(beneficiary, beneficiaryAmount);
                }
            }
            if (feeAmount > 0) {
                (bool successF,) = feeReceiver.call{value: feeAmount}("");
                if (successF) {
                    emit TaxSentToFeeReceiver(feeReceiver, feeAmount);
                }
            }
            // Any unsent ether remains in contract for future splits
        } else {
            // ERC20 quote token splitting
            uint256 bal = IToken(quoteToken).balanceOf(address(this));
            if (bal == 0) {
                return;
            }
            uint256 beneficiaryAmount = (bal * splitRatio) / 10000;
            uint256 feeAmount = bal - beneficiaryAmount;
            if (beneficiaryAmount > 0) {
                bool successB = IToken(quoteToken).transfer(beneficiary, beneficiaryAmount);
                if (successB) {
                    emit TaxSentToBeneficiary(beneficiary, beneficiaryAmount);
                }
            }
            if (feeAmount > 0) {
                bool successF = IToken(quoteToken).transfer(feeReceiver, feeAmount);
                if (successF) {
                    emit TaxSentToFeeReceiver(feeReceiver, feeAmount);
                }
            }
            // Any unsent tokens remain in contract for future splits
        }
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
