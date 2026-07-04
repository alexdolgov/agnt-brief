// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IIRM} from "./interfaces/IIRM.sol";

/**
 * Base jump/kink IRM (fixed params via overrides).
 * APR and utilization are WAD (1e18 = 100%).
 *
 * r(util) =
 *   if util <= uOpt:  r0 + s1 * (util / uOpt)
 *   else:             r0 + s1 + s2 * ((util - uOpt) / (1 - uOpt))
 * capped at rMax
 */
abstract contract JumpIRMBase is IIRM {
    uint256 internal constant WAD = 1e18;

    function uOptWad() internal pure virtual returns (uint256);

    function r0Wad() internal pure virtual returns (uint256);

    function s1Wad() internal pure virtual returns (uint256);

    function s2Wad() internal pure virtual returns (uint256);

    function rMaxWad() internal pure virtual returns (uint256);

    /// @inheritdoc IIRM
    function borrowAPR(
        address, /*asset*/
        uint256 utilWad
    )
        external
        pure
        override
        returns (uint256)
    {
        if (utilWad > WAD) utilWad = WAD;

        uint256 uOpt = uOptWad();
        uint256 r0 = r0Wad();
        uint256 s1 = s1Wad();
        uint256 s2 = s2Wad();
        uint256 rMax = rMaxWad();

        uint256 out;
        if (utilWad <= uOpt) {
            // r0 + s1 * (util / uOpt)
            uint256 add = (s1 * utilWad) / uOpt;
            out = r0 + add;
        } else {
            // r0 + s1 + s2 * ((util - uOpt) / (1 - uOpt))
            uint256 num = utilWad - uOpt;
            uint256 den = (WAD - uOpt);
            uint256 add2 = (s2 * num) / den;
            out = r0 + s1 + add2;
        }
        return out <= rMax ? out : rMax;
    }
}

/**
 * =========================
 *  1) Stables (USDC/DAI/USDT)
 *  U* = 0.85, r0 = 1.5%, s1 = 10%, s2 = 80%, rMax = 250%
 *  =========================
 */
contract StableIRM is JumpIRMBase {
    function uOptWad() internal pure override returns (uint256) {
        return 0.85e18;
    }

    function r0Wad() internal pure override returns (uint256) {
        return 0.015e18;
    } // 1.5%

    function s1Wad() internal pure override returns (uint256) {
        return 0.1e18;
    } // +10% to kink

    function s2Wad() internal pure override returns (uint256) {
        return 0.8e18;
    } // +80% after kink

    function rMaxWad() internal pure override returns (uint256) {
        return 2.5e18;
    } // cap 250%
}

/**
 * =========================
 *  2) Majors (S/ETH/WBTC etc.)
 *  U* = 0.78, r0 = 1.0%, s1 = 6%, s2 = 60%, rMax = 200%
 *  =========================
 */
contract MajorIRM is JumpIRMBase {
    function uOptWad() internal pure override returns (uint256) {
        return 0.78e18;
    }

    function r0Wad() internal pure override returns (uint256) {
        return 0.01e18;
    } // 1.0%

    function s1Wad() internal pure override returns (uint256) {
        return 0.06e18;
    } // +6%

    function s2Wad() internal pure override returns (uint256) {
        return 0.6e18;
    } // +60%

    function rMaxWad() internal pure override returns (uint256) {
        return 2.0e18;
    } // cap 200%
}

/**
 * =========================
 *  3) Long-tail / higher risk
 *  U* = 0.65, r0 = 6%, s1 = 20%, s2 = 150%, rMax = 400%
 *  =========================
 */
contract LongTailIRM is JumpIRMBase {
    function uOptWad() internal pure override returns (uint256) {
        return 0.65e18;
    }

    function r0Wad() internal pure override returns (uint256) {
        return 0.06e18;
    } // 6.0%

    function s1Wad() internal pure override returns (uint256) {
        return 0.2e18;
    } // +20%

    function s2Wad() internal pure override returns (uint256) {
        return 1.5e18;
    } // +150%

    function rMaxWad() internal pure override returns (uint256) {
        return 4.0e18;
    } // cap 400%
}
