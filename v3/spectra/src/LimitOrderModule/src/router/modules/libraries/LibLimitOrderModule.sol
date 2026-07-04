pragma solidity ^0.8.20;

library LibLimitOrderModule {
    // EIP-7201: keccak256(abi.encode(uint256(keccak256("spectra.storage.limit_order")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 constant LIMIT_ORDER_STORAGE_POSITION =
        keccak256(abi.encode(uint256(keccak256("spectra.storage.limit_order")) - 1)) & ~bytes32(uint256(0xff));

    event LimitOrderEngineChange(address indexed previousLimitOrderEngine, address indexed newLimitOrderEngine);

    struct LimitOrderEngine {
        // @dev: address of the limitOrderEngine
        address limitOrderEngine;
    }

    function limitOrderStorage() internal pure returns (LimitOrderEngine storage rs) {
        bytes32 position = LIMIT_ORDER_STORAGE_POSITION;
        assembly {
            rs.slot := position
        }
    }

    function setLimitOrderEngine(address _limitOrderEngine) internal {
        emit LimitOrderEngineChange(limitOrderStorage().limitOrderEngine, _limitOrderEngine);
        limitOrderStorage().limitOrderEngine = _limitOrderEngine;
    }

    function getLimitOrderEngine() internal view returns (address) {
        return limitOrderStorage().limitOrderEngine;
    }
}
