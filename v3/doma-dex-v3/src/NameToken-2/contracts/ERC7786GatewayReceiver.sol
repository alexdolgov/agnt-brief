// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { IERC7786Receiver } from "./interfaces/IERC7786.sol";
import { ChainNonces } from "./utils/ChainNonces.sol";

import { GatewayUtils } from "./utils/GatewayUtils.sol";
import { Errors } from "@openzeppelin/contracts/utils/Errors.sol";

abstract contract ERC7786GatewayReceiver is ChainNonces, IERC7786Receiver {
    event CallFailed(bytes returnData);
    error CallFailedWithoutError();

    error InvalidChainNonce(
        string chainId,
        uint256 key,
        uint256 expectedNonce,
        uint256 receivedNonce
    );
    event InvalidChainNonceEvent(
        string indexed chainId,
        uint256 indexed key,
        uint64 expectedNonce,
        uint64 receivedNonce
    );

    /// @custom:storage-location erc7201:doma.storage.ERC7786GatewayReceiver
    struct GatewayReceiverStorage {
        /**
         * @dev Whether to revert for nonce mismatches on incoming cross-chain messages.
         * Used to temporarily disable nonce checks in case of cross-chain desyncs.
         * Used for non-mainnet deployments only.
         */
        bool disableNonceCheckEnforcement;
    }

    bytes32 private constant _STORAGE_LOCATION =
        keccak256(abi.encode(uint256(keccak256("doma.storage.ERC7786GatewayReceiver")) - 1)) &
            ~bytes32(uint256(0xff));

    function _getStorage() private pure returns (GatewayReceiverStorage storage $) {
        bytes32 slot = _STORAGE_LOCATION;

        // solhint-disable-next-line no-inline-assembly
        assembly {
            $.slot := slot
        }
    }

    function executeMessage(
        string calldata sourceChain,
        string calldata,
        bytes calldata payload,
        bytes[] calldata attributes
    ) external payable override returns (bytes4) {
        if (msg.value > 0) {
            revert GatewayUtils.PayableCallsUnsupported();
        }

        uint256 key;
        uint64 nonce;
        // Verify access control
        _checkCrossChainSender(msg.sender);

        for (uint256 i = 0; i < attributes.length; i++) {
            bytes4 selector = attributes[i].length < 0x04 ? bytes4(0) : bytes4(attributes[i][0:4]);

            if (selector == GatewayUtils.NONCE_KEY_ATTRIBUTE) {
                key = uint256(bytes32(attributes[i][4:]));
            }

            if (selector == GatewayUtils.NONCE_ATTRIBUTE) {
                nonce = uint64(uint256(bytes32(attributes[i][4:])));
            }
        }

        _useCheckedNonce(sourceChain, key, nonce);

        /* solhint-disable-next-line avoid-low-level-calls */
        (bool success, bytes memory returnData) = address(this).call(payload);

        if (!success) {
            // Check if the call failed without a reason
            // This either means call was out of gas, or something horrible happened inside
            // Reverting when there's no gas helps with eth_estimateGas, which undershoots otherwise
            // In general, such errors are recoverable, so cross-chain messaging can be blocked until it's fixed
            // Additionally, Errors.FailedCall from OpenZeppelin is also considered a failed call without an error
            // This could happen if GatewaySource calls a function on the same chain that reverts without a reason
            if (
                returnData.length == 0 ||
                (returnData.length == 4 && bytes4(returnData) == Errors.FailedCall.selector)
            ) {
                revert CallFailedWithoutError();
            }

            emit CallFailed(returnData);
        }

        return IERC7786Receiver.executeMessage.selector;
    }

    function areNonceChecksDisabled() external view returns (bool) {
        return _getStorage().disableNonceCheckEnforcement;
    }

    function _useCheckedNonce(string calldata chainId, uint256 key, uint64 nonce) internal virtual {
        uint256 current = _useNonce(chainId, key);
        if (nonce != current) {
            if (_getStorage().disableNonceCheckEnforcement) {
                emit InvalidChainNonceEvent(chainId, key, uint64(current), nonce);
            } else {
                revert InvalidChainNonce(chainId, key, current, nonce);
            }
        }
    }

    function _setNonceEnforcementDisabled(bool disabled) internal {
        GatewayReceiverStorage storage $ = _getStorage();
        $.disableNonceCheckEnforcement = disabled;
    }

    function _checkCrossChainSender(address sender) internal view virtual;
}
