// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

interface IPirexBtrfly {
    /**
     * @notice Redeem BTRFLYV2 for deprecated upxBTRFLY holders.
     * @param  unlockTimes  uint256[]  BTRFLYV2 unlock timestamps.
     * @param  assets       uint256[]  upxBTRFLY amounts.
     * @param  receiver     address    Recipient address.
     */
    function redeemLegacy(
        uint256[] calldata unlockTimes,
        uint256[] calldata assets,
        address receiver
    ) external;
}
