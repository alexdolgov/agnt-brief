// contracts/TokenDistributer.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

contract TokenDistributer is Initializable, ReentrancyGuardUpgradeable {
    // keccak256(
    //     "EIP712Domain(uint256 chainId,address verifyingContract)"
    // );
    bytes32 private constant DOMAIN_SEPARATOR_TYPEHASH =
        0x47e79534a245952e8b16893a336b85a3d9ea9fa8c573f3d803afb92a79469218;

    address public admin;
    bool public paused;
    mapping(address => bool) public isHandler;
    mapping(bytes32 => bool) public claimStatus;
    address public distributeToken;

    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event TokenDistribute(
        address indexed receiver,
        bytes32 indexed _ownerAddressDigest,
        uint tokenAmount
    );

    modifier onlyAdmin() {
        require(admin == msg.sender, "TokenDistributer: Only Admin");
        _;
    }

    modifier onlyHandler() {
        require(isHandler[msg.sender], "TokenDistributer: forbidden");
        _;
    }

    modifier whenNotPaused() {
        require(!paused, "TokenDistributer: paused");
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _distributeToken) public initializer {
        require(
            _distributeToken != address(0),
            "TokenDistributer: Invalid initialization parameters"
        );
        __ReentrancyGuard_init();
        admin = msg.sender;
        isHandler[msg.sender] = true;
        distributeToken = _distributeToken;
        paused = true;
    }

    function setAdmin(address _newAdmin) external onlyAdmin {
        require(_newAdmin != address(0), "TokenDistributer: invalid new admin");
        admin = _newAdmin;
    }

    /**
     * @dev Set handler
     */
    function setHandler(address _handler, bool _isActive) public onlyAdmin {
        require(_handler != address(0), "TokenDistributer: invalid handler");
        isHandler[_handler] = _isActive;
    }

    function pause() external onlyAdmin {
        paused = true;
        emit Paused(msg.sender);
    }

    function unPause() external onlyAdmin {
        paused = false;
        emit Unpaused(msg.sender);
    }

    function setDistributeToken(
        address _newDistributeToken
    ) external onlyAdmin {
        distributeToken = _newDistributeToken;
    }

    function claimToken(
        address _receiver,
        bytes32 _ownerAddressDigest,
        uint _tokenAmount,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) public whenNotPaused nonReentrant {
        require(
            !claimStatus[_ownerAddressDigest],
            "TokenDistributer: Already claimed"
        );

        address signer = _recoverSigner(
            _receiver,
            _ownerAddressDigest,
            _tokenAmount,
            _v,
            _r,
            _s
        );

        require(signer != address(0), "TokenDistributer: Invalid signature");

        // Make sure the signature is signed by the handler
        require(
            isHandler[signer],
            "TokenDistributer: Only handler can sign the signature"
        );

        claimStatus[_ownerAddressDigest] = true;

        require(_tokenAmount > 0, "TokenDistributer: Zero tokenAmount");

        bool success = IERC20(distributeToken).transfer(
            _receiver,
            _tokenAmount
        );
        require(success, "TokenDistributer: Failed to transfer token");

        emit TokenDistribute(_receiver, _ownerAddressDigest, _tokenAmount);
    }

    function batchClaimToken(
        address[] memory _receiverLs,
        bytes32[] memory _ownerAddressDigestLs,
        uint[] memory _tokenAmountLs,
        uint8[] memory _vLs,
        bytes32[] memory _rLs,
        bytes32[] memory _sLs
    ) external {
        require(
            _receiverLs.length == _ownerAddressDigestLs.length &&
                _ownerAddressDigestLs.length == _tokenAmountLs.length &&
                _tokenAmountLs.length == _vLs.length &&
                _vLs.length == _rLs.length &&
                _rLs.length == _sLs.length,
            "TokenDistributer: Invalid params"
        );

        for (uint i = 0; i < _receiverLs.length; ++i) {
            claimToken(
                _receiverLs[i],
                _ownerAddressDigestLs[i],
                _tokenAmountLs[i],
                _vLs[i],
                _rLs[i],
                _sLs[i]
            );
        }
    }

    /**
     * @dev Recover signer
     */
    function _recoverSigner(
        address _receiver,
        bytes32 _ownerAddressDigest,
        uint _tokenAmount,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) private view returns (address) {
        // Concat the message
        bytes memory dataContent = abi.encode(
            _receiver,
            _ownerAddressDigest,
            _tokenAmount
        );

        bytes32 dataHash = keccak256(
            abi.encodePacked(
                bytes1(0x19),
                bytes1(0x01),
                domainSeparator(),
                keccak256(dataContent)
            )
        );

        return
            ecrecover(
                keccak256(
                    abi.encodePacked(
                        "\x19Ethereum Signed Message:\n32",
                        dataHash
                    )
                ),
                _v,
                _r,
                _s
            );
    }

    /**
     * @dev Returns the domain separator for this contract, as defined in the EIP-712 standard.
     * @return bytes32 The domain separator hash.
     */
    function domainSeparator() public view returns (bytes32) {
        uint256 chainId;
        /* solhint-disable no-inline-assembly */
        /// @solidity memory-safe-assembly
        assembly {
            chainId := chainid()
        }

        /* solhint-enable no-inline-assembly */

        return keccak256(abi.encode(DOMAIN_SEPARATOR_TYPEHASH, chainId, this));
    }

    function withdrawToken(
        address _token,
        address _account,
        uint256 _amount
    ) external onlyAdmin {
        bool success = IERC20(_token).transfer(_account, _amount);
        require(success, "TokenDistributer: Failed to transfer token");
    }
}
