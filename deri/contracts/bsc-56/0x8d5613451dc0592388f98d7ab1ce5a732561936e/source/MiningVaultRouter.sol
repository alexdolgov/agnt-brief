// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import './IERC20.sol';
import './Ownable.sol';

contract MiningVaultRouter is Ownable {

    event Claim(address indexed account, uint256 amount, uint256 deadline, uint256 nonce);

    bytes32 public constant DOMAIN_TYPEHASH = keccak256('EIP712Domain(string name,uint256 chainId,address verifyingContract)');
    bytes32 public constant CLAIM_TYPEHASH = keccak256('Claim(address account,uint256 amount,uint256 deadline,uint256 nonce)');

    string  public constant name = 'MiningVaultRouter';
    uint256 public immutable chainId;
    address public immutable token;
    address public immutable miningVault;

    mapping (bytes32 => bool) public usedHash;

    constructor(address token_, address miningVault_) {
        _controller = msg.sender;
        uint256 _chainId;
        assembly {
            _chainId := chainid()
        }
        chainId = _chainId;
        token = token_;
        miningVault = miningVault_;
    }

    function claim(
        address account,
        uint256 amount,
        uint256 deadline,
        uint256 nonce,
        uint8 v1, bytes32 r1, bytes32 s1,
        uint8 v2, bytes32 r2, bytes32 s2
    ) public {
        bytes32 domainSeparator = keccak256(abi.encode(DOMAIN_TYPEHASH, keccak256(bytes(name)), chainId, address(this)));
        bytes32 structHash = keccak256(abi.encode(CLAIM_TYPEHASH, account, amount, deadline, nonce));
        require(!usedHash[structHash], 'MiningVaultRouter: replay');
        usedHash[structHash] = true;

        bytes32 digest = keccak256(abi.encodePacked('\x19\x01', domainSeparator, structHash));
        address signatory = ecrecover(digest, v1, r1, s1);
        require(signatory == _controller, 'MiningVaultRouter: unauthorized');

        IMiningVault(miningVault).claim(address(this), amount, deadline, nonce, v2, r2, s2);
        IERC20(token).transfer(account, amount);

        emit Claim(account, amount, deadline, nonce);
    }

}


interface IMiningVault {
    function claim(address account, uint256 amount, uint256 deadline, uint256 nonce, uint8 v, bytes32 r, bytes32 s) external;
}
