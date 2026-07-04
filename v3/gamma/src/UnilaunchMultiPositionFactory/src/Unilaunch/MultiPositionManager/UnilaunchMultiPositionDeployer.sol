// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {UnilaunchMultiPositionManager} from "./UnilaunchMultiPositionManager.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";

/// @title UnilaunchMultiPositionDeployer
/// @notice Deploys UnilaunchMultiPositionManager contracts with CREATE2
contract UnilaunchMultiPositionDeployer {
    address public immutable authorizedFactory;

    error UnauthorizedCaller();

    constructor(address _authorizedFactory) {
        authorizedFactory = _authorizedFactory;
    }

    function deploy(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        address owner,
        address factory,
        string memory name,
        string memory symbol,
        uint16 fee,
        bytes32 salt
    ) external returns (address) {
        if (msg.sender != authorizedFactory) revert UnauthorizedCaller();
        return address(new UnilaunchMultiPositionManager{salt: salt}(poolManager, poolKey, owner, factory, name, symbol, fee));
    }

    function computeAddress(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        address owner,
        address factory,
        string memory name,
        string memory symbol,
        uint16 fee,
        bytes32 salt
    ) external view returns (address predicted) {
        bytes32 hash = keccak256(
            abi.encodePacked(
                type(UnilaunchMultiPositionManager).creationCode,
                abi.encode(poolManager, poolKey, owner, factory, name, symbol, fee)
            )
        );

        assembly {
            let ptr := mload(0x40)
            mstore(ptr, 0xff00000000000000000000000000000000000000000000000000000000000000)
            mstore(add(ptr, 0x01), shl(96, address()))
            mstore(add(ptr, 0x15), salt)
            mstore(add(ptr, 0x35), hash)
            predicted := keccak256(ptr, 0x55)
        }
    }
}
