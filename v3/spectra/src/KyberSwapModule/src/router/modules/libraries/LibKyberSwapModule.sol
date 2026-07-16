pragma solidity ^0.8.20;

library LibKyberSwapModule {
    event KyberRouterChange(address indexed previousKyberRouter, address indexed newKyberRouter);

    // EIP-7201: keccak256(abi.encode(uint256(keccak256("spectra.module.kyberswap")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 constant KYBERSWAP_STORAGE_POSITION =
        keccak256(abi.encode(uint256(keccak256("spectra.module.kyberswap")) - 1)) & ~bytes32(uint256(0xff));

    struct KyberSwapModuleStorage {
        // @dev: address of the kyberSwap router
        address kyberRouter;
    }

    function kyberswapStorage() internal pure returns (KyberSwapModuleStorage storage kms) {
        bytes32 position = KYBERSWAP_STORAGE_POSITION;
        assembly {
            kms.slot := position
        }
    }

    function setKyberRouter(address _kyberRouter) internal {
        emit KyberRouterChange(kyberswapStorage().kyberRouter, _kyberRouter);
        kyberswapStorage().kyberRouter = _kyberRouter;
    }
}
