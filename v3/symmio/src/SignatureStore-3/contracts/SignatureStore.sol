// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

contract SignatureStore is AccessControlEnumerable {
    using ECDSA for bytes32;

    bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");

    uint256 public currentVersion;

    mapping(uint256 => string) public versionToMessage;
    mapping(uint256 => mapping(address => bytes)) public userSignatures;

    event MessageSet(uint256 version, string message);
    event SignatureAdded(uint256 version, address user, bytes signature);
    event CurrentVersionUpdated(uint256 newVersion);

    constructor() {
        _setupRole(SETTER_ROLE, msg.sender);
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    modifier onlySetter() {
        require(
            hasRole(SETTER_ROLE, msg.sender),
            "SignatureStore: Must have SETTER_ROLE"
        );
        _;
    }

    function setCurrentVersion(uint256 _version) external onlySetter {
        currentVersion = _version;
        emit CurrentVersionUpdated(_version);
    }

    function setMessage(
        uint256 version,
        string memory message
    ) external onlySetter {
        require(
            bytes(versionToMessage[version]).length == 0,
            "SignatureStore: Message for this version already set"
        );
        versionToMessage[version] = message;
        emit MessageSet(version, message);
    }

    function _storeSignature(uint256 version, bytes memory signature) internal {
        require(
            bytes(versionToMessage[version]).length != 0,
            "SignatureStore: No message set for this version"
        );
        require(
            userSignatures[version][msg.sender].length == 0,
            "SignatureStore: Signature for this version already set"
        );

        userSignatures[version][msg.sender] = signature;
        emit SignatureAdded(version, msg.sender, signature);
    }

    function storeSignature(uint256 version, bytes memory signature) external {
        _storeSignature(version, signature);
    }

    function storeSignatureForCurrentVersion(bytes memory signature) external {
        _storeSignature(currentVersion, signature);
    }

    function getSignature(
        uint256 version,
        address user
    ) external view returns (bytes memory) {
        return userSignatures[version][user];
    }

    function getCurrentVersionMessage() external view returns (string memory) {
        return versionToMessage[currentVersion];
    }

    function hasSignature(
        uint256 version,
        address user
    ) external view returns (bool) {
        return userSignatures[version][user].length > 0;
    }

    function hasCurrentVersionSignature(
        address user
    ) external view returns (bool) {
        return userSignatures[currentVersion][user].length > 0;
    }
}
