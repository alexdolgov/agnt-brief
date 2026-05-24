// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.24;

import "../../interfaces/validators/IOfferValidator.sol";

contract MultiAddressValidator is IOfferValidator {

    function validateOffer(IMultiSourceLoan.LoanOffer calldata offer, address nftCollateralAddress, uint256 tokenId, bytes calldata validatorData)
        external
        pure
    {
        if (offer.nftCollateralAddress != address(0)) {
            revert InvalidAddressError(nftCollateralAddress, address(0));
        }
        (bool shouldMatchId, address[] memory addresses) = abi.decode(validatorData, (bool, address[]));
        if (shouldMatchId && offer.nftCollateralTokenId != tokenId) {
            revert InvalidCollateralIdError();
        }
        for (uint256 i = 0; i < addresses.length; ++i) {
            if (addresses[i] == nftCollateralAddress) {
                return;
            }
        }
        revert InvalidAddressError(nftCollateralAddress, address(0));
    }
}
