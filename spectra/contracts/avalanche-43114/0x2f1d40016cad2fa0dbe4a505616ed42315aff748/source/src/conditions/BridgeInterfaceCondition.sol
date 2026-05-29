// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {ICustomCondition} from "src/interfaces/ICustomCondition.sol";
import {IMetaVaultsRegistryV2} from "src/interfaces/IMetaVaultsRegistryV2.sol";
import {IRole} from "src/interfaces/IRole.sol";
import {SchemaTags} from "src/lib/SchemaTags.sol";

/// @title BridgeInterfaceCondition
/// @notice Zodiac Roles custom condition gating `IBridgeInterface.bridgeAsset(...)`.
///         One instance per `IBridgeInterface` wrapper. Authorizes the
///         `(tokenIn, dstChainId, tokenOut)` triple via registry lookup, then enforces
///         the curator's `dstSafe` equals the per-path stored recipient.
contract BridgeInterfaceCondition is ICustomCondition {
    IMetaVaultsRegistryV2 public immutable registry;
    /// @notice The wrapper this condition gates. Namespaces every registry key so
    ///         different wrappers can't share or overwrite each other's paths.
    address public immutable bridgeInterface;
    /// @notice Required `bytes4` prefix on stored values. Mismatch = fail-closed.
    bytes4 public immutable expectedSchemaTag;

    struct BridgePathConfig {
        bytes4 schemaTag;
        address expectedRecipient;
    }

    constructor(address _registry, address _bridgeInterface, bytes4 _expectedSchemaTag) {
        registry = IMetaVaultsRegistryV2(_registry);
        bridgeInterface = _bridgeInterface;
        expectedSchemaTag = _expectedSchemaTag;
    }

    /// @inheritdoc ICustomCondition
    function check(
        address to,
        uint256 /* value */,
        bytes calldata data,
        IRole.Operation /* operation */,
        uint256 /* location */,
        uint256 /* size */,
        bytes12 /* extra */
    ) external view override returns (bool success, bytes32 reason) {
        // Defense against a Roles policy scoping a different target with this condition.
        if (to != bridgeInterface) {
            return (false, bytes32("WRONG_TARGET"));
        }

        // `bridgeAsset(tokenIn, amount, dstChainId, dstSafe, tokenOut, params)`
        // — 5 static words after the 4-byte selector.
        if (data.length < 4 + 5 * 32) {
            return (false, bytes32("CALLDATA_TOO_SHORT"));
        }

        address tokenIn = address(uint160(uint256(bytes32(data[4:36]))));
        uint32 dstChainId = uint32(uint256(bytes32(data[68:100])));
        address dstSafe = address(uint160(uint256(bytes32(data[100:132]))));
        address tokenOut = address(uint160(uint256(bytes32(data[132:164]))));

        // msg.sender is the Roles modifier; its avatar is the vault Safe.
        address vault = IRole(msg.sender).avatar();
        if (vault == address(0)) {
            return (false, bytes32("INVALID_CALLER"));
        }

        bytes32 key = keccak256(abi.encode(bridgeInterface, tokenIn, dstChainId, tokenOut));

        bytes memory raw = registry.getBytes(vault, key);
        if (raw.length == 0) {
            return (false, bytes32("PATH_NOT_REGISTERED"));
        }
        // 64 = abi.encode((bytes4, address)): one slot each, padded.
        // Strict equality: abi.decode silently truncates oversized payloads.
        if (raw.length != 64) {
            return (false, bytes32("SCHEMA_TAG_MISMATCH"));
        }

        BridgePathConfig memory cfg = abi.decode(raw, (BridgePathConfig));
        if (cfg.schemaTag != expectedSchemaTag) {
            return (false, bytes32("SCHEMA_TAG_MISMATCH"));
        }
        if (cfg.expectedRecipient != dstSafe) {
            return (false, bytes32("RECIPIENT_MISMATCH"));
        }

        return (true, bytes32(0));
    }
}
