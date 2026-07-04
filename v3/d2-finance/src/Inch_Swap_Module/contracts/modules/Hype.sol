// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "@solidstate/contracts/utils/ReentrancyGuard.sol";

interface IHype_Module {
    function hyper_sendOrder(uint32 asset, bool isBuy, uint64 limitPx, uint64 sz, bool reduceOnly, uint8 encodedTif, uint128 cloid) external;
    function hyper_cancelOrderOid(uint32 asset, uint64 oid) external;
    function hyper_cancelOrderCloid(uint32 asset, uint128 cloid) external;

    function hyper_depositSpot(address token, uint32 asset, uint64 _wei) external;
    function hyper_sendSpot(uint64 asset, uint64 _wei) external;
    function hyper_sendUsdClassTransfer(uint64 ntl, bool toPerp) external;
    function hyper_addApiWallet(address wallet, string calldata name) external;
}

contract Hype_Module is IHype_Module, AccessControl, ReentrancyGuard {
    bytes32 public constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");
    CoreWriter public immutable core = CoreWriter(0x3333333333333333333333333333333333333333);

    uint8 public constant SEND_ORDER_ACTION_ID = 1;
    uint8 public constant CANCEL_ORDER_OID_ACTION_ID = 10;
    uint8 public constant CANCEL_ORDER_CLOID_ACTION_ID = 11;
    uint8 public constant SEND_SPOT_ACTION_ID = 6;
    uint8 public constant SEND_USD_CLASS_TRANSFER_ACTION_ID = 7;
    uint8 public constant ADD_API_WALLET_ACTION_ID = 9;

    function hyper_sendOrder(
        uint32 asset,
        bool isBuy,
        uint64 limitPx,
        uint64 sz,
        bool reduceOnly,
        uint8 encodedTif,
        uint128 cloid
    ) external nonReentrant onlyRole(EXECUTOR_ROLE) {
        sendAction(SEND_ORDER_ACTION_ID, abi.encode(asset, isBuy, limitPx, sz, reduceOnly, encodedTif, cloid));
    }

    function hyper_cancelOrderOid(
        uint32 asset,
        uint64 oid
    ) external nonReentrant onlyRole(EXECUTOR_ROLE) {
        sendAction(CANCEL_ORDER_OID_ACTION_ID, abi.encode(asset, oid));
    }

    function hyper_cancelOrderCloid(
        uint32 asset,
        uint128 cloid
    ) external nonReentrant onlyRole(EXECUTOR_ROLE) {
        sendAction(CANCEL_ORDER_CLOID_ACTION_ID, abi.encode(asset, cloid));
    }

    function hyper_sendSpot(
        uint64 asset,
        uint64 _wei
    ) external nonReentrant onlyRole(EXECUTOR_ROLE) {
        sendAction(SEND_SPOT_ACTION_ID, abi.encode(assetAddress(asset), asset, _wei));
    }

    function hyper_depositSpot(
        address token,
        uint32 asset,
        uint64 _wei
    ) external nonReentrant onlyRole(EXECUTOR_ROLE) {
        if (asset == 150) {
            require(token == address(0), "token not zero");
            (bool ok,) = address(0x2222222222222222222222222222222222222222).call{value: _wei}("");
require(ok, "native transfer failed");
        } else {
            IERC20(token).transfer(assetAddress(uint64(asset)), _wei);
        }
    }

    function hyper_sendUsdClassTransfer(uint64 ntl, bool toPerp) external nonReentrant onlyRole(EXECUTOR_ROLE) {
        sendAction(SEND_USD_CLASS_TRANSFER_ACTION_ID, abi.encode(ntl, toPerp));
    }

    function hyper_addApiWallet(address wallet, string calldata name) external nonReentrant onlyRole(EXECUTOR_ROLE) {
        sendAction(ADD_API_WALLET_ACTION_ID, abi.encode(wallet, name));
    }

    function sendAction(uint8 actionIndex, bytes memory action) internal {
        core.sendRawAction(abi.encodePacked(bytes4(uint32(0x01000000) | uint32(actionIndex)), action));
    }

    function assetAddress(uint64 asset) internal pure returns (address) {
        if (asset == 150) {
            return 0x2222222222222222222222222222222222222222;
        }
        return address(uint160(0x2000000000000000000000000000000000000000) | asset);
    }
}

interface CoreWriter {
  function sendRawAction(bytes calldata) external;
}

interface IERC20 {
  function transfer(address, uint256) external;
}
