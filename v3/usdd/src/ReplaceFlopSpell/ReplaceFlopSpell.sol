// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity =0.6.12 >=0.5.12;

// src/interfaces/dss/ChainLogAbstract.sol

interface ChainLogAbstract {
    function wards(address) external view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function keys() external view returns (bytes32[] memory);
    function version() external view returns (string memory);
    function ipfs() external view returns (string memory);
    function setVersion(string calldata) external;
    function setSha256sum(string calldata) external;
    function setIPFS(string calldata) external;
    function setAddress(bytes32,address) external;
    function removeAddress(bytes32) external;
    function count() external view returns (uint256);
    function get(uint256) external view returns (bytes32,address);
    function list() external view returns (bytes32[] memory);
    function getAddress(bytes32) external view returns (address);
}

// src/interfaces/dss/FlopAbstract.sol

// https://github.com/usdd-network/usddv2-contracts/blob/main/src/dss/flop.sol
interface FlopAbstract {
    function wards(address) external view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function bids(uint256) external view returns (uint256, uint256, address, uint48, uint48);
    function vat() external view returns (address);
    function gem() external view returns (address);
    function beg() external view returns (uint256);
    function pad() external view returns (uint256);
    function ttl() external view returns (uint48);
    function tau() external view returns (uint48);
    function kicks() external view returns (uint256);
    function live() external view returns (uint256);
    function vow() external view returns (address);
    function file(bytes32, uint256) external;
    function file(bytes32, address) external;
    function kick(address, uint256, uint256) external returns (uint256);
    function tick(uint256) external;
    function dent(uint256, uint256, uint256) external;
    function deal(uint256) external;
    function cage() external;
    function yank(uint256) external;
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

// src/interfaces/dss/VowAbstract.sol

// https://github.com/usdd-network/usddv2-contracts/blob/main/src/dss/vow.sol
interface VowAbstract {
    function wards(address) external view returns (uint256);
    function rely(address usr) external;
    function deny(address usr) external;
    function vat() external view returns (address);
    function flapper() external view returns (address);
    function flopper() external view returns (address);
    function sin(uint256) external view returns (uint256);
    function Sin() external view returns (uint256);
    function Ash() external view returns (uint256);
    function wait() external view returns (uint256);
    function dump() external view returns (uint256);
    function sump() external view returns (uint256);
    function bump() external view returns (uint256);
    function hump() external view returns (uint256);
    function live() external view returns (uint256);
    function file(bytes32, uint256) external;
    function file(bytes32, address) external;
    function fess(uint256) external;
    function flog(uint256) external;
    function heal(uint256) external;
    function kiss(uint256) external;
    function flop() external returns (uint256);
    function flap() external returns (uint256);
    function cage() external;
}

// src/FlopSpell.sol

contract ReplaceFlopSpell {
    ChainLogAbstract constant CHAINLOG =
        ChainLogAbstract(0x2007A37dC25c58Ae373dE3B0d9e9aE231a2F17Bd);

    address public immutable MCD_VAT;
    address public immutable MCD_FLOP;
    address public immutable MCD_VOW;
    address public immutable MCD_PAUSE_PROXY;

    address public constant NEW_MCD_FLOP = 0xD6bd489DeDF05dBCcb680304B3AF2df73d1D7De0;

    // for flop
    uint256 public constant FLOP_BEG = 1.05 ether; // 5%
    uint256 public constant FLOP_PAD = 1.05 ether; // 5%
    uint256 public constant FLOP_TTL = 3 hours; // 10800 seconds
    uint256 public constant FLOP_TAU = 3 days; // 259200 seconds
    address public constant FLOP_GEM = address(0); // unset FLOP gem token

    constructor() public {
        MCD_VAT = CHAINLOG.getAddress("MCD_VAT");
        MCD_FLOP = CHAINLOG.getAddress("MCD_FLOP");
        MCD_VOW = CHAINLOG.getAddress("MCD_VOW");
        MCD_PAUSE_PROXY = CHAINLOG.getAddress("MCD_PAUSE_PROXY");
    }

    function setup() external {
        // set new Flop
        FlopAbstract(NEW_MCD_FLOP).file("beg", FLOP_BEG);
        FlopAbstract(NEW_MCD_FLOP).file("pad", FLOP_PAD);
        FlopAbstract(NEW_MCD_FLOP).file("ttl", FLOP_TTL);
        FlopAbstract(NEW_MCD_FLOP).file("tau", FLOP_TAU);
        FlopAbstract(NEW_MCD_FLOP).file("gem", FLOP_GEM);
        FlopAbstract(NEW_MCD_FLOP).rely(MCD_VOW);

        VowAbstract(MCD_VOW).file("flopper", NEW_MCD_FLOP);
        VatAbstract(MCD_VAT).rely(NEW_MCD_FLOP);
        // disable old Flop
        VatAbstract(MCD_VAT).deny(MCD_FLOP);

        CHAINLOG.setAddress("MCD_FLOP", NEW_MCD_FLOP);
    }
}