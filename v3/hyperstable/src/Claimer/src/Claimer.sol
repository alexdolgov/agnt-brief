// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ECDSA} from "solady/utils/ECDSA.sol";
import {ERC20} from "solady/tokens/ERC20.sol";

import {console} from "forge-std/console.sol";

contract Claimer {
    address public immutable SIGNER;
    ERC20 public TOKEN;

    mapping(address => uint256) public lastNonce;
    mapping(address => uint256) public claimed;

    event Claimed(address indexed from, address indexed to, uint256 nonce, uint256 amount);

    constructor(address _signerAddress, address _tokenAddress) {
        SIGNER = _signerAddress;
        TOKEN = ERC20(_tokenAddress);
    }

    function claim(address _from, address _to, uint256 _nonce, uint256 _amount, uint8 _v, bytes32 _r, bytes32 _s)
        external
    {
        uint256 currentNonce = lastNonce[_to];

        if (currentNonce >= _nonce) {
            revert("Nonce already used");
        }

        uint256 alreadyClaimed = claimed[_to];

        if (alreadyClaimed >= _amount) {
            revert("No more to claim");
        }

        bytes32 payload = keccak256(abi.encode(_from, _to, _nonce, _amount));

        bytes32 digest = ECDSA.toEthSignedMessageHash(payload);

        address recoveredAddress = ECDSA.recover(digest, _v, _r, _s);

        if (recoveredAddress != SIGNER) {
            revert("INVALID SIGNATURE");
        }

        lastNonce[_to] = _nonce;
        claimed[_to] = _amount;

        uint256 toTransfer = _amount - alreadyClaimed;

        TOKEN.transfer(_to, toTransfer);

        emit Claimed(_from, _to, _nonce, toTransfer);
    }
}
