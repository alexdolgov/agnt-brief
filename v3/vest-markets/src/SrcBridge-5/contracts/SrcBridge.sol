// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IERC20Upgradeable as IERC20, SafeERC20Upgradeable as SafeERC20} from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {SignatureCheckerUpgradeable as SignatureChecker} from "@openzeppelin/contracts-upgradeable/utils/cryptography/SignatureCheckerUpgradeable.sol";
import {ISrcBridge} from "./interfaces/ISrcBridge.sol";
import {ISpokePool} from "./interfaces/ISpokePool.sol";
import {ECDSAUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol";
import {ITokenMessenger} from "./interfaces/ITokenMessenger.sol";

contract SrcBridge is Initializable, PausableUpgradeable, AccessControlUpgradeable, ISrcBridge {
    using SafeERC20 for IERC20;

    bytes32 public constant BRIDGE_OPERATOR_ROLE = keccak256("BRIDGE_OPERATOR_ROLE");

    bytes32 public constant DOMAIN_TYPEHASH =
        keccak256("EIP712Domain(string name,string version,address verifyingContract)");
    bytes32 public constant DATA_TYPEHASH = keccak256("SignerProof(address approvedSigner,uint256 signerExpiry)");
    string public constant NAME = "VestRouterV2";
    bytes32 public constant NAME_HASH = keccak256(bytes(NAME));
    string public constant VERSION = "0.0.1";
    bytes32 public constant VERSION_HASH = keccak256(bytes(VERSION));
    uint256 public constant SOL_CHAIN_ID = 0;

    uint256 private constant _RG_NOT_ENTERED = 1;
    uint256 private constant _RG_ENTERED = 2;

    address public exchange;
    ISpokePool public spokePool;

    mapping(address => bool) private supportedTokens;
    mapping(bytes32 => bool) private completedTransactions; // Transfer hash => status

    address public router;
    bytes32 public DOMAIN_SEPARATOR;

    address public CCTPTokenMessenger;
    bool public allowExternalWithdraw;

    uint256 private _rgStatus;

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
     * @dev Initializes the contract with initial parameters
     * @param _defaultAdmin The default admin address
     */
    function initialize(
        address _defaultAdmin,
        address _bridgeOperator,
        ISpokePool _spokePool,
        address _router,
        address _CCTPTokenMessenger,
        bool _allowExternalWithdraw
    ) external initializer {
        if (_defaultAdmin == address(0) || address(_spokePool) == address(0) || _router == address(0))
            revert ZeroAddress();
        __AccessControl_init();
        __Pausable_init();
        spokePool = _spokePool;
        router = _router;
        allowExternalWithdraw = _allowExternalWithdraw;
        DOMAIN_SEPARATOR = keccak256(abi.encode(DOMAIN_TYPEHASH, NAME_HASH, VERSION_HASH, _router));
        CCTPTokenMessenger = _CCTPTokenMessenger;
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
     * @dev Checks the supported status of an array of token addresses.
     * @param tokenAddresses An array of token addresses to check.
     * @return statuses An array of boolean values indicating whether each token address is supported.
     */
    function checkSupportedTokensStatuses(address[] calldata tokenAddresses) external view returns (bool[] memory) {
        uint256 length = tokenAddresses.length;
        bool[] memory statuses = new bool[](length);
        for (uint i = 0; i < length; i++) {
            statuses[i] = supportedTokens[tokenAddresses[i]];
        }
        return statuses;
    }

    /**
     * @dev Deposits tokens into the Treasury.
     * @param token The address of the token to deposit.
     * @param to The address receiving the deposited tokens.
     * @param amount The amount of tokens to deposit.
     */
    function deposit(address token, address to, uint256 amount) external whenNotPaused {
        if (!supportedTokens[token]) revert UnsupportedToken();
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        emit Deposited(token, msg.sender, to, amount);
    }

    /**
     * @dev Sends tokens to a specified chain
     * @param srcToken The token to be sent
     * @param bridgeParams Across deposit parameters
     */
    function processSending(
        IERC20 srcToken,
        BridgeParams memory bridgeParams
    ) public whenNotPaused nonReentrant onlyRole(BRIDGE_OPERATOR_ROLE) {
        if (!supportedTokens[address(srcToken)]) revert UnsupportedToken();
        srcToken.approve(address(spokePool), bridgeParams.inputAmount);
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

    function withdraw(
        bytes memory requestArgs,
        address signer,
        bytes memory signature,
        bytes memory signatureProof,
        bytes memory validatorSignature,
        bool isSolanaNative
    ) external {
        if (isSolanaNative) revert UnsupportedAccountType();
        _withdraw(requestArgs, signer, signature, signatureProof, validatorSignature, isSolanaNative, false);
    }

    function withdrawSolana(
        bytes memory requestArgs,
        address signer,
        bytes memory signature,
        bytes memory signatureProof,
        bytes memory validatorSignature,
        bool isSolanaNative
    ) external {
        if (!isSolanaNative) revert UnsupportedAccountType();
        _withdraw(requestArgs, signer, signature, signatureProof, validatorSignature, isSolanaNative, true);
    }

    /**
     * @dev Adds support for the specified tokens addresses.
     * @param tokensAddresses An array of tokens addresses to add support for
     */
    function addSupportedTokens(address[] calldata tokensAddresses) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 length = tokensAddresses.length;
        for (uint256 i; i < length; ++i) {
            supportedTokens[tokensAddresses[i]] = true;
        }
        emit SupportedTokensAdded(tokensAddresses);
    }

    /**
     * @dev Removes support for the specified tokens addresses.
     * @param tokensAddresses An array of tokens addresses to remove support for
     */
    function removeSupportedTokens(
        address[] calldata tokensAddresses
    ) external whenPaused onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 length = tokensAddresses.length;
        for (uint256 i; i < length; ++i) {
            supportedTokens[tokensAddresses[i]] = false;
        }
        emit SupportedTokensRemoved(tokensAddresses);
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

    function setAllowExternalWithdraw(bool _allowExternalWithdraw) external onlyRole(DEFAULT_ADMIN_ROLE) {
        allowExternalWithdraw = _allowExternalWithdraw;
        emit AllowExternalWithdrawSet(_allowExternalWithdraw);
    }

    function setRouterAndDomainSeparator(address _router) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_router == address(0)) revert ZeroAddress();
        router = _router;
        DOMAIN_SEPARATOR = keccak256(abi.encode(DOMAIN_TYPEHASH, NAME_HASH, VERSION_HASH, _router));
    }

    function setCCTPTokenMessenger(address _CCTPTokenMessenger) external onlyRole(DEFAULT_ADMIN_ROLE) {
        CCTPTokenMessenger = _CCTPTokenMessenger;
    }

    function _validateSignature(
        bytes memory message,
        address signer,
        bytes memory signature
    ) internal view returns (bool) {
        return
            SignatureChecker.isValidSignatureNow(
                signer,
                ECDSAUpgradeable.toEthSignedMessageHash(keccak256(message)),
                signature
            );
    }

    function _validateSignatureProof(
        address account,
        address signer,
        bytes memory signatureProof,
        uint256 requestSigningTime,
        bool isSolanaNative
    ) private view {
        (bytes memory proofSignature, bytes memory proofArgs) = abi.decode(signatureProof, (bytes, bytes));
        (address approvedSigner, uint256 signerExpiry, bool allowWithdraw) = _parseProofArgs(proofArgs);
        if (!allowWithdraw) revert NotAllowedWithdraw();
        if (approvedSigner != signer) revert InvalidSignerAccount();
        if (signerExpiry < requestSigningTime) revert ExpiredSignerAccount();
        if (!isSolanaNative) {
            bytes32 structHash = keccak256(abi.encode(DATA_TYPEHASH, approvedSigner, signerExpiry));
            bytes32 digest = ECDSAUpgradeable.toTypedDataHash(DOMAIN_SEPARATOR, structHash);
            bool validProofSignature = SignatureChecker.isValidSignatureNow(account, digest, proofSignature);
            if (!validProofSignature) revert InvalidProofSignature();
        }
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

    function _withdraw(
        bytes memory requestArgs,
        address signer,
        bytes memory signature,
        bytes memory signatureProof,
        bytes memory validatorSignature,
        bool isSolanaNative,
        bool isSolanaTarget
    ) private whenNotPaused nonReentrant {
        if (!hasRole(BRIDGE_OPERATOR_ROLE, msg.sender)) {
            if (isSolanaNative) revert UnsupportedAccountType();
            address validator = ECDSAUpgradeable.recover(
                ECDSAUpgradeable.toEthSignedMessageHash(keccak256(requestArgs)),
                validatorSignature
            );
            if (!hasRole(BRIDGE_OPERATOR_ROLE, validator)) revert InvalidValidatorSignature();
        }
        uint256 requestSigningTime;
        uint256 nonce;
        bool isDeposit;
        address account;
        address recipient;
        bytes32 recipientSol;
        address token;
        uint256 amount;
        uint256 chainId;
        if (isSolanaTarget) {
            (requestSigningTime, nonce, isDeposit, account, recipientSol, token, amount, chainId) = abi.decode(
                requestArgs,
                (uint256, uint256, bool, address, bytes32, address, uint256, uint256)
            );
            if (chainId != SOL_CHAIN_ID) revert InvalidChainId();
        } else {
            (requestSigningTime, nonce, isDeposit, account, recipient, token, amount, chainId) = abi.decode(
                requestArgs,
                (uint256, uint256, bool, address, address, address, uint256, uint256)
            );
            if (chainId != block.chainid) revert InvalidChainId();
        }
        if (!allowExternalWithdraw && account != recipient) revert AccountAndRecipientMismatch();
        if (!supportedTokens[token]) revert UnsupportedToken();
        bytes32 requestHash = keccak256(requestArgs);
        if (completedTransactions[requestHash]) revert AlreadyProcessed();
        completedTransactions[requestHash] = true;
        if (isDeposit) revert InvalidRequestType();
        if (account != msg.sender) {
            if (signer != account) {
                _validateSignatureProof(account, signer, signatureProof, requestSigningTime, isSolanaNative);
            }
            bool validSignature = _validateSignature(requestArgs, signer, signature);
            if (!validSignature) revert InvalidSignature();
        }
        if (isSolanaTarget) {
            IERC20(token).approve(CCTPTokenMessenger, amount);
            ITokenMessenger(CCTPTokenMessenger).depositForBurn(amount, 5, recipientSol, token);
            emit WithdrawedSolana(account, nonce, token, amount, recipientSol, requestHash);
        } else {
            IERC20(token).safeTransfer(address(recipient), amount);
            emit Withdrawed(account, nonce, token, amount, recipient, requestHash);
        }
    }

    modifier nonReentrant() {
        if (_rgStatus == _RG_ENTERED) revert ReentrancyGuardReentrantCall();
        _rgStatus = _RG_ENTERED;
        _;
        _rgStatus = _RG_NOT_ENTERED;
    }
}
