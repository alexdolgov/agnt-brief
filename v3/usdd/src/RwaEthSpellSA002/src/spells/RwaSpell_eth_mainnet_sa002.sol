// SPDX-License-Identifier: AGPL-3.0-or-later
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

pragma solidity 0.6.12;

import {VatAbstract} from "../interfaces/dss/VatAbstract.sol";
import {JugAbstract} from "../interfaces/dss/JugAbstract.sol";
import {SpotAbstract} from "../interfaces/dss/SpotAbstract.sol";
import {GemJoinAbstract} from "../interfaces/dss/GemJoinAbstract.sol";
import {DSTokenAbstract} from "../interfaces/dapp/DSTokenAbstract.sol";
import {ChainLogAbstract} from "../interfaces/chainlog/ChainLogAbstract.sol";
import {PsmAbstract} from "../interfaces/dss/PsmAbstract.sol";

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

contract RwaEthSpellSA002 {
    ChainLogAbstract constant CHAINLOG = ChainLogAbstract(0xe43b79ac7A8CA43365B6AD4757bc35C064249fA0);

    address public immutable MCD_VAT;
    address public immutable MCD_SPOT;
    address public immutable MCD_JUG;
    address public immutable MCD_USDD;
    address public immutable MCD_JOIN_USDD;
    address public immutable MCD_VOW;

    address public immutable PSM;
    address public immutable PSM_GEM;
    bytes32 public constant PSM_KEY = "MCD_PSM_USDC_A";

    bytes32 public constant ilk                        = "SA002-A";
    address public constant SA002_GEM                  = 0x137DaA55753E86280877C59c5BEeFe27542b9Df9;
    address public constant MCD_JOIN_SA002_A           = 0xb09E88E8d50c21c7d6F75A950b7D22A2B66C581E;
    address public constant SA002_A_URN                = 0xC37cF3afF5Bab5A4b933Ad560D0f1C3a3062E729;
    address public constant SA002_A_INPUT_CONDUIT_URN  = 0xEb14C1C31168E5Fb853DB73b133973DE1794d340;
    address public constant SA002_A_URN_CLOSE_HELPER   = 0x8c29178989FEAC6d542a3dF6B132Ece9e83a6ECa;
    address public constant SA002_A_JAR                = 0x96C3eBcA677521499Ff0384119b4B2Eae334cec3;
    address public constant SA002_A_INPUT_CONDUIT_JAR  = 0x116668a670F3C4613E45B7F419CcA61C117e50b2;
    address public constant SA002_A_OUTPUT_CONDUIT     = 0x4D246F4e160e9c05d5159c292BBB4a450B44057B;
    address public constant LIQUIDATION_ORACLE         = 0x6061A3691c6F5051c9FCa11B859D786E663a2984;
    address public constant RWA_TOKEN_FACTORY          = 0x4077edaCC2Ecce3C38CC2566eD9c5b336479Cc50;
    address public constant RWA_URN_CLOSE_HELPER       = 0x8c29178989FEAC6d542a3dF6B132Ece9e83a6ECa;

    uint256 public constant ZERO_PCT_RATE  = 1000000000000000000000000000;

    // precision
    uint256 constant public THOUSAND = 10 ** 3;
    uint256 constant public MILLION  = 10 ** 6;
    uint256 constant public WAD      = 10 ** 18;
    uint256 constant public RAY      = 10 ** 27;
    uint256 constant public RAD      = 10 ** 45;

    uint256 public constant SA002_A_INITIAL_DC         = 0 * RAD;
    uint256 public constant SA002_A_INITIAL_PRICE      = 0 * WAD;
    uint256 public constant SA002_A_RATE               = ZERO_PCT_RATE;
    uint256 public constant SA002_A_MAT                = RAY;
    uint48  public constant SA002_A_REMEDIATION_PERIOD = 0;
    string  public constant SA002_DOC                  = "";

    address public constant SA002_OPERATOR = 0x25198d0D111eEAC0fb1Bd1DE826294D9Fce84378;
    address public constant SA002_USER     = 0xD00e0079B8CAB524F3fa20EA879a7736E512a5Fc;

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
        // SA002-A collateral deploy

        // Sanity checks
        require(GemJoinAbstract(MCD_JOIN_SA002_A).vat() == MCD_VAT, "join-vat-not-match");
        require(GemJoinAbstract(MCD_JOIN_SA002_A).ilk() == ilk, "join-ilk-not-match");
        require(GemJoinAbstract(MCD_JOIN_SA002_A).gem() == SA002_GEM, "join-gem-not-match");
        require(GemJoinAbstract(MCD_JOIN_SA002_A).dec() == DSTokenAbstract(SA002_GEM).decimals(), "join-dec-not-match");

        require(RwaUrnLike(SA002_A_URN).vat()           == MCD_VAT,                "urn-vat-not-match");
        require(RwaUrnLike(SA002_A_URN).jug()           == MCD_JUG,                "urn-jug-not-match");
        require(RwaUrnLike(SA002_A_URN).usddJoin()      == MCD_JOIN_USDD,          "urn-usddjoin-not-match");
        require(RwaUrnLike(SA002_A_URN).gemJoin()       == MCD_JOIN_SA002_A,       "urn-gemjoin-not-match");
        require(RwaUrnLike(SA002_A_URN).outputConduit() == SA002_A_OUTPUT_CONDUIT, "urn-outputconduit-not-match");

        require(RwaJarLike(SA002_A_JAR).vow()           == MCD_VOW,                "jar-vow-not-match");
        require(RwaJarLike(SA002_A_JAR).usdd()          == MCD_USDD,               "jar-usdd-not-match");
        require(RwaJarLike(SA002_A_JAR).usddJoin()      == MCD_JOIN_USDD,          "jar-usddjoin-not-match");

        require(RwaOutputConduitLike(SA002_A_OUTPUT_CONDUIT).usdd() == MCD_USDD,       "output-conduit-usdd-not-match");
        require(RwaOutputConduitLike(SA002_A_OUTPUT_CONDUIT).gem()  == PSM_GEM,        "output-conduit-gem-not-match");
        require(RwaOutputConduitLike(SA002_A_OUTPUT_CONDUIT).psm()  == PSM,            "output-conduit-psm-not-match");
        
        require(RwaInputConduitLike(SA002_A_INPUT_CONDUIT_URN).psm()  == PSM,            "input-conduit-urn-psm-not-match");
        require(RwaInputConduitLike(SA002_A_INPUT_CONDUIT_URN).to()   == SA002_A_URN,    "input-conduit-urn-to-not-match");
        require(RwaInputConduitLike(SA002_A_INPUT_CONDUIT_URN).usdd() == MCD_USDD,       "input-conduit-urn-usdd-not-match");
        require(RwaInputConduitLike(SA002_A_INPUT_CONDUIT_URN).gem()  == PSM_GEM,        "input-conduit-urn-gem-not-match");

        require(RwaInputConduitLike(SA002_A_INPUT_CONDUIT_JAR).psm()  == PSM,            "input-conduit-jar-psm-not-match");
        require(RwaInputConduitLike(SA002_A_INPUT_CONDUIT_JAR).to()   == SA002_A_JAR,    "input-conduit-jar-to-not-match");
        require(RwaInputConduitLike(SA002_A_INPUT_CONDUIT_JAR).usdd() == MCD_USDD,       "input-conduit-jar-usdd-not-match");
        require(RwaInputConduitLike(SA002_A_INPUT_CONDUIT_JAR).gem()  == PSM_GEM,        "input-conduit-jar-gem-not-match");

        // init the RwaLiquidationOracle
        RwaLiquidationLike(LIQUIDATION_ORACLE).init(
            ilk, SA002_A_INITIAL_PRICE, SA002_DOC, SA002_A_REMEDIATION_PERIOD
        );
        (,address pip,,) = RwaLiquidationLike(LIQUIDATION_ORACLE).ilks(ilk);

        // Set price feed for SA002
        SpotAbstract(MCD_SPOT).file(ilk, "pip", pip);

        // Init SA-002 in Vat
        VatAbstract(MCD_VAT).init(ilk);
        // Init SA-002 in Jug
        JugAbstract(MCD_JUG).init(ilk);

        // Allow SA-002 Join to modify Vat registry
        VatAbstract(MCD_VAT).rely(MCD_JOIN_SA002_A);

        // Allow RwaLiquidationOracle to modify Vat registry
        VatAbstract(MCD_VAT).rely(LIQUIDATION_ORACLE);

        // set the debt ceiling
        VatAbstract(MCD_VAT).file(ilk, "line", SA002_A_INITIAL_DC);
        VatAbstract(MCD_VAT).file("Line", VatAbstract(MCD_VAT).Line() + SA002_A_INITIAL_DC);

        // No dust
        // VatAbstract(MCD_VAT).file(ilk, "dust", 0)

        // set the stability fee
        JugAbstract(MCD_JUG).file(ilk, "duty", SA002_A_RATE);

        // set the collateralization ratio
        SpotAbstract(MCD_SPOT).file(ilk, "mat", SA002_A_MAT);

        // poke the spotter to pull in a price
        SpotAbstract(MCD_SPOT).poke(ilk);

        // give the urn permissions on the join adapter
        GemJoinAbstract(MCD_JOIN_SA002_A).rely(SA002_A_URN);

        // set up the urn
        RwaUrnLike(SA002_A_URN).hope(SA002_OPERATOR);
        RwaUrnLike(SA002_A_URN).hope(SA002_A_URN_CLOSE_HELPER);

        // set up output conduit
        RwaOutputConduitLike(SA002_A_OUTPUT_CONDUIT).hope(SA002_OPERATOR);
        RwaOutputConduitLike(SA002_A_OUTPUT_CONDUIT).mate(SA002_OPERATOR);
        RwaOutputConduitLike(SA002_A_OUTPUT_CONDUIT).kiss(SA002_USER); // who can be picked as recipient address
        RwaOutputConduitLike(SA002_A_OUTPUT_CONDUIT).file("quitTo", SA002_A_URN);

        RwaInputConduitLike(SA002_A_INPUT_CONDUIT_URN).mate(SA002_OPERATOR);
        RwaInputConduitLike(SA002_A_INPUT_CONDUIT_URN).file("quitTo", SA002_USER);

        RwaInputConduitLike(SA002_A_INPUT_CONDUIT_JAR).mate(SA002_OPERATOR);
        RwaInputConduitLike(SA002_A_INPUT_CONDUIT_JAR).file("quitTo", SA002_USER);

        // add SA-002 contract to the ChainLog
        CHAINLOG.setAddress("SA002", SA002_GEM);
        CHAINLOG.setAddress("MCD_JOIN_SA002_A", MCD_JOIN_SA002_A);
        CHAINLOG.setAddress("LIQUIDATION_ORACLE", LIQUIDATION_ORACLE);
        CHAINLOG.setAddress("SA002_A_URN", SA002_A_URN);
        CHAINLOG.setAddress("SA002_A_JAR", SA002_A_JAR);
        CHAINLOG.setAddress("SA002_A_INPUT_CONDUIT_URN", SA002_A_INPUT_CONDUIT_URN);
        CHAINLOG.setAddress("SA002_A_INPUT_CONDUIT_JAR", SA002_A_INPUT_CONDUIT_JAR);
        CHAINLOG.setAddress("SA002_A_OUTPUT_CONDUIT", SA002_A_OUTPUT_CONDUIT);
        CHAINLOG.setAddress("PIP_SA002", pip);
        CHAINLOG.setAddress("SA002_A_URN_CLOSE_HELPER", RWA_URN_CLOSE_HELPER);
        CHAINLOG.setAddress("RWA_TOKEN_FACTORY", RWA_TOKEN_FACTORY);
        CHAINLOG.setAddress("RWA_URN_CLOSE_HELPER", RWA_URN_CLOSE_HELPER);

        CHAINLOG.setVersion("1.3.0");
    }
}
