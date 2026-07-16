pragma solidity =0.7.6;
pragma abicoder v2;

import './ElkDexV3Pool.sol';

contract CalculateElkPairHash {
    function getInitHash() public pure returns(bytes32){
        bytes memory bytecode = type(ElkDexV3Pool).creationCode;
        return keccak256(abi.encodePacked(bytecode));
    }
}