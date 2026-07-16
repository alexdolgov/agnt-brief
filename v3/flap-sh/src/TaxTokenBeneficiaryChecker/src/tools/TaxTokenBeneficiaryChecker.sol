// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {FlapTaxToken} from "../FlapTaxToken.sol";
import {TaxSplitter} from "../TaxSplitter.sol";

/// @notice A utility contract to check the beneficiary of a tax token
/// @dev This contract doesn't have a constructor and provides a single view method
contract TaxTokenBeneficiaryChecker {
    /// @notice Returns the beneficiary address for a given tax token
    /// @param token The address of the FlapTaxToken
    /// @return The beneficiary address of the tax token's tax splitter
    function getTaxTokenBeneficiary(address token) external view returns (address) {
        // 1. Get the tax splitter address from the FlapTaxToken
        address taxSplitterAddress = FlapTaxToken(token).taxSplitter();
        
        // 2. Get the beneficiary address from the TaxSplitter
        address beneficiaryAddress = TaxSplitter(payable(taxSplitterAddress)).beneficiary();
        
        return beneficiaryAddress;
    }
}
