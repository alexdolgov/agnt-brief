// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

interface IApxBtrfly {
    /**
     * @notice Redeem apxBTRFLY into pxBTRFLY.
     * @param  shares    uint256  Shares amount.
     * @param  receiver  address  Receiver address.
     * @return owner     address  Shares owner.
     */
    function redeem(
        uint256 shares,
        address receiver,
        address owner
    ) external returns (uint256);
}
