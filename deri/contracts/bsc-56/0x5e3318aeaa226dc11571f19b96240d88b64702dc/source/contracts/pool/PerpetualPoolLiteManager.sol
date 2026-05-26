// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import '../interface/IProtocolFeeCollector.sol';
import '../interface/IProtocolFeeBurner.sol';
import '../token/LTokenLite.sol';
import '../token/PTokenLite.sol';

contract PerpetualPoolLiteManager {

    event CreatePool(address creator, address pool);

    address public poolTemplate;
    address public protocolFeeCollector;
    uint256 public protocolFeeCutRatio;

    address[] public pools;

    constructor (address poolTemplate_, address protocolFeeCollector_, uint256 protocolFeeCutRatio_) {
        poolTemplate = poolTemplate_;
        protocolFeeCollector = protocolFeeCollector_;
        protocolFeeCutRatio = protocolFeeCutRatio_;
    }

    function getNumPools() external view returns (uint256) {
        return pools.length;
    }

    function createPool(uint256[7] memory parameters, address bTokenAddress, address pairedTokenAddress) external {
        address burner = IProtocolFeeCollector(protocolFeeCollector).getBurner();
        require(IProtocolFeeBurner(burner).isValidTokenPair(bTokenAddress, pairedTokenAddress), 'PLM: invalid bToken pair');

        address pool = _clone(poolTemplate);
        LTokenLite lToken = new LTokenLite('Deri Liquidity Token', 'DLT');
        PTokenLite pToken = new PTokenLite('Deri Position Token', 'DPT');
        lToken.setPool(pool);
        pToken.setPool(pool);

        parameters[6] = protocolFeeCutRatio;

        address[5] memory addresses;
        addresses[0] = bTokenAddress;
        addresses[1] = address(lToken);
        addresses[2] = address(pToken);
        addresses[4] = protocolFeeCollector;

        IPerpetualPoolLite(pool).initialize(msg.sender, parameters, addresses);
        pools.push(pool);

        emit CreatePool(msg.sender, pool);
    }

    function _clone(address source) internal returns (address target) {
        bytes20 sourceBytes = bytes20(source);
        assembly {
            let c := mload(0x40)
            mstore(c, 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000)
            mstore(add(c, 0x14), sourceBytes)
            mstore(add(c, 0x28), 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000)
            target := create(0, c, 0x37)
        }
    }

}

interface IPerpetualPoolLite {
    function initialize(address controller_, uint256[7] memory parameters, address[5] memory addresses) external;
}
