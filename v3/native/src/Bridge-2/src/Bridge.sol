// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {IArbSys} from "@openzeppelin/contracts/vendor/arbitrum/IArbSys.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";

import {CreditVault} from "./CreditVault.sol";
import {NativeLPToken} from "./NativeLPToken.sol";
import {IWETH9} from "./interfaces/IWETH9.sol";
import {SafeERC20} from "./libraries/SafeERC20.sol";
import {ErrorsLib} from "./libraries/ErrorsLib.sol";
import {ReentrancyGuardTransient} from "./libraries/ReentrancyGuardTransient.sol";

contract Bridge is EIP712, Ownable2Step, Pausable, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;

    struct ValidatorSet {
        uint64 epoch;
        address[] validators;
    }

    struct Withdrawal {
        address user;
        address token;
        address destination;
        uint64 amount;
        uint64 nonce;
        uint64 requestedTime;
        uint64 requestedBlockNumber;
    }

    struct WithdrawalRequest {
        address user;
        address token;
        address destination;
        uint64 amount;
        uint64 nonce;
        bytes[] signatures;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @dev EIP-712 type hash for L1 withdrawal authorization (must match off-chain typed data).
    bytes32 private constant WITHDRAWAL_REQUEST_TYPEHASH =
        keccak256("WithdrawalRequest(address user,address token,address destination,uint64 amount,uint64 nonce)");

    /// TODO Temorary settings for the bridge.
    uint64 public constant MIN_CHALLENGE_PERIOD = 2 minutes;
    uint256 public constant MIN_VALIDATOR_COUNT = 1;
    uint256 public constant MIN_SIGNATURE_THRESHOLD = 1;

    /// @notice Credit vault contract.
    CreditVault public immutable creditVault;

    /// @dev Address of the Wrapped Ether (WETH9) contract.
    address public immutable WETH9;

    /// @notice Mapping of token addresses to their corresponding NativeLPToken contracts.
    mapping(address => NativeLPToken) public lpTokens;

    /// @notice Current epoch number.
    uint64 public epoch;

    /// @notice Challenge window in seconds;
    uint64 public challengePeriod;

    /// @notice Estimated average milliseconds per block on the target chain.
    uint64 public millsPerBlock;

    /// @notice Minimum number of validator signatures required
    uint256 public signatureThreshold;

    /// @notice Number of validators in the current validator set.
    uint256 public validatorCount;

    /// @notice Hash of the current active validator set.
    bytes32 public validatorSetHash;

    /// @notice Mapping of executor addresses to boolean indicating if they are authorized executors.
    mapping(address => bool) public executors;

    /// @notice Mapping of emergency pauser addresses.
    mapping(address => bool) public emergencyPausers;

    /// @notice Mapping of withdrawal request digest to withdrawal details.
    mapping(bytes32 => Withdrawal) public requestedWithdrawals;

    /// @notice Mapping of executed withdrawal request digest to boolean indicating if they are executed.
    mapping(bytes32 => bool) public executedWithdrawals;

    /*//////////////////////////////////////////////////////////////////////////
                                     CUSTOM ERRORS
    //////////////////////////////////////////////////////////////////////////*/

    error ChallengeActive();
    error ChallengePeriodTooShort();
    error EpochNotIncreasing();
    error InsufficientValidatorSignatures();
    error InvalidSignatureThreshold();
    error NotEnoughSignatureSlots();
    error NotEmergencyPauser();
    error NotExecutor();
    error Unauthorized();
    error ValidatorCountTooLow();
    error ValidatorSetHashMismatch();
    error WithdrawalExecuted();
    error WithdrawalNotRequested();
    error WithdrawalRequested();

    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    event Deposit(address indexed user, address indexed token, uint256 amount, uint256 nlpSharesMinted);
    event RequestedWithdrawal(
        address indexed user,
        bytes32 digest,
        address indexed token,
        address destination,
        uint64 amount,
        uint64 nonce,
        uint64 requestedTime
    );
    event ExecutedWithdrawal(
        address indexed user,
        bytes32 digest,
        address indexed token,
        address destination,
        uint64 amount,
        uint64 nonce,
        uint256 redeemedAmount
    );
    event FailedWithdrawal(bytes32 digest, uint32 errorCode);
    event ChallengePeriodUpdated(uint64 previousChallengePeriod, uint64 newChallengePeriod);
    event MillsPerBlockUpdated(uint64 previousMillsPerBlock, uint64 newMillsPerBlock);
    event SignatureThresholdUpdated(uint256 previousSignatureThreshold, uint256 newSignatureThreshold);
    event MarketSupported(address indexed underlyingToken, address indexed lpToken);
    event ValidatorSetUpdated(uint64 previousEpoch, uint64 newEpoch, bytes32 newValidatorSetHash);
    event ExecutorUpdated(address indexed executor, bool enabled);
    event EmergencyPauserUpdated(address indexed account, bool enabled);

    constructor(
        address _creditVault,
        address _weth9,
        address[] memory _validators,
        uint256 _signatureThreshold,
        uint64 _challengePeriod,
        uint64 _millsPerBlock
    ) EIP712("Native OB Bridge", "1") {
        require(_creditVault != address(0) && _weth9 != address(0), ErrorsLib.ZeroAddress());

        creditVault = CreditVault(_creditVault);
        WETH9 = _weth9;

        uint256 n = _validators.length;
        require(n >= MIN_VALIDATOR_COUNT, ValidatorCountTooLow());
        require(_signatureThreshold > 0 && _signatureThreshold <= n, InvalidSignatureThreshold());

        signatureThreshold = _signatureThreshold;
        validatorCount = n;

        require(_challengePeriod >= MIN_CHALLENGE_PERIOD, ChallengePeriodTooShort());
        challengePeriod = _challengePeriod;

        millsPerBlock = _millsPerBlock;

        validatorSetHash = _buildValidatorsHash(ValidatorSet({epoch: 0, validators: _validators}));

        for (uint256 i; i < n; ++i) {
            executors[_validators[i]] = true;
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deposits supported underlying into corresponding NativeLPToken market.
    /// @dev NativeLPToken shares are minted to this bridge contract.
    /// @param token Underlying token address for the target supported market.
    /// @param amount Underlying amount to deposit.
    function deposit(address token, uint256 amount) external payable nonReentrant whenNotPaused {
        require(amount > 0, ErrorsLib.ZeroAmount());

        address underlying = token == address(0) ? WETH9 : token;
        NativeLPToken lpToken = lpTokens[underlying];

        if (token == address(0)) {
            require(msg.value == amount, ErrorsLib.UnexpectedMsgValue());
            IWETH9(WETH9).deposit{value: amount}();
        } else {
            require(msg.value == 0, ErrorsLib.UnexpectedMsgValue());
            IERC20(underlying).safeTransferFrom(msg.sender, address(this), amount);
        }

        IERC20(underlying).safeApprove(address(lpToken), amount);

        uint256 nlpShares = lpToken.deposit(amount);

        emit Deposit(msg.sender, underlying, amount, nlpShares);
    }

    /// @notice Anyone may submit batched withdrawal requests with valid validator EIP-712 signatures.
    /// @param requests Batched withdrawal requests to register.
    /// @param _validatorSet Active validator set used for signature verification.
    function requestWithdrawals(
        WithdrawalRequest[] calldata requests,
        ValidatorSet calldata _validatorSet
    ) external nonReentrant whenNotPaused {
        for (uint256 i; i < requests.length; ++i) {
            _requestWithdrawal(requests[i], _validatorSet);
        }
    }

    /// @notice Only an executor may execute withdrawals after the challenge period.
    /// @param digests Withdrawal digests to execute.
    function executeWithdrawals(bytes32[] calldata digests) external nonReentrant whenNotPaused {
        require(executors[msg.sender], NotExecutor());

        for (uint256 i; i < digests.length; ++i) {
            _executeWithdrawal(digests[i]);
        }
    }

    /// @notice Computes the EIP-712 withdrawal request digest signed by validators.
    /// @param user User whose withdrawal is being authorized.
    /// @param token Underlying token to withdraw.
    /// @param destination Recipient address on destination side.
    /// @param amount Underlying amount to withdraw.
    /// @param nonce User-specific withdrawal nonce.
    /// @return digest EIP-712 typed-data digest.
    function getWithdrawalDigest(
        address user,
        address token,
        address destination,
        uint64 amount,
        uint64 nonce
    ) external view returns (bytes32 digest) {
        digest = _hashTypedDataV4(
            keccak256(abi.encode(WITHDRAWAL_REQUEST_TYPEHASH, user, token, destination, amount, nonce))
        );
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Updates the challenge period used by withdrawal execution checks.
    /// @param newChallengePeriod New challenge period in seconds.
    function setChallengePeriod(uint64 newChallengePeriod) external onlyOwner {
        require(newChallengePeriod >= MIN_CHALLENGE_PERIOD, ChallengePeriodTooShort());

        uint64 previousChallengePeriod = challengePeriod;
        challengePeriod = newChallengePeriod;

        emit ChallengePeriodUpdated(previousChallengePeriod, newChallengePeriod);
    }

    /// @notice Updates the estimated milliseconds per block parameter.
    /// @param newMillsPerBlock New estimated milliseconds-per-block value.
    function setMillsPerBlock(uint64 newMillsPerBlock) external onlyOwner {
        uint64 previousMillsPerBlock = millsPerBlock;
        millsPerBlock = newMillsPerBlock;

        emit MillsPerBlockUpdated(previousMillsPerBlock, newMillsPerBlock);
    }

    /// @notice Updates the minimum signature threshold required for withdrawal requests.
    /// @param newSignatureThreshold New signature threshold.
    function setSignatureThreshold(uint256 newSignatureThreshold) external onlyOwner {
        require(
            newSignatureThreshold >= MIN_SIGNATURE_THRESHOLD && newSignatureThreshold <= validatorCount,
            InvalidSignatureThreshold()
        );

        uint256 previousSignatureThreshold = signatureThreshold;
        signatureThreshold = newSignatureThreshold;

        emit SignatureThresholdUpdated(previousSignatureThreshold, newSignatureThreshold);
    }

    /// @notice Replaces the active validator set and updates signature threshold.
    /// @param newValidatorSet New validator set, must have strictly increasing epoch.
    /// @param newSignatureThreshold New threshold constrained by validator-set size.
    function setValidatorSet(ValidatorSet calldata newValidatorSet, uint256 newSignatureThreshold) external onlyOwner {
        require(newValidatorSet.epoch > epoch, EpochNotIncreasing());
        require(newValidatorSet.validators.length >= MIN_VALIDATOR_COUNT, ValidatorCountTooLow());
        require(
            newSignatureThreshold >= MIN_SIGNATURE_THRESHOLD
                && newSignatureThreshold <= newValidatorSet.validators.length,
            InvalidSignatureThreshold()
        );

        uint64 previousEpoch = epoch;
        uint256 previousSignatureThreshold = signatureThreshold;

        bytes32 newValidatorSetHash = _buildValidatorsHash(newValidatorSet);
        epoch = newValidatorSet.epoch;
        validatorSetHash = newValidatorSetHash;
        validatorCount = newValidatorSet.validators.length;
        signatureThreshold = newSignatureThreshold;

        emit ValidatorSetUpdated(previousEpoch, newValidatorSet.epoch, newValidatorSetHash);
        emit SignatureThresholdUpdated(previousSignatureThreshold, newSignatureThreshold);
    }

    /// @notice Supports multiple markets by binding underlying tokens to LP token contracts.
    /// @param tokens Underlying token addresses.
    /// @param lpTokenAddresses Corresponding NativeLPToken addresses.
    function supportMarket(address[] calldata tokens, address[] calldata lpTokenAddresses) external onlyOwner {
        for (uint256 i; i < tokens.length; ++i) {
            address token = tokens[i];
            address lpToken = lpTokenAddresses[i];
            require(address(creditVault.lpTokens(token)) == lpToken, ErrorsLib.InvalidLPToken());

            lpTokens[token] = NativeLPToken(lpToken);
            emit MarketSupported(token, lpToken);
        }
    }

    /// @notice Batch updates executor permissions.
    /// @param accounts Executor addresses to update.
    /// @param statuses New executor flags for each address.
    function setExecutors(address[] calldata accounts, bool[] calldata statuses) external onlyOwner {
        for (uint256 i; i < accounts.length; ++i) {
            require(accounts[i] != address(0), ErrorsLib.ZeroAddress());

            executors[accounts[i]] = statuses[i];
            emit ExecutorUpdated(accounts[i], statuses[i]);
        }
    }

    /// @notice Batch updates emergency pauser permissions.
    /// @param accounts Emergency pauser addresses to update.
    /// @param statuses New emergency-pauser flags for each address.
    function setEmergencyPausers(address[] calldata accounts, bool[] calldata statuses) external onlyOwner {
        for (uint256 i; i < accounts.length; ++i) {
            require(accounts[i] != address(0), ErrorsLib.ZeroAddress());

            emergencyPausers[accounts[i]] = statuses[i];
            emit EmergencyPauserUpdated(accounts[i], statuses[i]);
        }
    }

    /// @notice Pauses the bridge
    function pause() external {
        require(msg.sender == owner() || emergencyPausers[msg.sender], Unauthorized());
        _pause();
    }

    /// @notice Unpauses the bridge
    function unpause() external onlyOwner {
        _unpause();
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function _requestWithdrawal(
        WithdrawalRequest calldata withdrawalRequest,
        ValidatorSet calldata _validatorSet
    ) private {
        bytes32 digest = _hashTypedDataV4(
            keccak256(
                abi.encode(
                    WITHDRAWAL_REQUEST_TYPEHASH,
                    withdrawalRequest.user,
                    withdrawalRequest.token,
                    withdrawalRequest.destination,
                    withdrawalRequest.amount,
                    withdrawalRequest.nonce
                )
            )
        );

        require(requestedWithdrawals[digest].requestedTime == 0, WithdrawalRequested());

        Withdrawal memory withdrawal = Withdrawal({
            user: withdrawalRequest.user,
            token: withdrawalRequest.token,
            destination: withdrawalRequest.destination,
            amount: withdrawalRequest.amount,
            nonce: withdrawalRequest.nonce,
            requestedTime: uint64(block.timestamp),
            requestedBlockNumber: _getBlockNumber()
        });

        _checkValidatorSignatures(digest, validatorSetHash, _validatorSet, withdrawalRequest.signatures);

        requestedWithdrawals[digest] = withdrawal;

        emit RequestedWithdrawal(
            withdrawal.user,
            digest,
            withdrawal.token,
            withdrawal.destination,
            withdrawal.amount,
            withdrawal.nonce,
            withdrawal.requestedTime
        );
    }

    function _executeWithdrawal(bytes32 digest) private {
        require(!executedWithdrawals[digest], WithdrawalExecuted());

        Withdrawal memory withdrawal = requestedWithdrawals[digest];

        require(withdrawal.requestedTime != 0, WithdrawalNotRequested());

        require(
            block.timestamp > withdrawal.requestedTime + challengePeriod
                && (_getBlockNumber() - withdrawal.requestedBlockNumber) * millsPerBlock > 1000 * challengePeriod,
            ChallengeActive()
        );

        executedWithdrawals[digest] = true;

        NativeLPToken lpToken = lpTokens[withdrawal.token];
        uint256 shares = lpToken.getSharesByUnderlying(uint256(withdrawal.amount));
        uint256 redeemedAmount = lpToken.redeemTo(shares, withdrawal.destination);

        emit ExecutedWithdrawal(
            withdrawal.user,
            digest,
            withdrawal.token,
            withdrawal.destination,
            withdrawal.amount,
            withdrawal.nonce,
            redeemedAmount
        );
    }

    /// @notice Verifies validator signatures against the active validator set checkpoint.
    /// @dev Signature ordering rule:
    /// - `signatures` MUST follow the same relative order as `validatorSet.validators`.
    /// - Signing validators are expected to be an ordered subsequence of the validator list.
    /// - Example: validators [A, B, C, D] allows signatures [A, C, D] but rejects [C, A].
    ///
    /// Inclusion rule:
    /// - Each matched signature must recover to an address contained in `validatorSet.validators`.
    /// - At least `signatureThreshold` matched signatures are required.
    /// - Extra validators in the set are allowed (not every validator must sign).
    ///
    /// @param digest EIP-712 digest that validators sign.
    /// @param _validatorSetHash Expected checkpoint hash for `validatorSet`.
    /// @param validatorSet Active validator set supplied by caller.
    /// @param signatures Validator signatures, ordered by validator-set order.
    function _checkValidatorSignatures(
        bytes32 digest,
        bytes32 _validatorSetHash,
        ValidatorSet calldata validatorSet,
        bytes[] calldata signatures
    ) private view {
        require(_buildValidatorsHash(validatorSet) == _validatorSetHash, ValidatorSetHashMismatch());

        uint256 sigLen = signatures.length;
        require(sigLen >= signatureThreshold, NotEnoughSignatureSlots());

        uint256 matched;
        uint256 j;
        uint256 len = validatorSet.validators.length;

        for (uint256 i; i < len && matched < signatureThreshold; ++i) {
            address signer = ECDSA.recover(digest, signatures[j]);

            if (signer == validatorSet.validators[i]) {
                ++matched;
                ++j;
                if (j >= sigLen) {
                    break;
                }
            }
        }

        require(matched >= signatureThreshold, InsufficientValidatorSignatures());
    }

    function _buildValidatorsHash(ValidatorSet memory validatorSet) private pure returns (bytes32) {
        return keccak256(abi.encode(validatorSet.validators, validatorSet.epoch));
    }

    function _getBlockNumber() private view returns (uint64) {
        if (block.chainid == 42_161 || block.chainid == 421_614) {
            return uint64(IArbSys(address(100)).arbBlockNumber());
        }
        return uint64(block.number);
    }
}
