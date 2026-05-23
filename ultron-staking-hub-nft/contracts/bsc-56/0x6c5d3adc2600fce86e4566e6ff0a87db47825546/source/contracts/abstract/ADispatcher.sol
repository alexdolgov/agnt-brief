//SPDX-License-Identifier: UNLICENSED

pragma solidity >0.8.0 <0.9.0;

abstract contract ADispatcher {
    function _getTarget() internal view virtual returns (address);

    function _fallback() internal {
        address target = _getTarget();

        assembly {
            calldatacopy(0x0, 0x0, calldatasize())
            let result := delegatecall(
                sub(gas(), 10000),
                target,
                0x0,
                calldatasize(),
                0,
                0
            )
            let retSz := returndatasize()
            returndatacopy(0, 0, retSz)
            switch result
            case 0 {
                revert(0, retSz)
            }
            default {
                return(0, retSz)
            }
        }
    }

    fallback() external payable {
        _fallback();
    }
}
