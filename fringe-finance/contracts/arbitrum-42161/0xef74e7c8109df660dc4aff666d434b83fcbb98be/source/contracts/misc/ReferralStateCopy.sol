// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../interfaces/IReferralStateCopy.sol";

contract ReferralStateCopy is IReferralStateCopy {
    uint256 private constant CHAIN_ID_POLY = 137;
    uint256 private constant CHAIN_ID_MUMBAI = 80001;
    uint256 private constant CHAIN_ID_ARBI = 42161;

    IGNSReferrals_Old private constant REFERRALS_OLD_POLY =
        IGNSReferrals_Old(0x0F9498b1206Bf9FfDE2a2321fDB56F573A052425);
    IGNSReferrals_Old private constant REFERRALS_OLD_MUMBAI =
        IGNSReferrals_Old(0x022e26d7DdAD3fc311C6472949F19c99b3CB08e6);
    IGNSReferrals_Old private constant REFERRALS_OLD_ARBI =
        IGNSReferrals_Old(0xAA379DD7Ec0bae467490e89bB2055A7e01231b8f);

    IGNSMultiCollatDiamond private constant DIAMOND_POLY =
        IGNSMultiCollatDiamond(0x209A9A01980377916851af2cA075C2b170452018);
    IGNSMultiCollatDiamond private constant DIAMOND_MUMBAI =
        IGNSMultiCollatDiamond(0xDee93dD1Cb54ce80D690eC07a20CB0ce9d7F741C);
    IGNSMultiCollatDiamond private constant DIAMOND_ARBI =
        IGNSMultiCollatDiamond(0xFF162c694eAA571f685030649814282eA457f169);

    mapping(uint256 => ChainAddresses) public chainAddresses;

    constructor() {
        chainAddresses[CHAIN_ID_POLY] = ChainAddresses(REFERRALS_OLD_POLY, DIAMOND_POLY);
        chainAddresses[CHAIN_ID_MUMBAI] = ChainAddresses(REFERRALS_OLD_MUMBAI, DIAMOND_MUMBAI);
        chainAddresses[CHAIN_ID_ARBI] = ChainAddresses(REFERRALS_OLD_ARBI, DIAMOND_ARBI);
    }

    modifier onlyGov() {
        ChainAddresses storage addresses = chainAddresses[block.chainid];

        if (
            address(addresses.diamond) == address(0) ||
            !addresses.diamond.hasRole(msg.sender, IAddressStoreUtils.Role.GOV)
        ) revert Unauthorized();

        _;
    }

    function copyReferralState(address[] calldata _traders) external onlyGov {
        ChainAddresses memory addresses = chainAddresses[block.chainid]; // warm read due to modifier

        if (address(addresses.oldRef) == address(0)) revert UnknownChain();

        for (uint256 i; i < _traders.length; ++i) {
            address trader = _traders[i];
            address referrer = addresses.oldRef.getTraderReferrer(trader);

            if (referrer != address(0)) {
                // emits ReferrerRegistered(address, address) if not already registered
                addresses.diamond.registerPotentialReferrer(trader, referrer);
            }

            emit ReferralStateCopied(trader, referrer);
        }
    }
}
