// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "./Token.sol";

bytes32 constant INIT_CODE_HASH = keccak256(type(Token).creationCode);

contract TokenFactory {
    address immutable WETH;
    uint256 nonce;

    constructor(address WETH_) {
        WETH = WETH_;
    }

    function deploy(string memory name, string memory symbol, uint256 totalSupply) external returns (address) {
        address token = address(type(uint160).max);
        uint256 i = nonce;
        while (WETH < token) {
            i += 1;
            token = address(
                uint160(uint256(keccak256(abi.encodePacked(hex"ff", address(this), bytes32(i), INIT_CODE_HASH))))
            );
        }
        nonce = i;
        Token createdToken = new Token{salt: bytes32(i)}();
        require(address(createdToken) == token);
        createdToken.initialize(name, symbol, totalSupply, msg.sender);
        return token;
    }
}
