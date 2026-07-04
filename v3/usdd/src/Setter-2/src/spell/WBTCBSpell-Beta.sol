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
    function setBtcOracle(address) public virtual;
    function poke(bytes32) public virtual;
}

contract WBTCBSpellBeta {
    // ── ChainLog ──────────────────────────────────────────────────────────
    address constant public LOG = 0xAc266def6e633FA65745A718958469d3B72558B6;

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

    // ── WBTC-B collateral type ────────────────────────────────────────────
    bytes32 public constant ilk = "WBTC-B";

    // ── WBTC-B contract addresses (fill in after deploy_wbtc.s.sol executes)
    address public constant gem     = 0x0eef30749f8B982f5a8277b013114015460666C0;
    address public constant calc    = 0xAc4727154AfD54819ae4A4B9B0b64FF56E69A3E0;
    address public constant clip    = 0xA393708683597125D2d970e242b7AA036de94a01;
    address public constant gemjoin = 0x4AA37c82FF9529E3Dc4B7e5d0daA4630f73aE6e4;

    // Oracle stack (shared with WBTC-A; fill in after deploy_wbtc.s.sol executes)
    address public constant baseValue   = 0xb8E21d2ad752C7fD562B95f84D61A377d7b1411A;
    address public constant oracleValue = 0xc5759beB971c2f3A00b93a8f76c10E590BcCc094;
    address public constant median      = 0x47Ce156037a9d816322fA7bD336147b6231d1AF6;
    address public constant pip         = 0xDC70917c10F1D049157636548C5037935F5D3508;

    address public constant pipKeeper = 0xE10AB58702Dc4A0AEd118eD4ad56Ff44E7585691;

    // ── Chainlink feeds (fill in before deploy) ─────────────────────────────
    address public constant CHAINLINK_BTC_USD = 0xF4030086522a5bEEa4988F8cA5B36dbC97BeE88c; // Chainlink BTC/USD on Ethereum Mainnet

    // ── Precision constants ────────────────────────────────────────────────
    uint256 internal constant WAD = 10 ** 18;
    uint256 internal constant RAY = 10 ** 27;
    uint256 internal constant RAD = 10 ** 45;

    // ── Risk parameters (docs/ETH-WBTC-CDP-on-Ethereum.csv) ────────────────
    uint256 public constant ILK_LINE  = 50_000_000 * 10 ** 45;
    uint256 public constant ILK_DUST  = 12_800 * 10 ** 45;        // higher than A
    uint256 public constant ILK_MAT   = 135 * 10 ** 27 / 100;     // 135% CR
    uint256 public constant ILK_DUTY  = 1000000002659864411854984565; // 8.75%/yr
    uint256 public constant ILK_CHOP  = 113 * 10 ** 18 / 100;
    uint256 public constant ILK_HOLE  = 50_000_000 * 10 ** 45;
    uint256 public constant CALC_STEP = 60;                        // faster than A
    uint256 public constant CALC_CUT  = 995 * 10 ** 27 / 1000;
    uint256 public constant CLIP_BUF  = 110 * 10 ** 27 / 100;
    uint256 public constant CLIP_CUSP = 45  * 10 ** 27 / 100;
    uint256 public constant CLIP_CHIP = 10  * 10 ** 18 / 10000;
    uint256 public constant CLIP_TIP  = 50  * 10 ** 45;
    uint256 public constant CLIP_TAIL = 4800;                      // shorter than A

    uint256 public constant MEDIAN_DEVIATION = 500;
    uint256 public constant MEDIAN_BAR       = 2;
    uint256 public constant BASEVALUE_BAR    = 5;

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
        require(ClipLike(clip).spotter() == spotter,"clip-spotter-not-match");

        // 2. Oracle parameters (shared stack, re-apply for safety)
        Setter(median).setDeviation(MEDIAN_DEVIATION);
        Setter(median).setBar(MEDIAN_BAR);
        Setter(median).rely(pipKeeper);
        Setter(baseValue).setBar(BASEVALUE_BAR);
        Setter(oracleValue).setBtcOracle(CHAINLINK_BTC_USD);
        Setter(pip).rely(pipKeeper);
        Setter(pip).kiss(clip);

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

        // 7. OSM / Spotter
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

        // 10. ChainLog registration (B-specific keys only)
        ChainLogAbstract cl = ChainLogAbstract(LOG);
        cl.setAddress("MCD_JOIN_WBTC_B",      gemjoin);
        cl.setAddress("MCD_CLIP_WBTC_B",      clip);
        cl.setAddress("MCD_CLIP_CALC_WBTC_B", calc);
        cl.setVersion("1.3.2");
    }
}
