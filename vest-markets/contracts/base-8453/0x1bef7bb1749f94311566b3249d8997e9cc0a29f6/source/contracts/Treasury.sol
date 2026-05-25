// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {ITreasury} from "./interface/ITreasury.sol";
import {ISpokePool} from "./interface/ISpokePool.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {IUniversalSigValidator} from "./interface/IUniversalSigValidator.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

contract Treasury is
    Initializable,
    PausableUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    ITreasury
{
    using SafeERC20 for IERC20;

    bytes32 public constant BRIDGE_OPERATOR_ROLE = keccak256("BRIDGE_OPERATOR_ROLE");
    bytes32 public constant DOMAIN_TYPEHASH =
        keccak256("EIP712Domain(string name,string version,address verifyingContract)");
    bytes32 public constant DATA_TYPEHASH = keccak256("SignerProof(address approvedSigner,uint256 signerExpiry)");
    string public constant NAME = "VestRouterV2";
    bytes32 public constant NAME_HASH = keccak256(bytes(NAME));
    string public constant VERSION = "0.0.1";
    bytes32 public constant VERSION_HASH = keccak256(bytes(VERSION));

    ISpokePool public spokePool;
    address public verifyingAddress1CT;
    bytes32 public DOMAIN_SEPARATOR;

    mapping(address => bool) public supportedTokens;
    mapping(bytes32 => bool) private completedTransactions; // Transfer hash => status

    IUniversalSigValidator public universalSigValidator;

    /**
     * @dev Contract constructor
     * Note: The constructor is disabled due to upgradability.
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    receive() external payable {
        revert IncorrectSend();
    }

    /**
     * @dev See {ITreasury}.
     */
    function initialize(
        address _defaultAdmin,
        address _bridgeOperator,
        ISpokePool _spokePool,
        address _verifyingAddress1CT,
        address _universalSigValidator
    ) external initializer {
        if (
            _defaultAdmin == address(0) ||
            address(_spokePool) == address(0) ||
            _verifyingAddress1CT == address(0) ||
            _universalSigValidator == address(0)
        ) revert ZeroAddress();
        __AccessControl_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        spokePool = _spokePool;
        verifyingAddress1CT = _verifyingAddress1CT;
        universalSigValidator = IUniversalSigValidator(_universalSigValidator);
        DOMAIN_SEPARATOR = keccak256(abi.encode(DOMAIN_TYPEHASH, NAME_HASH, VERSION_HASH, _verifyingAddress1CT));
        _grantRole(BRIDGE_OPERATOR_ROLE, _bridgeOperator);
        _grantRole(DEFAULT_ADMIN_ROLE, _defaultAdmin);
    }

    function getCompletedTransactions(bytes32[] memory hashes) external view returns (bool[] memory) {
        bool[] memory statuses = new bool[](hashes.length);
        for (uint256 i; i < statuses.length; i++) {
            statuses[i] = completedTransactions[hashes[i]];
        }
        return statuses;
    }

    /**
     * @dev Pauses the contract.
     */
    function pause() external onlyRole(BRIDGE_OPERATOR_ROLE) {
        _pause();
    }

    /**
     * @dev Unpauses the contract.
     */
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    function setupSpokePool(ISpokePool _spokePool) external whenPaused onlyRole(DEFAULT_ADMIN_ROLE) {
        spokePool = _spokePool;
        emit SpokePoolSet(address(_spokePool));
    }

    function setUniversalSigValidator(
        IUniversalSigValidator _universalSigValidator
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        universalSigValidator = _universalSigValidator;
    }

    /**
     * @dev See {ITreasury}.
     */
    function addSupportedTokens(address[] calldata tokensAddresses) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 length = tokensAddresses.length;
        for (uint256 i; i < length; ++i) {
            supportedTokens[tokensAddresses[i]] = true;
        }
        emit SupportedTokensAdded(tokensAddresses);
    }

    /**
     * @dev See {ITreasury}.
     */
    function removeSupportedTokens(address[] calldata tokensAddresses) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 length = tokensAddresses.length;
        for (uint256 i; i < length; ++i) {
            supportedTokens[tokensAddresses[i]] = false;
        }
        emit SupportedTokensRemoved(tokensAddresses);
    }

    /**
     * @dev See {ITreasury}.
     */
    function deposit(address token, address to, uint256 amount) external whenNotPaused {
        if (!supportedTokens[token]) revert UnsupportedToken();
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        emit Deposited(token, msg.sender, to, amount);
    }

    /**
     * @dev See {ITreasury}.
     * @dev Not supported TRANSFER_SOL
     */
    function withdraw(
        bytes memory requestArgs,
        address signer,
        bytes memory signature,
        bytes memory signatureProof,
        bytes memory validatorSignature,
        bool isSolanaNative
    ) external whenNotPaused nonReentrant {
        if (!hasRole(BRIDGE_OPERATOR_ROLE, msg.sender)) {
            address validator = ECDSA.recover(
                MessageHashUtils.toEthSignedMessageHash(keccak256(requestArgs)),
                validatorSignature
            );
            if (!hasRole(BRIDGE_OPERATOR_ROLE, validator)) revert InvalidValidatorSignature();
        }
        (
            uint256 requestSigningTime,
            uint256 nonce,
            bool isDeposit,
            address account,
            address recipient,
            address token,
            uint256 amount,
            uint256 chainId
        ) = abi.decode(requestArgs, (uint256, uint256, bool, address, address, address, uint256, uint256));
        if (isSolanaNative) revert UnsupportedAccountType();
        if (!supportedTokens[token]) revert UnsupportedToken();
        bytes32 requestHash = keccak256(requestArgs);
        if (completedTransactions[requestHash]) revert AlreadyProcessed();
        completedTransactions[requestHash] = true;
        if (isDeposit) revert InvalidRequestType();
        if (chainId != block.chainid) revert InvalidChainId();
        if (account != msg.sender) {
            if (signer != account)
                _validateSignatureProof(account, signer, signatureProof, requestSigningTime, isSolanaNative);
            bool validSignature = _validateSignature(requestArgs, signer, signature);
            if (!validSignature) revert InvalidSignature();
        }
        IERC20(token).safeTransfer(recipient, amount);
        emit Withdrawed(account, nonce, token, amount, recipient, requestHash);
    }

    /**
     * @dev See {ITreasury}.
     */
    function processSending(
        IERC20 srcToken,
        BridgeParams memory bridgeParams
    ) external payable whenNotPaused nonReentrant onlyRole(BRIDGE_OPERATOR_ROLE) {
        if (!supportedTokens[address(srcToken)]) revert UnsupportedToken();
        srcToken.forceApprove(address(spokePool), bridgeParams.inputAmount);
        spokePool.depositV3(
            bridgeParams.depositor,
            bridgeParams.recipient,
            bridgeParams.inputToken,
            bridgeParams.outputToken,
            bridgeParams.inputAmount,
            bridgeParams.outputAmount,
            bridgeParams.destinationChainId,
            bridgeParams.exclusiveRelayer,
            bridgeParams.quoteTimestamp,
            bridgeParams.fillDeadline,
            bridgeParams.exclusivityDeadline,
            bridgeParams.message
        );
        emit Processed(
            bridgeParams.destinationChainId,
            bridgeParams.inputToken,
            bridgeParams.recipient,
            bridgeParams.inputAmount,
            bridgeParams.outputAmount
        );
    }

    function _validateSignature(bytes memory message, address signer, bytes memory signature) internal returns (bool) {
        return
            IUniversalSigValidator(universalSigValidator).isValidSig(
                signer,
                MessageHashUtils.toEthSignedMessageHash(keccak256(message)),
                signature
            );
    }

    function _parseProofArgs(
        bytes memory signatureProofArgs
    ) private pure returns (address approvedSigner, uint256 signerExpiry, bool allowWithdraw) {
        if (signatureProofArgs.length == 64) {
            (approvedSigner, signerExpiry) = abi.decode(signatureProofArgs, (address, uint256));
            allowWithdraw = true;
        } else if (signatureProofArgs.length == 96) {
            (approvedSigner, signerExpiry, allowWithdraw) = abi.decode(signatureProofArgs, (address, uint256, bool));
        } else {
            revert InvalidProofArgLength();
        }
    }

    function _validateSignatureProof(
        address account,
        address signer,
        bytes memory signatureProof,
        uint256 requestSigningTime,
        bool isSolanaNative
    ) private {
        (bytes memory proofSignature, bytes memory proofArgs) = abi.decode(signatureProof, (bytes, bytes));
        (address approvedSigner, uint256 signerExpiry, bool allowWithdraw) = _parseProofArgs(proofArgs);
        if (!allowWithdraw) revert NotAllowedWithdraw();
        if (approvedSigner != signer) revert InvalidSignerAccount();
        if (signerExpiry < requestSigningTime) revert ExpiredSignerAccount();
        if (!isSolanaNative) {
            bytes32 structHash = keccak256(abi.encode(DATA_TYPEHASH, approvedSigner, signerExpiry));
            bytes32 digest = MessageHashUtils.toTypedDataHash(DOMAIN_SEPARATOR, structHash);
            bool validProofSignature = IUniversalSigValidator(universalSigValidator).isValidSig(
                account,
                digest,
                proofSignature
            );
            if (!validProofSignature) revert InvalidProofSignature();
        }
    }
}
