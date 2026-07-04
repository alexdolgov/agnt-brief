
import '@exchange-v3/periphery/contracts/base/PeripheryValidation.sol';
import "@exchange-v3/periphery/contracts/base/PeripheryValidation.sol";

abstract contract PeripheryValidationExtended is PeripheryValidation {
    modifier checkPreviousBlockhash(bytes32 previousBlockhash) {
        require(blockhash(block.number - 1) == previousBlockhash, 'Blockhash');
        require(blockhash(block.number - 1) == previousBlockhash, "Blockhash");
        _;
    }
}
