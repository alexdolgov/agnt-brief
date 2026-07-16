// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.28;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract Fix_Module is AccessControl, ReentrancyGuard {
    using EnumerableSet for EnumerableSet.AddressSet;

    bytes32 internal constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");
    bytes32 internal constant TRADERV0_POSITION = bytes32(uint256(keccak256("TraderV0.storage")) - 1);

    struct TraderV0Storage {
        string name;
        address feeReceiver;
        address vault;
        address baseAsset;
        uint256 performanceFeeRate;
        uint256 managementFeeRate;
        uint256 custodyTime;
        uint256 custodiedAmount;
        uint256 totalFees;
        EnumerableSet.AddressSet allowedTokens;
        EnumerableSet.AddressSet allowedSpenders;
        bool initialized;
    }

    function getTraderV0Storage() internal pure returns (TraderV0Storage storage storageStruct) {
        bytes32 position = TRADERV0_POSITION;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            storageStruct.slot := position
        }
    }

    function fix1() external onlyRole(EXECUTOR_ROLE) nonReentrant {
        TraderV0Storage storage s = getTraderV0Storage();
        s.allowedSpenders.add(0xAa97D791Afc02AF30cf0B046172bb05b3c306517); // dWBERA
        s.allowedSpenders.add(0x7f2B60fDff1494A0E3e060532c9980d7fad0404B); // dHoney 
        s.allowedSpenders.add(0xbbB228B0D7D83F86e23a5eF3B1007D0100581613); // IR byUSD/Honey
        s.allowedSpenders.add(0xa57Cb177Beebc35A1A26A286951a306d9B752524); // IR ohm/honey
        s.allowedSpenders.add(0x16ed36cB22b298085d10b119030408C7BbfFC24E); // IR WETH/weETH
        s.allowedSpenders.add(0xd844aCf04d101E78de2D32813956Fa9104Ad48fc); // IR SolvBTC/xSolvBTC
        s.allowedSpenders.add(0x418D63947889e55C16280Cb7785cF84EF081F224); // IR WBERA/HONEY
        s.allowedSpenders.add(0x1419515d3703d8F2cc72Fa6A341685E4f8e7e8e1); // IR USDC.e / HONEY
        s.allowedSpenders.add(0x5910e91c8586bf99D14434e6aD5Ddb8e1F3aaC1b); // IR sNECT
        s.allowedSpenders.add(0x1C5879B75be9E817B1607AFb6f24F632eE6F8820); // IR rUSD/HONEY
        s.allowedSpenders.add(0x5969494e13E8FA51f8223152A86f14C02860AFD3); // IR WBTC/SOLVBTC
        s.allowedSpenders.add(0xdEc4d737680B8C3f3FaA507B2Af78Bf85d74A48e); // IR WETH/beraETH
        s.allowedSpenders.add(0xE1897e3eb930AAd6f9ea9eCF96EA846B5D23b0a6); // IR WBERA/iBGT
        s.allowedSpenders.add(0x33e53c508ecFBF6DB7B07AC3A36079fBfA919352); // IR WETH/WBERA
        s.allowedSpenders.add(0x55A53D205b16101a15BB8733B6789a771cBEa918); // IR WBTC/uniBTC
        s.allowedSpenders.add(0x5F044B3bf3fA10d51AB157998C70D07807BAF5C4); // IR WBERA/iBERA
        s.allowedSpenders.add(0x62E63D88cd6074D2c601e40dEeC439A63151E879); // IR dWBERA
        s.allowedSpenders.add(0xD3d50Fe6Dbbb452eD30c7736D70678E4E0D277C8); // IR WBERA/iBERA
        s.allowedSpenders.add(0xe2d8941dfb85435419D90397b09D18024ebeef2C); // IR WBERA/HONEY
        s.allowedSpenders.add(0x0dF14916796854d899576CBde69a35bAFb923c22); // IR WBERA/WETH
        s.allowedSpenders.add(0x8Ea5F10E039C718e9991108E795CdC154c3008A9); // IR WBTC/WBERA

        s.allowedTokens.add(0x18878Df23e2a36f81e820e4b47b4A40576D3159C); // OHM
        s.allowedTokens.add(0x688e72142674041f8f6Af4c808a4045cA1D6aC82); // byUSD
        s.allowedTokens.add(0xAa97D791Afc02AF30cf0B046172bb05b3c306517); // dWBERA
        s.allowedTokens.add(0x7f2B60fDff1494A0E3e060532c9980d7fad0404B); // dHoney
        s.allowedTokens.add(0x597877Ccf65be938BD214C4c46907669e3E62128); // sNECT
    }
}
