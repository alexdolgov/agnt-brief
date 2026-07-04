// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IImportVerifier} from '@flaunch-interfaces/IImportVerifier.sol';

interface IUniswapV4MulticurveInitializer {
    struct BeneficiaryData {
        address beneficiary;
        uint96 shares;
    }

    function getBeneficiaries(
        address asset
    ) external view returns (BeneficiaryData[] memory);
}

/**
 * Confirms that a memecoin has been deployed on Paragraph.
 */
contract ParagraphVerifier is IImportVerifier {
    
    /// The Paragraph contract
    IUniswapV4MulticurveInitializer public immutable paragraph;

    /**
     * Registers the Paragraph contract.
     *
     * @param _paragraph The address of the Paragraph contract
     */
    constructor (address _paragraph) {
        paragraph = IUniswapV4MulticurveInitializer(_paragraph);
    }

    /**
     * Checks if a token exists on Paragraph.
     *
     * @param _token The address of the token to verify
     * @param _sender The address of the sender
     *
     * @return bool True if the token exists on Paragraph, false otherwise
     */
    function isValid(address _token, address _sender) public view returns (bool) {
        // Confirm that the token is deployed on Paragraph
        IUniswapV4MulticurveInitializer.BeneficiaryData[] memory beneficiaries = paragraph.getBeneficiaries(_token);
        if (beneficiaries.length == 0) {
            return false;
        }

        // Confirm that the sender is a beneficiary of the token
        for (uint i = 0; i < beneficiaries.length; ++i) {
            if (beneficiaries[i].beneficiary == _sender) {
                return true;
            }
        }

        return false;
    }

}