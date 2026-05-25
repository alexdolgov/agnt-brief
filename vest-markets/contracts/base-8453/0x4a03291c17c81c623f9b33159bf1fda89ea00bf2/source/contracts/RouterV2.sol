// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import {EIP712Upgradeable} from "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IRouterV2, IQRV2, IExchange} from "./interface/IRouterV2.sol";
import {IUniversalSigValidator} from "./interface/IUniversalSigValidator.sol";

/**
 * @notice Router contract implementing IRouterV2 interface.
 * @dev This contract handles routing of requests, execution of queued requests, and has pausable functionality.
 * It also utilizes AccessControlEnumerable for role-based access control.
 * Implements the IRouterV2, Pausable, and AccessControlEnumerable interfaces.
 */
contract RouterV2 is IRouterV2, Initializable, PausableUpgradeable, AccessControlUpgradeable, EIP712Upgradeable {
    bytes32 public constant EXCHANGE_ROLE = keccak256("EXCHANGE_ROLE");
    bytes32 public constant KEEPER_ROLE = keccak256("KEEPER_ROLE");
    bytes32 public constant LIQUIDATION = keccak256("LIQUIDATION");
    bytes32 public constant DOMAIN_TYPEHASH =
        keccak256("EIP712Domain(string name,string version,address verifyingContract)");
    bytes32 public constant DATA_TYPEHASH = keccak256("SignerProof(address approvedSigner,uint256 signerExpiry)");

    address public exchange;
    address public verifyingAddress1CT;
    bytes32 public DOMAIN_SEPARATOR;

    mapping(bytes32 => bool) public completedHashes; // Completed orders and requests hashes

    IUniversalSigValidator public universalSigValidator;
    bool public allowExternalWithdraw;

    /**
     * @notice Initializer for the Router contract.
     * @dev Initializes the contract with specified roles and addresses.
     * @param _exchange Address of the associated Exchange contract.
     * @param _keeper Address of the keeper associated with this Router.
     * @param _admin Address with the DEFAULT_ADMIN_ROLE for administrative functions.
     * Requirements:
     * - The provided addresses must not be zero addresses.
     */
    function initialize(
        address _exchange,
        address _keeper,
        address _admin,
        address _verifyingAddress1CT,
        address _universalSigValidator,
        bool _allowExternalWithdraw
    ) external initializer {
        __Pausable_init();
        __AccessControl_init();
        __EIP712_init("VestRouterV2", "0.0.1");
        if (
            _exchange == address(0) ||
            _keeper == address(0) ||
            _admin == address(0) ||
            _verifyingAddress1CT == address(0) ||
            _universalSigValidator == address(0)
        ) revert ZeroAddressSet();
        DOMAIN_SEPARATOR = keccak256(
            abi.encode(
                DOMAIN_TYPEHASH,
                keccak256(bytes(_EIP712Name())),
                keccak256(bytes(_EIP712Version())),
                address(_verifyingAddress1CT)
            )
        );
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(EXCHANGE_ROLE, _exchange);
        _grantRole(KEEPER_ROLE, _keeper);
        exchange = _exchange;
        verifyingAddress1CT = _verifyingAddress1CT;
        universalSigValidator = IUniversalSigValidator(_universalSigValidator);
        allowExternalWithdraw = _allowExternalWithdraw;
    }

    /**
     * @dev See {IRouterV2}.
     */
    function pauseRouter() external onlyRole(EXCHANGE_ROLE) {
        _pause();
    }

    /**
     * @notice Unpauses the Router contract.
     * @dev This function can only be called by an account with the EXCHANGE_ROLE.
     * Emits an {Unpaused} event.
     */
    function unpauseRouter() external onlyRole(EXCHANGE_ROLE) {
        _unpause();
    }

    /**
     * @dev See {IRouterV2}.
     */
    function generateRouterEvent(EventType eventType, bytes memory args) external onlyRole(EXCHANGE_ROLE) {
        emit ContractEvent(eventType, args);
    }

    function setAllowExternalWithdraw(bool _allowExternalWithdraw) external onlyRole(DEFAULT_ADMIN_ROLE) {
        allowExternalWithdraw = _allowExternalWithdraw;
        emit AllowExternalWithdrawSet(_allowExternalWithdraw);
    }

    function setUniversalSigValidator(
        IUniversalSigValidator _universalSigValidator
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        universalSigValidator = _universalSigValidator;
    }

    // MultiTypeRequestV3
    // {
    //   "account": address,
    //   "requestType": RequestType ORDER/LP/TRANSFER, TRANSFER_SOL, ISOLATE_ORDER
    //   "requestArgs": encoding of 'order'; for transfers, this should also contain DEPOSIT/WITHDRAW to prevent the above scenario
    //   "signature": user provided signature
    //   "signer": user provided signature
    //   "signatureProof": signature proof signed by user
    //   "networkType" : 0 - EVM, 1 - Solana
    // }

    // args -> Data (ORDER)
    // 	{
    //      "time": uint256, // user provided timestamp in milliseconds
    //      "nonce": uint256,
    // 		"orderType": string, // MARKET, LIMIT, STOP_LOSS, TAKE_PROFIT, LIQUIDATION
    // 		"symbol": string,
    // 		"isBuy": bool,
    // 		"size": string,
    // 		"limitPrice": string,
    // 		"reduceOnly": bool,
    // 	}

    // args -> Data (ISOLATE_ORDER)
    // 	{
    //      "isolateProofSigner": address,
    //      "isolateProofSignature: bytes,
    //      "isolateProofArgs": bytes, // encoded isolate account address
    //      "orderArgs": bytes, // Data (ORDER) can not be LIQUIDATION, because the liquidation will execute with a common ORDER
    // 	}

    // args -> Data (LP)
    // 	{
    //      "time": uint256
    //      "nonce": uint256,
    // 		"orderType": string, // DEPOSIT, IMMEDIATE_WITHDRAW, SCHEDULE_WITHDRAW
    // 		"size": string,
    // 	}

    // args -> Data (TRANSFER)
    // 	{
    //      "time": uint256
    //      "nonce": uint256,
    // 		"deposit": bool,
    //      "account": address,
    //      "recipient": address,
    //      "token": address,
    // 		"size": uint256,
    //      "chainId": uint256,
    // 	}

    // args -> Data (TRANSFER_SOL)
    // 	{
    //      "time": uint256
    //      "nonce": uint256,
    // 		"deposit": bool,
    //      "account": address,
    //      "recipient": bytes32,
    //      "token": address,
    // 		"size": uint256,
    //      "chainId": uint256, == 0 for SOL
    // 	}

    /**
     * @dev See {IRouterV2}.
     */
    function processQueuedRequestsV2(
        IQRV2.MultiTypeRequestV3[] memory mtRequests,
        IExchange.StateUpdate[] memory stateVariablesToUpdate
    ) external whenNotPaused onlyRole(KEEPER_ROLE) {
        bytes32[] memory executedRequestsIds = new bytes32[](mtRequests.length);
        for (uint256 i = 0; i < mtRequests.length; i++) {
            (, uint256 nonce) = abi.decode(mtRequests[i].requestArgs, (uint256, uint256));
            bytes32 requestHash = keccak256(abi.encode(mtRequests[i].account, mtRequests[i].requestArgs));
            _validateRequest(mtRequests[i], requestHash);
            executedRequestsIds[i] = requestHash;
            emit ContractEvent(
                EventType.Processing,
                abi.encode(
                    mtRequests[i].account,
                    nonce,
                    requestHash,
                    mtRequests[i].requestType,
                    mtRequests[i].requestArgs
                )
            );
        }

        IExchange(exchange).updateStateVariables(stateVariablesToUpdate);

        emit ContractEvent(EventType.RequestsExecuted, abi.encode(executedRequestsIds));
    }

    /**
     * @notice Validates the provided multi-type request, ensuring it has not been processed before, and checks signatures as required based on the request type and arguments.
     * @dev This function first checks if the `requestHash` exists in `completedHashes` to prevent replay attacks.
     * It determines whether signature validation is necessary based on the `requestType` and additional arguments:
     * - For `TRANSFER` requests with `deposit` set to true, signature validation is not required.
     * - For `ORDER` requests of type `LIQUIDATION`, signature validation is not required.
     * - For all other cases, signature validation is performed.
     *
     * For signature validation:
     * - If `request.requestType` is `ISOLATE_ORDER`, it performs additional validation on the isolate proof signer, isolate account, and their signatures.
     * - If `request.signatureProof` is empty, it validates the request against the proxy account (ensuring the signer is the proxy owner) and checks for expiry.
     * - If `request.signatureProof` is provided and `request.signer` is not the `request.account`, it verifies the approved signer and ensures the proof signature is valid.
     *
     * Finally, it validates the request signature itself and marks the `requestHash` as completed by setting `completedHashes[requestHash]` to true.
     *
     * @param request The multi-type request containing transaction details.
     * @param requestHash The hash of the request, used to prevent replay attacks.
     *
     * @custom:note For `ISOLATE_ORDER` requests, additional validation is performed on the isolate proof signer, isolate account, and their signatures.
     *
     * @custom:reverts `AlreadyCompleted` if the request has already been processed.
     * @custom:reverts `InvalidIsolateProofSigner` if the isolate proof signer is not the account owner or signer.
     * @custom:reverts `InvalidIsolateAccount` if the isolate account derived from the nonce does not match.
     * @custom:reverts `InvalidIsolateProofSignature` if the isolate proof signature is invalid.
     * @custom:reverts `InvalidSignerAccount` if the signer is not the account owner or proxy owner.
     * @custom:reverts `ExpiredSignerAccount` if the signer's account has expired.
     * @custom:reverts `InvalidProofSignature` if the proof signature is invalid.
     * @custom:reverts `InvalidSignature` if the request signature is invalid.
     */
    function _validateRequest(IQRV2.MultiTypeRequestV3 memory request, bytes32 requestHash) private {
        if (completedHashes[requestHash]) revert AlreadyCompleted(requestHash);
        completedHashes[requestHash] = true;
        bool needSignatureCheck = true;
        if (
            request.requestType == IQRV2.RequestType.TRANSFER || request.requestType == IQRV2.RequestType.TRANSFER_SOL
        ) {
            (, , bool deposit) = abi.decode(request.requestArgs, (uint256, uint256, bool));
            needSignatureCheck = deposit ? false : true;
            if (!deposit && !allowExternalWithdraw && request.requestType == IQRV2.RequestType.TRANSFER) {
                (, , , , address recipient) = abi.decode(
                    request.requestArgs,
                    (uint256, uint256, bool, address, address)
                );
                if (recipient != request.account) revert AccountAndRecipientMismatch(requestHash);
            }
        } else if (request.requestType == IQRV2.RequestType.ORDER) {
            (, , string memory orderType) = abi.decode(request.requestArgs, (uint256, uint256, string));
            needSignatureCheck = keccak256(bytes(orderType)) == LIQUIDATION ? false : true;
        }
        if (needSignatureCheck) {
            uint256 requestSigningTime;
            if (request.requestType == IQRV2.RequestType.ISOLATE_ORDER) {
                (
                    address isolateProofSigner,
                    bytes memory isolateProofSignature,
                    bytes memory isolateProofArgs,
                    bytes memory orderArgs
                ) = abi.decode(request.requestArgs, (address, bytes, bytes, bytes));
                if (isolateProofSigner != request.account && isolateProofSigner != request.signer)
                    revert InvalidIsolateProofSigner(requestHash);
                (address isolateAccount, uint160 nonce) = abi.decode(isolateProofArgs, (address, uint160));
                address expectedIsolateAccount = address(uint160(bytes20(request.account) ^ bytes20(nonce)));
                if (expectedIsolateAccount != isolateAccount) revert InvalidIsolateAccount(requestHash);
                bool validIsolateProofSignature = _validateSignature(
                    isolateProofArgs,
                    isolateProofSigner,
                    isolateProofSignature
                );
                if (!validIsolateProofSignature) revert InvalidIsolateProofSignature(requestHash);
                requestSigningTime = abi.decode(orderArgs, (uint256));
            } else {
                requestSigningTime = abi.decode(request.requestArgs, (uint256));
            }
            if (request.signer != request.account) _validateSignatureProof(request, requestHash, requestSigningTime);
            bool validSignature = _validateSignature(request.requestArgs, request.signer, request.signature);
            if (!validSignature) revert InvalidSignature(requestHash);
        }
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
        bytes memory signatureProofArgs,
        bytes32 requestHash
    ) internal pure returns (address approvedSigner, uint256 signerExpiry, bool allowWithdraw) {
        if (signatureProofArgs.length == 64) {
            (approvedSigner, signerExpiry) = abi.decode(signatureProofArgs, (address, uint256));
            allowWithdraw = true;
        } else if (signatureProofArgs.length == 96) {
            (approvedSigner, signerExpiry, allowWithdraw) = abi.decode(signatureProofArgs, (address, uint256, bool));
        } else {
            revert InvalidProofArgLength(requestHash);
        }
    }

    function _validateSignatureProof(
        IQRV2.MultiTypeRequestV3 memory request,
        bytes32 requestHash,
        uint256 requestSigningTime
    ) private {
        (bytes memory signature, bytes memory proofArgs) = abi.decode(request.signatureProof, (bytes, bytes));
        (address approvedSigner, uint256 signerExpiry, bool allowWithdraw) = _parseProofArgs(proofArgs, requestHash);
        if (
            request.requestType == IQRV2.RequestType.TRANSFER || request.requestType == IQRV2.RequestType.TRANSFER_SOL
        ) {
            if (!allowWithdraw) revert NotAllowedWithdraw(requestHash);
        }
        if (approvedSigner != request.signer) revert InvalidSignerAccount(requestHash);
        if (signerExpiry < requestSigningTime) revert ExpiredSignerAccount(requestHash);
        if (request.networkType == IQRV2.NetworkType.EVM) {
            // skip 1ct account signature check for non EVM networks (e.g. Solana)
            bytes32 structHash = keccak256(abi.encode(DATA_TYPEHASH, approvedSigner, signerExpiry));
            bytes32 digest = MessageHashUtils.toTypedDataHash(DOMAIN_SEPARATOR, structHash);
            bool validProofSignature = IUniversalSigValidator(universalSigValidator).isValidSig(
                request.account,
                digest,
                signature
            );
            if (!validProofSignature) revert InvalidProofSignature(requestHash);
        }
    }
}
