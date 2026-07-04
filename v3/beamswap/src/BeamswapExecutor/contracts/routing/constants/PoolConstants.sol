pragma solidity ^0.8.0;

contract PoolConstants {
    bytes32 private constant BEAM_V3_INIT_HASH =
        0x56b18efe15e1c2147cb76980b82af9abdb11804d1023cea47ed03a9482bd30d3;

    address private constant BEAM_V3_FACTORY =
        0x99bf59Eb23C1B3594764662Ad052f5C42Bfd681e;

    uint160 internal constant MIN_SQRT_RATIO = 4295128739;
    uint160 internal constant MAX_SQRT_RATIO =
        1461446703485210103287273052203988822378723970342;

    function getPoolInitHashFromId(
        uint256 id
    ) internal pure returns (bytes32 initHash) {
        if (id == 0) {
            return BEAM_V3_INIT_HASH;
        }
        revert("HOW DID I GET HERE");
    }

    function getPoolFactoryFromId(
        uint256 id
    ) internal pure returns (address poolFactory) {
        if (id == 0) {
            return BEAM_V3_FACTORY;
        }
        revert("THIS IS NOT MY BEAUTIFUL HOUSE");
    }
}
