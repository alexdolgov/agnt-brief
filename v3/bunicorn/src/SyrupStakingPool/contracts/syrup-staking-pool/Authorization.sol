// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

contract Authorization is Initializable, AccessControlUpgradeable {

    bytes32 public constant ROLE_AUTHORIZE_CONTRACT = keccak256("ROLE_AUTHORIZE_CONTRACT");

    // testnet
    address public constant SIGNER_ADDRESS = address(0x757e258Ff9719d668E93514778573BbAe78FC6f3);

    function initialize () public initializer {
        __AccessControl_init_unchained();
        // set admin role
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    mapping (bytes => bool) private signaturesUsed;
    mapping (uint128 => bool) private requestsUsed;

    event SignatureRequestCompleted(uint128 indexed requestId);

    modifier sigWhenNotUsed(bytes memory sig) {
        _sigWhenNotUsed(sig);
        _;
    }

    function _sigWhenNotUsed(bytes memory sig) private view {
        require(!signaturesUsed[sig], "invalid sig");
    }

    modifier requestWhenNotUsed(uint128 requestId) {
        _requestWhenNotUsed(requestId);
        _;
    }

    function _requestWhenNotUsed(uint128 requestId) private view {
        require(!requestsUsed[requestId], "invalid request");
    }

    function authorize(
        bytes32 _message,
        uint128 _requestId,
        bytes memory _signature
    )
        external
        requestWhenNotUsed(_requestId)
        sigWhenNotUsed(_signature)
    {
        require(hasRole(ROLE_AUTHORIZE_CONTRACT, msg.sender), "no permission");

        _authorize(_message, _requestId, _signature);

        emit SignatureRequestCompleted(_requestId);
    }

    function _authorize(
        bytes32 _messageHash, uint128 _requestId, bytes memory _signature
    ) internal {
        bytes32 signedMessageHash = keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", _messageHash));

        address signer = ECDSA.recover(signedMessageHash, _signature);
        require(signer == SIGNER_ADDRESS, "invalid sig");

        signaturesUsed[_signature] = true;
        requestsUsed[_requestId] = true;
    }
}