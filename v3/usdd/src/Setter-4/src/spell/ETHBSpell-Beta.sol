// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

import {ChainLogAbstract} from "../interfaces/Interfaces.sol";

interface DssVat {
    function Line() external view returns (uint256);
}
interface JoinLike {
    function vat() external returns (address);
    function ilk() external returns (bytes32);
    function gem() external returns (address);
    function dec() external returns (uint256);
}
interface ClipLike {
    function vat() external returns (address);
    function dog() external returns (address);
    function spotter() external view returns (address);
    function ilk() external returns (bytes32);
}
interface ERC20 {
    function decimals() external returns (uint8);
}
abstract contract Setter {
    function file(bytes32, uint) public virtual;
    function file(bytes32, bytes32, uint) public virtual;
    function file(bytes32, bytes32, address) public virtual;
    function file(bytes32, address) public virtual;
    function init(bytes32) public virtual;
    function rely(address) public virtual;
    function deny(address) public virtual;
    function upchost() public virtual;
    function setOsm(bytes32, address) public virtual;
    function kiss(address) public virtual;
    function setDeviation(uint256) public virtual;
    function setBar(uint256) public virtual;
    function poke(bytes32) public virtual;
}

// ─────────────────────────────────────────────────────────────────────────────
// ETHBSpell-Beta
//
// SECONDARY Spell for ETH-B on Beta.
// ETH-B shares the Oracle stack with ETH-A (deployed by ETHASpell-Beta).
//
// ⚠️  pip.kiss(clip_b) is required here — deployClip did NOT add clip_b to pip.
// ─────────────────────────────────────────────────────────────────────────────
contract ETHBSpellBeta {
    // ── ChainLog ──────────────────────────────────────────────────────────
    address public constant LOG = 0xAc266def6e633FA65745A718958469d3B72558B6;

    // ── System addresses (read from ChainLog in constructor) ──────────────
    address public immutable vat;
    address public immutable spotter;
    address public immutable dog;
    address public immutable jug;
    address public immutable vow;
    address public immutable pauseProxy;
    address public immutable end;
    address public immutable esm;
    address public immutable osmMom;

    // ── ETH-B collateral type ─────────────────────────────────────────────
    bytes32 public constant ilk = "ETH-B";

    // ── WETH gem ──────────────────────────────────────────────────────────
    address public constant gem = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2; // WETH9 (Mainnet)

    // ── ETH-B contract addresses (fill in after deploy_eth.s.sol executes) ─
    address public constant gemjoin     = 0x8A28Db88AfE8b0a4B6b5400D0827c83736497c84;
    address public constant calc        = 0x66AAdA9F1c09f658D70ca0e1060055CB356738ae;
    address public constant clip        = 0xcA62EF940f394ad83c0f4D9895Aef5244e3379c9;

    // ── Shared Oracle stack (same as ETH-A) ──────────────────────────────
    address public constant baseValue   = 0xd1e6aaE6C1d4c050C0763591150c5a90295C2FbE;
    address public constant oracleValue = 0xBe2d3Dc2DE47ed7010a2d5b45dC388d9BC09C6eb;
    address public constant median      = 0x0ab64b0389fe10D79E5B23f0f5D3f4700248688E;
    address public constant pip         = 0xd5f5fe47Eb396e98cAC0CaA8f9a3b83a094323d3;

    address public constant pipKeeper = 0xE10AB58702Dc4A0AEd118eD4ad56Ff44E7585691;

    // ── Precision constants ───────────────────────────────────────────────
    uint256 internal constant WAD = 10 ** 18;
    uint256 internal constant RAY = 10 ** 27;
    uint256 internal constant RAD = 10 ** 45;

    // ── Risk parameters — ETH-B: docs/ETH-WBTC-CDP-on-Ethereum.csv ──────
    // Beta dust intentionally set to 1 USDD (unified per ops directive).
    uint256 public constant ILK_LINE  = 50_000_000 * 10 ** 45;
    uint256 public constant ILK_DUST  = 1 * 10 ** 45;
    uint256 public constant ILK_MAT   = 130 * 10 ** 27 / 100;          // 130% CR
    uint256 public constant ILK_DUTY  = 1000000002219443553326580536;   // 7.25%/yr
    uint256 public constant ILK_CHOP  = 113 * 10 ** 18 / 100;          // 13%
    uint256 public constant ILK_HOLE  = 50_000_000 * 10 ** 45;

    uint256 public constant CALC_STEP = 60;                             // 1 min
    uint256 public constant CALC_CUT  = 995 * 10 ** 27 / 1000;         // 99.5%
    uint256 public constant CLIP_BUF  = 110 * 10 ** 27 / 100;          // 110%
    uint256 public constant CLIP_CUSP = 45  * 10 ** 27 / 100;          // 45%
    uint256 public constant CLIP_CHIP = 10  * 10 ** 18 / 10000;        // 0.1%
    uint256 public constant CLIP_TIP  = 50  * 10 ** 45;                // 50 RAD
    uint256 public constant CLIP_TAIL = 4800;                           // 80 min

    uint256 public constant MEDIAN_DEVIATION = 500;  // 5%
    uint256 public constant MEDIAN_BAR       = 2;
    uint256 public constant BASEVALUE_BAR    = 7;   // 11 ETH signers; 7 = supermajority (64%)

    constructor() public {
        ChainLogAbstract cl = ChainLogAbstract(LOG);
        vat        = cl.getAddress("MCD_VAT");
        spotter    = cl.getAddress("MCD_SPOT");
        dog        = cl.getAddress("MCD_DOG");
        vow        = cl.getAddress("MCD_VOW");
        jug        = cl.getAddress("MCD_JUG");
        end        = cl.getAddress("MCD_END");
        esm        = cl.getAddress("MCD_ESM");
        osmMom     = cl.getAddress("OSM_MOM");
        pauseProxy = cl.getAddress("MCD_PAUSE_PROXY");
    }

    function setup() public {
        // 1. Sanity checks
        require(JoinLike(gemjoin).vat() == vat,     "join-vat-not-match");
        require(JoinLike(gemjoin).ilk() == ilk,     "join-ilk-not-match");
        require(JoinLike(gemjoin).gem() == gem,     "join-gem-not-match");
        require(JoinLike(gemjoin).dec() == ERC20(gem).decimals(), "join-dec-not-match");
        require(ClipLike(clip).vat()     == vat,    "clip-vat-not-match");
        require(ClipLike(clip).dog()     == dog,    "clip-dog-not-match");
        require(ClipLike(clip).ilk()     == ilk,    "clip-ilk-not-match");
        require(ClipLike(clip).spotter() == spotter, "clip-spotter-not-match");

        // 2. Oracle parameters (idempotent — ETH-B shares Oracle stack with ETH-A)
        // ⚠️  pip.kiss(clip_b) required here — deployClip did NOT add clip_b to pip.
        Setter(median).setDeviation(MEDIAN_DEVIATION);
        Setter(median).setBar(MEDIAN_BAR);
        Setter(median).rely(pipKeeper);
        Setter(baseValue).setBar(BASEVALUE_BAR);
        Setter(pip).rely(pipKeeper);
        Setter(pip).kiss(clip);     // REQUIRED: whitelist ETH-B clip in OSM

        // 3. Calc parameters
        Setter(calc).file("step", CALC_STEP);
        Setter(calc).file("cut",  CALC_CUT);

        // 4. Clip parameters
        Setter(clip).file("buf",  CLIP_BUF);
        Setter(clip).file("tail", CLIP_TAIL);
        Setter(clip).file("cusp", CLIP_CUSP);
        Setter(clip).file("chip", CLIP_CHIP);
        Setter(clip).file("tip",  CLIP_TIP);

        // 5. Vat / Jug initialization
        Setter(vat).init(ilk);
        Setter(jug).init(ilk);

        // 6. Global parameters
        Setter(vat).file(ilk, "line", ILK_LINE);
        Setter(vat).file("Line", DssVat(vat).Line() + ILK_LINE);
        Setter(vat).file(ilk, "dust", ILK_DUST);
        Setter(jug).file(ilk, "duty", ILK_DUTY);

        // 7. OSM / Spotter (setOsm is idempotent — same pip as ETH-A)
        Setter(osmMom).setOsm(ilk, pip);
        Setter(spotter).file(ilk, "pip", pip);
        Setter(spotter).file(ilk, "mat", ILK_MAT);
        Setter(spotter).poke(ilk);

        // 8. Dog / Clip
        Setter(dog).file(ilk, "chop", ILK_CHOP);
        Setter(clip).upchost();
        Setter(dog).file(ilk, "hole", ILK_HOLE);
        Setter(dog).file(ilk, "clip", clip);

        // 9. Internal auth grants
        Setter(vat).rely(gemjoin);
        Setter(vat).rely(clip);
        Setter(dog).rely(clip);

        // 10. ChainLog registration (Oracle keys set by ETH-A; only write B-specific)
        ChainLogAbstract cl = ChainLogAbstract(LOG);
        cl.setAddress("MCD_JOIN_ETH_B",      gemjoin);
        cl.setAddress("MCD_CLIP_ETH_B",      clip);
        cl.setAddress("MCD_CLIP_CALC_ETH_B", calc);
        cl.setVersion("1.3.4");
    }
}
