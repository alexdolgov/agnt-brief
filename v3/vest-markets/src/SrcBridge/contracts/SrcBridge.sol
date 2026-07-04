// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import {ISrcBridge} from "./interfaces/ISrcBridge.sol";

interface SpokePool {
    function depositV3(
        address depositor,
        address recipient,
        address inputToken,
        address outputToken,
        uint256 inputAmount,
        uint256 outputAmount,
        uint256 destinationChainId,
        address exclusiveRelayer,
        uint32 quoteTimestamp,
        uint32 fillDeadline,
        uint32 exclusivityDeadline,
        bytes calldata message
    ) external payable;
}

contract SrcBridge is Initializable, PausableUpgradeable, AccessControlUpgradeable, ISrcBridge {
    using SafeERC20 for IERC20;

    string public constant NAME = "VEST_SRC_BRIDGE";
    string public constant VERSION = "1.0.0";
    bytes32 public constant BRIDGE_OPERATOR_ROLE = keccak256("BRIDGE_OPERATOR_ROLE");

    address public exchange;
    SpokePool public spokePool;

    mapping(address => bool) private supportedTokens;
    mapping(bytes32 => bool) private completedTransactions; // Transfer hash => status


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
        address _exchange,
        SpokePool _spokePool
    ) external initializer {
        if (_defaultAdmin == address(0) || _exchange == address(0) || address(_spokePool) == address(0))
            revert ZeroAddress();
        __AccessControl_init();
        __Pausable_init();
        exchange = _exchange;
        spokePool = _spokePool;
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
     * @dev Sends tokens to a specified address.
     * @param srcToken The address of the token to send.
     * @param amount The amount of tokens to send.
     * @param toAddress The address to send the tokens to.
     *
     * Requirements:
     * - The contract must not be paused.
     * - The `srcToken` must be a supported token.
     * - The `amount` must be greater than or equal to `minSend`.
     *
     * Reverts with:
     * - `UnsupportedToken` if the token is not supported.
     */
    function sendTo(address srcToken, uint256 amount, address toAddress) public payable whenNotPaused {
        if (!supportedTokens[srcToken]) revert UnsupportedToken();
        IERC20(srcToken).safeTransferFrom(msg.sender, address(this), amount);
        emit Sent(msg.sender, srcToken, amount, toAddress);
    }

    /**
     * @dev Sends tokens to a specified chain
     * @param srcToken The token to be sent
     * @param bridgeParams Across deposit parameters
     */
    function processSending(
        IERC20 srcToken,
        BridgeParams memory bridgeParams
    ) public payable onlyRole(BRIDGE_OPERATOR_ROLE) {
        if (!supportedTokens[address(srcToken)]) revert UnsupportedToken();
        srcToken.safeApprove(address(spokePool), bridgeParams.inputAmount);
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
        emit Processed(bridgeParams.destinationChainId, bridgeParams.inputToken, bridgeParams.recipient, bridgeParams.inputAmount, bridgeParams.inputAmount - bridgeParams.outputAmount);
    }

   function withdraw(
        bytes memory requestArgs,
        address signer,
        bytes memory signature,
        bytes memory signatureProof
    ) external onlyRole(BRIDGE_OPERATOR_ROLE) {
        (
            uint256 requestSigningTime,
            ,
            bool isDeposit,
            address account,
            address recipient,
            address token,
            uint256 amount,
            uint256 chainId
        ) = abi.decode(requestArgs, (uint256, uint256, bool, address, address, address, uint256, uint256));
        if (!supportedTokens[token]) revert UnsupportedToken();
        bytes32 requestHash = keccak256(requestArgs);
        if (completedTransactions[requestHash]) revert AlreadyProcessed();
        if (isDeposit) revert InvalidRequestType();
        if (chainId != block.chainid) revert InvalidChainId();
        if (signer != account) {
            (bytes memory proofSignature, bytes memory proofArgs) = abi.decode(signatureProof, (bytes, bytes));
            (address approvedSigner, uint256 signerExpiry) = abi.decode(proofArgs, (address, uint256));
            if (approvedSigner != signer) revert InvalidSignerAccount();
            bool validProofSignature = _validateSignature(proofArgs, account, proofSignature);
            if (!validProofSignature) revert InvalidProofSignature();
            if (signerExpiry < requestSigningTime) revert ExpiredSignerAccount();
        }
        bool validSignature = _validateSignature(requestArgs, signer, signature);
        if (!validSignature) revert InvalidSignature();
        completedTransactions[requestHash] = true;
        IERC20(token).safeTransfer(recipient, amount);
        emit Withdrawed(account, token, amount, recipient);
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
    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    /**
     * @dev Unpauses the contract.
     */
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /**
     * @dev Withdraws ERC20 tokens from the contract to the caller's address.
     * @param _token The ERC20 token to withdraw
     */
    function withdrawERC20(IERC20 _token) external virtual onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 amount = _token.balanceOf(address(this));
        _token.safeTransfer(msg.sender, amount);
        emit Erc20Withdrawn(address(_token), amount);
    }

    function _validateSignature(
        bytes memory massage,
        address signer,
        bytes memory signature
    ) internal view returns (bool) {
        bytes32 ethSignedMessageHash = keccak256(
            abi.encodePacked("\x19Ethereum Signed Message:\n32", keccak256(massage))
        );
        bool validSignature = SignatureChecker.isValidSignatureNow(signer, ethSignedMessageHash, signature);
        if (!validSignature) return false;
        return true;
    }
}
