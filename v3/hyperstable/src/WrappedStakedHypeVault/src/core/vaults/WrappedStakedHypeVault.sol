// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {VaultV2} from "./VaultV2.sol";
import {IStakedHype} from "../../interfaces/IStakedHype.sol";

contract WrappedStakedHypeVault is VaultV2 {
    using FixedPointMathLib for uint256;

    IStakedHype public constant STAKED_HYPE = IStakedHype(0xfFaa4a3D97fE9107Cef8a3F48c069F577Ff76cC1);

    constructor()
        VaultV2(
            0x94e8396e0869c9F2200760aF0621aFd240E1CF38, // wstHYPE
            0xd8d5f4a082D78c12f2405b9a6FC7b080BF019Af6, // Hype price feed
            "HyperStable Wrapped Staked Hype",
            "HyperStable wstHYPE"
        )
    {}

    function assetPrice() public view override returns (uint256) {
        uint256 hypePrice = priceFeed.fetchPrice();

        uint256 totalHype = STAKED_HYPE.totalSupply();
        uint256 totalShares = STAKED_HYPE.totalShares();
        uint256 normalizedTotalShares = totalShares / STAKED_HYPE.balanceToShareDecimals();
        uint256 factor = totalHype.divWad(normalizedTotalShares);

        return hypePrice.mulWad(factor);
    }
}
