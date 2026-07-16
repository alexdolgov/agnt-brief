// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.25;

import { IERC20 } from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

import { Ethereum }  from "spark-address-registry/Ethereum.sol";
import { SparkLend } from "spark-address-registry/SparkLend.sol";

import { MainnetController } from "spark-alm-controller/src/MainnetController.sol";
import { IRateLimits }       from "spark-alm-controller/src/interfaces/IRateLimits.sol";
import { RateLimitHelpers }  from "spark-alm-controller/src/RateLimitHelpers.sol";

import { ICapAutomator } from "sparklend-cap-automator/interfaces/ICapAutomator.sol";

import { SLLHelpers, SparkPayloadEthereum } from "src/SparkPayloadEthereum.sol";

interface IEndpointV2 {
    function setConfig(address _oapp, address _lib, SetConfigParam[] calldata _params) external;
    function setSendLibrary(address _oapp, uint32 _eid, address _newLib) external;
}

struct SetConfigParam {
    uint32 eid;
    uint32 configType;
    bytes  config;
}

/**
 * @title  May 7, 2026 Spark Ethereum Proposal
 * @author Phoenix Labs
 * @notice SparkLend:
 *         - Update LBTC Parameters.
 *         - Update WBTC Parameters.
 *         Spark Liquidity Layer:
 *         - Update Spark Blue Chip USDT Morpho Vault.
 *         - Offboard Aave Core USDT.
 *         - Update Bridge DVN Configuration.
 *         Spark Treasury:
 *         - Monthly Grants for Spark Foundation and Spark Assets Foundation.
 *         - Transfer Excess USDS from SubDAO Proxy for SPK Buybacks.
 * Forum:  https://forum.skyeco.com/t/may-7-2026-proposed-changes-to-spark-for-upcoming-spell/27870
 * Vote:   https://snapshot.org/#/s:sparkfi.eth/proposal/0x7909f554a2f33155e234788382927f9af0d4dd5a4808349bc0ff57c2ab8b5ce0
 *         https://snapshot.org/#/s:sparkfi.eth/proposal/0xa72495fc832baced4d2285928e2ca6ff906d7ff88c4dceaaa2d8c4aa6bdfdbdc
 */
contract SparkEthereum_20260507 is SparkPayloadEthereum {

    // the formal properties are documented in the setter functions
    struct UlnConfig {
        uint64    confirmations;
        // we store the length of required DVNs and optional DVNs instead of using DVN.length directly to save gas
        uint8     requiredDVNCount; // 0 indicate DEFAULT, NIL_DVN_COUNT indicate NONE (to override the value of default)
        uint8     optionalDVNCount; // 0 indicate DEFAULT, NIL_DVN_COUNT indicate NONE (to override the value of default)
        uint8     optionalDVNThreshold; // (0, optionalDVNCount]
        address[] requiredDVNs; // no duplicates. sorted an an ascending order. allowed overlap with optionalDVNs
        address[] optionalDVNs; // no duplicates. sorted an an ascending order. allowed overlap with requiredDVNs
    }

    uint32 internal constant AVALANCHE_EID = 30106;

    address internal constant LAYERZERO_ENDPOINT_V2 = 0x1a44076050125825900e736c501f859c50fE728c;
    address internal constant SEND_ULN_302          = 0xbB2Ea70C9E858123480642Cf96acbcCE1372dCe1;

    address internal constant SUB_PROXY = 0x643de481D5eA4db0f1B2E5101796824D8854A65c;

    constructor() {
        PAYLOAD_AVALANCHE = 0x1566BFA55D95686a823751298533D42651183988;
    }

    function _postExecute() internal override {
        // 1. Update Bridge DVN Configuration

        IEndpointV2(LAYERZERO_ENDPOINT_V2).setSendLibrary({
            _oapp   : SUB_PROXY,
            _eid    : AVALANCHE_EID,
            _newLib : SEND_ULN_302
        });

        address[] memory requiredDVNs = new address[](0);

        address[] memory optionalDVNs = new address[](7);
        optionalDVNs[0] = 0x06559EE34D85a88317Bf0bfE307444116c631b67;  // P2P
        optionalDVNs[1] = 0x373a6E5c0C4E89E24819f00AA37ea370917AAfF4;  // Deutsche Telekom
        optionalDVNs[2] = 0x380275805876Ff19055EA900CDb2B46a94ecF20D;  // Horizen
        optionalDVNs[3] = 0x58249a2Ec05c1978bF21DF1f5eC1847e42455CF4;  // Luganodes
        optionalDVNs[4] = 0x589dEDbD617e0CBcB916A9223F4d1300c294236b;  // LayerZero Labs
        optionalDVNs[5] = 0xa4fE5A5B9A846458a70Cd0748228aED3bF65c2cd;  // Canary
        optionalDVNs[6] = 0xa59BA433ac34D2927232918Ef5B2eaAfcF130BA5;  // Nethermind

        UlnConfig memory ulnConfig = UlnConfig({
            confirmations        : 15,
            requiredDVNCount     : 255,
            optionalDVNCount     : 7,
            optionalDVNThreshold : 4,
            requiredDVNs         : requiredDVNs,
            optionalDVNs         : optionalDVNs
        });

        SetConfigParam[] memory configParams = new SetConfigParam[](1);
        configParams[0] = SetConfigParam({
            eid        : AVALANCHE_EID,
            configType : 2,
            config     : abi.encode(ulnConfig)
        });

        IEndpointV2(LAYERZERO_ENDPOINT_V2).setConfig({
            _oapp   : SUB_PROXY,
            _lib    : SEND_ULN_302,
            _params : configParams
        });
    }

}
