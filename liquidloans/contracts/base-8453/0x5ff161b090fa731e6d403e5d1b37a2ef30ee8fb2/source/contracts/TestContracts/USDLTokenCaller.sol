// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../Interfaces/IUSDLToken.sol";

contract USDLTokenCaller {
    IUSDLToken USDL;

    function setUSDL(IUSDLToken _USDL) external {
        USDL = _USDL;
    }

    function usdlMint(address _account, uint _amount) external {
        USDL.mint(_account, _amount);
    }

    function usdlBurn(address _account, uint _amount) external {
        USDL.burn(_account, _amount);
    }

    function usdlSendToPool(address _sender,  address _poolAddress, uint256 _amount) external {
        USDL.sendToPool(_sender, _poolAddress, _amount);
    }

    function usdlReturnFromPool(address _poolAddress, address _receiver, uint256 _amount ) external {
        USDL.returnFromPool(_poolAddress, _receiver, _amount);
    }
}
// 2025 Liquid Loans