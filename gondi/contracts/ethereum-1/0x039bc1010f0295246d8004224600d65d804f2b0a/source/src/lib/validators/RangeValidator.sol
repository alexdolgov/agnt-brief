// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.21;

import "../../interfaces/validators/IOfferValidator.sol";

contract RangeValidator is IOfferValidator {
    error TokenIdOutOfRangeError(uint256 min, uint256 max);

    function validateOffer(IMultiSourceLoan.LoanOffer calldata offer, address nftCollateralAddress, uint256 tokenId, bytes calldata validatorData)
        external
        pure
    {
        if (offer.nftCollateralAddress != nftCollateralAddress) {
            revert InvalidAddressError(offer.nftCollateralAddress, nftCollateralAddress);
        }
        (uint256 minValue, uint256 maxValue) = abi.decode(validatorData, (uint256, uint256));
        if (tokenId < minValue || tokenId > maxValue) {
            revert TokenIdOutOfRangeError(minValue, maxValue);
        }
    }
}
