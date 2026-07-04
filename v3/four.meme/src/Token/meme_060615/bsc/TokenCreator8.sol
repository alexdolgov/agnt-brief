// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@4.9.6/access/Ownable.sol";
import "@openzeppelin/contracts@4.9.6/token/ERC20/utils/SafeERC20.sol";
import "./Token8.sol";
import "./ITokenCreator8.sol";

contract TokenCreator8 is ITokenCreator8, Ownable {
    constructor() {}

    function createToken(uint256 salt, InitParams memory params) public onlyOwner returns (address) {
        bytes memory initCode = type(Token).creationCode;

        address payable tokenAddr;
        assembly {
            tokenAddr := create2(0, add(initCode, 0x20), mload(initCode), salt)
            if iszero(extcodesize(tokenAddr)) { revert(0, 0) }
        }

        Token token = Token(tokenAddr);
        token.init(params);
        token.setMode(2);
        SafeERC20.safeTransfer(token, owner(), token.balanceOf(address(this)));
        token.setMode(1);
        token.transferOwnership(owner());
        return address(token);
    }
}