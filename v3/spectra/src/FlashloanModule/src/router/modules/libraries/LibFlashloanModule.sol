pragma solidity ^0.8.20;

library LibFlashloanModule {
    // EIP-7201: keccak256(abi.encode(uint256(keccak256("spectra.module.flashloan")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 constant FLASHLOAN_STORAGE_POSITION =
        keccak256(abi.encode(uint256(keccak256("spectra.module.flashloan")) - 1)) & ~bytes32(uint256(0xff));

    /**
     * @dev Expected return value from borrowers onFlashLoan function.
     */
    bytes32 internal constant ON_FLASH_LOAN = keccak256("ERC3156FlashBorrower.onFlashLoan");

    struct FlashloanStorage {
        address flashloanLender;
    }

    function flashloanStorage() internal pure returns (FlashloanStorage storage fs) {
        bytes32 position = FLASHLOAN_STORAGE_POSITION;
        assembly {
            fs.slot := position
        }
    }
}
