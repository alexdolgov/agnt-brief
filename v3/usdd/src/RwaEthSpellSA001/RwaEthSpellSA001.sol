// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity =0.6.12 >=0.5.12;

// src/interfaces/chainlog/ChainLogAbstract.sol

interface ChainLogAbstract {
    function setVersion(string calldata) external;
    function setIPFS(string calldata) external;
    function setSha256sum(string calldata) external;
    function getAddress(bytes32) external view returns (address);
    function setAddress(bytes32, address) external;
    function removeAddress(bytes32) external;
}

// src/interfaces/dapp/DSTokenAbstract.sol

// https://github.com/dapphub/ds-token/blob/master/src/token.sol
interface DSTokenAbstract {
    function name() external view returns (bytes32);
    function symbol() external view returns (bytes32);
    function decimals() external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function balanceOf(address) external view returns (uint256);
    function transfer(address, uint256) external returns (bool);
    function allowance(address, address) external view returns (uint256);
    function approve(address, uint256) external returns (bool);
    function approve(address) external returns (bool);
    function transferFrom(address, address, uint256) external returns (bool);
    function push(address, uint256) external;
    function pull(address, uint256) external;
    function move(address, address, uint256) external;
    function mint(uint256) external;
    function mint(address,uint) external;
    function burn(uint256) external;
    function burn(address,uint) external;
    function setName(bytes32) external;
    function authority() external view returns (address);
    function owner() external view returns (address);
    function setOwner(address) external;
    function setAuthority(address) external;
}

// src/interfaces/dss/GemJoinAbstract.sol

// https://github.com/usdd-network/usddv2-contracts/blob/main/src/dss/join.sol
interface GemJoinAbstract {
    function wards(address) external view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function vat() external view returns (address);
    function ilk() external view returns (bytes32);
    function gem() external view returns (address);
    function dec() external view returns (uint256);
    function live() external view returns (uint256);
    function cage() external;
    function join(address, uint256) external;
    function exit(address, uint256) external;
}

// src/interfaces/dss/JugAbstract.sol

// https://github.com/usdd-network/usddv2-contracts/blob/main/src/dss/jug.sol
interface JugAbstract {
    function wards(address) external view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function ilks(bytes32) external view returns (uint256, uint256);
    function vat() external view returns (address);
    function vow() external view returns (address);
    function base() external view returns (uint256);
    function init(bytes32) external;
    function file(bytes32, bytes32, uint256) external;
    function file(bytes32, uint256) external;
    function file(bytes32, address) external;
    function drip(bytes32) external returns (uint256);
}

// src/interfaces/dss/PsmAbstract.sol

// https://github.com/usdd-network/psm/blob/main/src/psm.sol
interface PsmAbstract {
    function wards(address) external view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function vat() external view returns (address);
    function gemJoin() external view returns (address);
    function usdd() external view returns (address);
    function usddJoin() external view returns (address);
    function ilk() external view returns (bytes32);
    function vow() external view returns (address);
    function tin() external view returns (uint256);
    function tout() external view returns (uint256);
    function file(bytes32 what, uint256 data) external;
    function hope(address) external;
    function nope(address) external;
    function sellGem(address usr, uint256 gemAmt) external;
    function buyGem(address usr, uint256 gemAmt) external;
}

// src/interfaces/dss/SpotAbstract.sol

// https://github.com/usdd-network/usddv2-contracts/blob/main/src/dss/spot.sol
interface SpotAbstract {
    function wards(address) external view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function ilks(bytes32) external view returns (address, uint256);
    function vat() external view returns (address);
    function par() external view returns (uint256);
    function live() external view returns (uint256);
    function file(bytes32, bytes32, address) external;
    function file(bytes32, uint256) external;
    function file(bytes32, bytes32, uint256) external;
    function poke(bytes32) external;
    function cage() external;
}

// src/interfaces/dss/VatAbstract.sol

// https://github.com/usdd-network/usddv2-contracts/blob/main/src/dss/vat.sol
interface VatAbstract {
    function wards(address) external view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function can(address, address) external view returns (uint256);
    function hope(address) external;
    function nope(address) external;
    function ilks(bytes32) external view returns (uint256, uint256, uint256, uint256, uint256);
    function urns(bytes32, address) external view returns (uint256, uint256);
    function gem(bytes32, address) external view returns (uint256);
    function usdd(address) external view returns (uint256);
    function sin(address) external view returns (uint256);
    function debt() external view returns (uint256);
    function vice() external view returns (uint256);
    function Line() external view returns (uint256);
    function live() external view returns (uint256);
    function init(bytes32) external;
    function file(bytes32, uint256) external;
    function file(bytes32, bytes32, uint256) external;
    function cage() external;
    function slip(bytes32, address, int256) external;
    function flux(bytes32, address, address, uint256) external;
    function move(address, address, uint256) external;
    function frob(bytes32, address, address, address, int256, int256) external;
    function fork(bytes32, address, address, int256, int256) external;
    function grab(bytes32, address, address, address, int256, int256) external;
    function heal(uint256) external;
    function suck(address, address, uint256) external;
    function fold(bytes32, address, int256) external;
}

// src/spells/RwaSpell_eth_mainnet_sa001.sol

//
// RwaSpell.sol -- Spell for onboarding RWA collateral
//
// Copyright (C) 2020-2021 Lev Livnev <lev@liv.nev.org.uk>
// Copyright (C) 2021-2022 Dai Foundation
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

interface RwaLiquidationLike {
    function wards(address) external returns (uint256);
    function ilks(bytes32) external returns (string memory,address,uint48,uint48);
    function rely(address) external;
    function deny(address) external;
    function init(bytes32, uint256, string calldata, uint48) external;
}

interface RwaInputConduitLike {
    function usdd() external view returns(address);
    function psm() external view returns(address);
    function gem() external view returns(address);
    function to() external view returns(address);
    function mate(address usr) external;
    function file(bytes32 what, address data) external;
}

interface RwaOutputConduitLike {
    function usdd() external view returns(address);
    function psm() external view returns(address);
    function gem() external view returns(address);
    function wards(address) external returns (uint256);
    function can(address) external returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function hope(address) external;
    function nope(address) external;
    function bud(address) external returns (uint256);
    function kiss(address) external;
    function diss(address) external;
    function pick(address) external;
    function push() external;
    function mate(address) external;
    function hate(address) external;
    function file(bytes32 what, address data) external;
}

interface RwaUrnLike {
    function vat() external view returns(address);
    function jug() external view returns(address);
    function gemJoin() external view returns(address);
    function usddJoin() external view returns(address);
    function outputConduit() external view returns(address);
    function hope(address) external;
}

interface RwaJarLike {
    function vow() external view returns(address);
    function usdd() external view returns(address);
    function usddJoin() external view returns(address);
}

contract RwaEthSpellSA001 {
    ChainLogAbstract constant CHAINLOG = ChainLogAbstract(0x2007A37dC25c58Ae373dE3B0d9e9aE231a2F17Bd);

    address public immutable MCD_VAT;
    address public immutable MCD_SPOT;
    address public immutable MCD_JUG;
    address public immutable MCD_USDD;
    address public immutable MCD_JOIN_USDD;
    address public immutable MCD_VOW;

    address public immutable PSM;
    address public immutable PSM_GEM;
    bytes32 public constant PSM_KEY = "MCD_PSM_USDT_A";

    bytes32 public constant ilk                        = "SA001-A";
    address public constant SA001_GEM                  = 0xe0133Fb7Dac76A7628B4548AB88DA4E307575E46;
    address public constant MCD_JOIN_SA001_A           = 0x062a738465F30EBe6dD06cFAd3256Ba783EDf000;
    address public constant SA001_A_URN                = 0xA86f11aE77bBa1Dc03174F80c7d956F3C2444866;
    address public constant SA001_A_INPUT_CONDUIT_URN  = 0xA3Ed11cf1bebb67fC61F18DB9B3323c0dad76bB5;
    address public constant SA001_A_URN_CLOSE_HELPER   = 0xDd3dF05087bA01FBD1B32566b05C3C7b10f48d4B;
    address public constant SA001_A_JAR                = 0x03503147B762017904B10d96F10e194550E5e0aD;
    address public constant SA001_A_INPUT_CONDUIT_JAR  = 0xb1582adfE4A82Cf160d7691b9A45984dE4121d73;
    address public constant SA001_A_OUTPUT_CONDUIT     = 0x458b8fA44A868F87A4FA7B4c6efac3AF4Eb557A3;
    address public constant LIQUIDATION_ORACLE         = 0xE0c82299596E268e94089ED7D55E93EC808A904e;
    address public constant RWA_TOKEN_FACTORY          = 0x1b76Cf683C0a381BD6F591c982C7d28972dF530d;
    address public constant RWA_URN_CLOSE_HELPER       = 0xDd3dF05087bA01FBD1B32566b05C3C7b10f48d4B;

    uint256 public constant ZERO_PCT_RATE  = 1000000000000000000000000000;

    // precision
    uint256 constant public THOUSAND = 10 ** 3;
    uint256 constant public MILLION  = 10 ** 6;
    uint256 constant public WAD      = 10 ** 18;
    uint256 constant public RAY      = 10 ** 27;
    uint256 constant public RAD      = 10 ** 45;

    uint256 public constant SA001_A_INITIAL_DC         = 0 * RAD;
    uint256 public constant SA001_A_INITIAL_PRICE      = 0 * WAD;
    uint256 public constant SA001_A_RATE               = ZERO_PCT_RATE;
    uint256 public constant SA001_A_MAT                = RAY;
    uint48  public constant SA001_A_REMEDIATION_PERIOD = 0;
    string  public constant SA001_DOC                  = "";

    address public constant SA001_OPERATOR = 0x25198d0D111eEAC0fb1Bd1DE826294D9Fce84378;
    address public constant SA001_USER     = 0xD00e0079B8CAB524F3fa20EA879a7736E512a5Fc;

    constructor() public {
        MCD_VAT = CHAINLOG.getAddress("MCD_VAT");
        MCD_SPOT = CHAINLOG.getAddress("MCD_SPOT");
        MCD_JUG = CHAINLOG.getAddress("MCD_JUG");
        MCD_VOW = CHAINLOG.getAddress("MCD_VOW");
        MCD_USDD = CHAINLOG.getAddress("MCD_USDD");
        MCD_JOIN_USDD = CHAINLOG.getAddress("MCD_JOIN_USDD");

        address _PSM = CHAINLOG.getAddress(PSM_KEY);
        PSM = _PSM;
        PSM_GEM = GemJoinAbstract(PsmAbstract(_PSM).gemJoin()).gem();
    }

    function setup() external {
        // SA001-A collateral deploy

        // Sanity checks
        require(GemJoinAbstract(MCD_JOIN_SA001_A).vat() == MCD_VAT, "join-vat-not-match");
        require(GemJoinAbstract(MCD_JOIN_SA001_A).ilk() == ilk, "join-ilk-not-match");
        require(GemJoinAbstract(MCD_JOIN_SA001_A).gem() == SA001_GEM, "join-gem-not-match");
        require(GemJoinAbstract(MCD_JOIN_SA001_A).dec() == DSTokenAbstract(SA001_GEM).decimals(), "join-dec-not-match");

        require(RwaUrnLike(SA001_A_URN).vat()           == MCD_VAT,                "urn-vat-not-match");
        require(RwaUrnLike(SA001_A_URN).jug()           == MCD_JUG,                "urn-jug-not-match");
        require(RwaUrnLike(SA001_A_URN).usddJoin()      == MCD_JOIN_USDD,          "urn-usddjoin-not-match");
        require(RwaUrnLike(SA001_A_URN).gemJoin()       == MCD_JOIN_SA001_A,       "urn-gemjoin-not-match");
        require(RwaUrnLike(SA001_A_URN).outputConduit() == SA001_A_OUTPUT_CONDUIT, "urn-outputconduit-not-match");

        require(RwaJarLike(SA001_A_JAR).vow()           == MCD_VOW,                "jar-vow-not-match");
        require(RwaJarLike(SA001_A_JAR).usdd()          == MCD_USDD,               "jar-usdd-not-match");
        require(RwaJarLike(SA001_A_JAR).usddJoin()      == MCD_JOIN_USDD,          "jar-usddjoin-not-match");

        require(RwaOutputConduitLike(SA001_A_OUTPUT_CONDUIT).usdd() == MCD_USDD,       "output-conduit-usdd-not-match");
        require(RwaOutputConduitLike(SA001_A_OUTPUT_CONDUIT).gem()  == PSM_GEM,        "output-conduit-gem-not-match");
        require(RwaOutputConduitLike(SA001_A_OUTPUT_CONDUIT).psm()  == PSM,            "output-conduit-psm-not-match");
        
        require(RwaInputConduitLike(SA001_A_INPUT_CONDUIT_URN).psm()  == PSM,            "input-conduit-urn-psm-not-match");
        require(RwaInputConduitLike(SA001_A_INPUT_CONDUIT_URN).to()   == SA001_A_URN,    "input-conduit-urn-to-not-match");
        require(RwaInputConduitLike(SA001_A_INPUT_CONDUIT_URN).usdd() == MCD_USDD,       "input-conduit-urn-usdd-not-match");
        require(RwaInputConduitLike(SA001_A_INPUT_CONDUIT_URN).gem()  == PSM_GEM,        "input-conduit-urn-gem-not-match");

        require(RwaInputConduitLike(SA001_A_INPUT_CONDUIT_JAR).psm()  == PSM,            "input-conduit-jar-psm-not-match");
        require(RwaInputConduitLike(SA001_A_INPUT_CONDUIT_JAR).to()   == SA001_A_JAR,    "input-conduit-jar-to-not-match");
        require(RwaInputConduitLike(SA001_A_INPUT_CONDUIT_JAR).usdd() == MCD_USDD,       "input-conduit-jar-usdd-not-match");
        require(RwaInputConduitLike(SA001_A_INPUT_CONDUIT_JAR).gem()  == PSM_GEM,        "input-conduit-jar-gem-not-match");

        // init the RwaLiquidationOracle
        RwaLiquidationLike(LIQUIDATION_ORACLE).init(
            ilk, SA001_A_INITIAL_PRICE, SA001_DOC, SA001_A_REMEDIATION_PERIOD
        );
        (,address pip,,) = RwaLiquidationLike(LIQUIDATION_ORACLE).ilks(ilk);

        // Set price feed for SA001
        SpotAbstract(MCD_SPOT).file(ilk, "pip", pip);

        // Init SA-001 in Vat
        VatAbstract(MCD_VAT).init(ilk);
        // Init SA-001 in Jug
        JugAbstract(MCD_JUG).init(ilk);

        // Allow SA-001 Join to modify Vat registry
        VatAbstract(MCD_VAT).rely(MCD_JOIN_SA001_A);

        // Allow RwaLiquidationOracle to modify Vat registry
        VatAbstract(MCD_VAT).rely(LIQUIDATION_ORACLE);

        // set the debt ceiling
        VatAbstract(MCD_VAT).file(ilk, "line", SA001_A_INITIAL_DC);
        VatAbstract(MCD_VAT).file("Line", VatAbstract(MCD_VAT).Line() + SA001_A_INITIAL_DC);

        // No dust
        // VatAbstract(MCD_VAT).file(ilk, "dust", 0)

        // set the stability fee
        JugAbstract(MCD_JUG).file(ilk, "duty", SA001_A_RATE);

        // set the collateralization ratio
        SpotAbstract(MCD_SPOT).file(ilk, "mat", SA001_A_MAT);

        // poke the spotter to pull in a price
        SpotAbstract(MCD_SPOT).poke(ilk);

        // give the urn permissions on the join adapter
        GemJoinAbstract(MCD_JOIN_SA001_A).rely(SA001_A_URN);

        // set up the urn
        RwaUrnLike(SA001_A_URN).hope(SA001_OPERATOR);
        RwaUrnLike(SA001_A_URN).hope(SA001_A_URN_CLOSE_HELPER);

        // set up output conduit
        RwaOutputConduitLike(SA001_A_OUTPUT_CONDUIT).hope(SA001_OPERATOR);
        RwaOutputConduitLike(SA001_A_OUTPUT_CONDUIT).mate(SA001_OPERATOR);
        RwaOutputConduitLike(SA001_A_OUTPUT_CONDUIT).kiss(SA001_USER); // who can be picked as recipient address
        RwaOutputConduitLike(SA001_A_OUTPUT_CONDUIT).file("quitTo", SA001_A_URN);

        RwaInputConduitLike(SA001_A_INPUT_CONDUIT_URN).mate(SA001_OPERATOR);
        RwaInputConduitLike(SA001_A_INPUT_CONDUIT_URN).file("quitTo", SA001_USER);

        RwaInputConduitLike(SA001_A_INPUT_CONDUIT_JAR).mate(SA001_OPERATOR);
        RwaInputConduitLike(SA001_A_INPUT_CONDUIT_JAR).file("quitTo", SA001_USER);

        // add SA-001 contract to the ChainLog
        CHAINLOG.setAddress("SA001", SA001_GEM);
        CHAINLOG.setAddress("MCD_JOIN_SA001_A", MCD_JOIN_SA001_A);
        CHAINLOG.setAddress("LIQUIDATION_ORACLE", LIQUIDATION_ORACLE);
        CHAINLOG.setAddress("SA001_A_URN", SA001_A_URN);
        CHAINLOG.setAddress("SA001_A_JAR", SA001_A_JAR);
        CHAINLOG.setAddress("SA001_A_INPUT_CONDUIT_URN", SA001_A_INPUT_CONDUIT_URN);
        CHAINLOG.setAddress("SA001_A_INPUT_CONDUIT_JAR", SA001_A_INPUT_CONDUIT_JAR);
        CHAINLOG.setAddress("SA001_A_OUTPUT_CONDUIT", SA001_A_OUTPUT_CONDUIT);
        CHAINLOG.setAddress("PIP_SA001", pip);
        CHAINLOG.setAddress("SA001_A_URN_CLOSE_HELPER", RWA_URN_CLOSE_HELPER);
        CHAINLOG.setAddress("RWA_TOKEN_FACTORY", RWA_TOKEN_FACTORY);
        CHAINLOG.setAddress("RWA_URN_CLOSE_HELPER", RWA_URN_CLOSE_HELPER);

        CHAINLOG.setVersion("1.3.0");
    }
}