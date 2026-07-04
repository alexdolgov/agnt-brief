// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "@openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import "@openzeppelin-contracts-upgradeable/contracts/utils/cryptography/EIP712Upgradeable.sol";
import "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import "@openzeppelin-contracts-upgradeable/contracts/utils/NoncesUpgradeable.sol";

/**
 *  @notice The receipt that is minted when a user deposits through the depositor.
 */
contract HourglassERC20TBT is Initializable, ERC20Upgradeable, EIP712Upgradeable, NoncesUpgradeable {
    /// @notice The depositor controls minting/burning of the receipt (this contract)
    address public depositor;

    uint8 internal _decimals;

    // keccak256("TransferWithAuthorization(address from,address to,uint256 value,uint256 validAfter,uint256 validBefore,bytes32 nonce)")
    bytes32 internal constant _TRANSFER_WITH_AUTHORIZATION_TYPEHASH =
        0x7c7c6cdb67a18743f49ec6fa9b35f50d52ed05cbed4cc592e13b44501c1a2267;

    // keccak256("ReceiveWithAuthorization(address from,address to,uint256 value,uint256 validAfter,uint256 validBefore,bytes32 nonce)")
    bytes32 internal constant _RECEIVE_WITH_AUTHORIZATION_TYPEHASH =
        0xd099cc98ef71107a616c4f0f941f04c322d8e254fe26b3c6668db87aae413de8;

    // keccak256("CancelAuthorization(address authorizer,bytes32 nonce)")
    bytes32 internal constant _CANCEL_AUTHORIZATION_TYPEHASH =
        0x158b0a9edf7a828aad02f63cd515c68ef2f50ba807396f6d12842833a1597429;

    // keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)")
    bytes32 internal constant _PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9;

    /// @dev authorizer address => nonce => unused/used
    mapping(address => mapping(bytes32 => bool)) internal _authorizationStates;

    modifier onlyDepositor() {
        if (msg.sender != depositor) revert UnauthorizedCaller();
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(string calldata _name, string calldata _symbol, uint8 __decimals) external initializer {
        __ERC20_init(_name, _symbol);
        __EIP712_init(_name, "1");
        _decimals = __decimals;

        depositor = msg.sender;
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    function mint(address owner, uint256 amount) external onlyDepositor {
        _mint(owner, amount);
    }

    function burn(address owner, uint256 amount) external onlyDepositor {
        _burn(owner, amount);
    }

    ////////// Transfer with Authorization: EIP-3009 + EIP-1271 //////////

    /// @notice Execute a transfer with a signed authorization
    /// @param from          Payer's address (Authorizer)
    /// @param to            Payee's address
    /// @param value         Amount to be transferred
    /// @param validAfter    The time after which this is valid (unix time)
    /// @param validBefore   The time before which this is valid (unix time)
    /// @param nonce         Unique nonce
    /// @param signature     Signature byte array produced by an EOA wallet or a contract wallet
    function transferWithAuthorization(
        address from,
        address to,
        uint256 value,
        uint256 validAfter,
        uint256 validBefore,
        bytes32 nonce,
        bytes calldata signature
    ) external {
        _transferWithAuthorization(
            _TRANSFER_WITH_AUTHORIZATION_TYPEHASH, from, to, value, validAfter, validBefore, nonce, signature
        );
    }

    /// @notice Receive a transfer with a signed authorization from the payer
    /// @dev This has an additional check to ensure that the payee's address matches
    ///        the caller of this function to prevent front-running attacks. (See security
    ///        considerations)
    /// @param from          Payer's address (Authorizer)
    /// @param to            Payee's address
    /// @param value         Amount to be transferred
    /// @param validAfter    The time after which this is valid (unix time)
    /// @param validBefore   The time before which this is valid (unix time)
    /// @param nonce         Unique nonce
    /// @param signature     Signature byte array produced by an EOA wallet or a contract wallet
    function receiveWithAuthorization(
        address from,
        address to,
        uint256 value,
        uint256 validAfter,
        uint256 validBefore,
        bytes32 nonce,
        bytes calldata signature
    ) external {
        if (msg.sender != to) revert UnauthorizedCaller();

        _transferWithAuthorization(
            _RECEIVE_WITH_AUTHORIZATION_TYPEHASH, from, to, value, validAfter, validBefore, nonce, signature
        );
    }

    /// @notice Execute a transfer with a signed authorization
    /// @dev EOA wallet signatures should be packed in the order of r, s, v.
    /// @param from          Payer's address (Authorizer)
    /// @param to            Payee's address
    /// @param value         Amount to be transferred
    /// @param validAfter    The time after which this is valid (unix time)
    /// @param validBefore   The time before which this is valid (unix time)
    /// @param nonce         Unique nonce
    /// @param signature     Signature byte array produced by an EOA wallet or a contract wallet
    function _transferWithAuthorization(
        bytes32 typeHash,
        address from,
        address to,
        uint256 value,
        uint256 validAfter,
        uint256 validBefore,
        bytes32 nonce,
        bytes calldata signature
    ) internal {
        // Ensure the authorization is not expired, if these values are falsified, the signature check will fail
        if (block.timestamp <= validAfter) revert AuthorizationNotYetValid();
        if (block.timestamp >= validBefore) revert AuthorizationExpired();
        if (_authorizationStates[from][nonce]) revert AuthorizationUsedOrInsufficient();

        // Check for both ECDSA signature and and ERC-1271 signature
        if (
            !SignatureChecker.isValidSignatureNow(
                from,
                _hashTypedDataV4(keccak256(abi.encode(typeHash, from, to, value, validAfter, validBefore, nonce))),
                signature
            )
        ) revert UnauthorizedCaller();

        _authorizationStates[from][nonce] = true;
        emit AuthorizationUsed(from, nonce);

        _transfer(from, to, value);
    }

    /// @notice Attempt to cancel an authorization
    /// @param authorizer    Authorizer's address
    /// @param nonce         Nonce of the authorization
    /// @param signature     Signature
    function cancelAuthorization(address authorizer, bytes32 nonce, bytes calldata signature) external {
        if (_authorizationStates[authorizer][nonce]) revert CancelAuthorizationFailed();

        if (
            !SignatureChecker.isValidSignatureNow(
                authorizer,
                _hashTypedDataV4(keccak256(abi.encode(_CANCEL_AUTHORIZATION_TYPEHASH, authorizer, nonce))),
                signature
            )
        ) revert UnauthorizedCaller();

        _authorizationStates[authorizer][nonce] = true;
        emit AuthorizationCanceled(authorizer, nonce);
    }

    ////////// ERC20 Permit: EIP-2612 + EIP-1271 //////////

    /// @notice Approve the spender by signature
    /// @param owner     Token owner's address
    /// @param spender   Spender's address
    /// @param value     Amount to be approved
    /// @param deadline  Expiry timestamp
    /// @param signature Signature
    function permit(address owner, address spender, uint256 value, uint256 deadline, bytes calldata signature) public {
        _permit(owner, spender, value, deadline, signature);
        _approve(owner, spender, value);
    }

    /// @notice Performs a transfer with a valid signed permit message.
    /// @param from The owner of the funds
    /// @param spender The spender of the funds
    /// @param to The recipient of the funds
    /// @param value The amount of funds to transfer
    /// @param deadline The time at which to expire the signature
    /// @param signature The signature authorizing the spender to transfer funds
    function transferFromWithPermit(
        address from,
        address spender,
        address to,
        uint256 value,
        uint256 deadline,
        bytes calldata signature
    ) external {
        // bypass the `approve` step if as spender is the caller
        if (spender != msg.sender) revert UnauthorizedCaller();
        _permit(from, spender, value, deadline, signature);
        // utilize `_transfer` as there is no allowance to spend
        _transfer(from, to, value);
    }

    function _permit(address owner, address spender, uint256 value, uint256 deadline, bytes calldata signature)
        internal
    {
        if (block.timestamp > deadline) revert AuthorizationExpired();

        if (
            !SignatureChecker.isValidSignatureNow(
                owner,
                _hashTypedDataV4(
                    keccak256(abi.encode(_PERMIT_TYPEHASH, owner, spender, value, _useNonce(owner), deadline))
                ),
                signature
            )
        ) revert UnauthorizedCaller();
    }

    ////////// GETTERS //////////

    /// @notice Returns whether an Authorization nonce has been used
    function authorizationState(address authorizer, bytes32 nonce) external view returns (bool) {
        return _authorizationStates[authorizer][nonce];
    }

    /// @notice Returns the next available nonce for `owner`.
    function nonces(address owner) public view override(NoncesUpgradeable) returns (uint256) {
        return super.nonces(owner);
    }

    /// @notice Returns the EIP-712 Domain Separator
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32) {
        return _domainSeparatorV4();
    }

    /// @notice Exposes the EIP-712 signing hash
    /// @param structHash The hash of the un-typed data
    /// @return The EIP-712 typed hash of the data
    function hashTypedDataV4(bytes32 structHash) external view returns (bytes32) {
        return _hashTypedDataV4(structHash);
    }

    ////////// EVENTS //////////
    event AuthorizationUsed(address indexed authorizer, bytes32 indexed nonce);
    event AuthorizationCanceled(address indexed authorizer, bytes32 indexed nonce);

    ////////// ERRORS //////////
    error Matured();
    error InsufficientFunds();
    error PrematureRedeem();
    error InsufficientDeposit();
    error UnauthorizedCaller();

    // transfer authorization
    error AuthorizationExpired();
    error AuthorizationNotYetValid();
    error AuthorizationUsedOrInsufficient();
    error CancelAuthorizationFailed();
}
