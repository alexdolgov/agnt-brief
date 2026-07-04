// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./IGToken.sol";

/**
 * @custom:version 6.3
 */
interface IGTokenLockedDepositNftDesign {
    function buildTokenURI(
        uint256 tokenId,
        IGToken.LockedDeposit memory lockedDeposit,
        string memory gTokenSymbol,
        string memory assetSymbol,
        uint8 numberInputDecimals,
        uint8 numberOutputDecimals
    ) external pure returns (string memory);
}
