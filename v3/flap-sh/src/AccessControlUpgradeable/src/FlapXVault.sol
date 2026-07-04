// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {VaultBase} from "./interfaces/VaultBase.sol";
import {AccessControlUpgradeable} from "@openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {Initializable} from "@openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {IPortal, IPortalTradeV2} from "./interfaces/IPortal.sol";
import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {Strings} from "@openzeppelin/utils/Strings.sol";

/// @title FlapXVault
/// @notice A vault that manages tax token revenue with Twitter-based proof of ownership
/// @dev The vault has three states: ACCUMULATING, STREAMING, and FALLBACK_SNOWBALL
contract FlapXVault is VaultBase, AccessControlUpgradeable {
    using SafeERC20 for IERC20;
    using Strings for uint256;
    using Strings for address;

    /// @notice Role that can trigger snowball operations
    bytes32 public constant SNOWBALL_ROLE = keccak256("SNOWBALL_ROLE");

    /// @notice Dead address for burning tokens
    address public constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    /// @notice The states a vault can be in
    enum State {
        ACCUMULATING, // Accumulating BNB funds but not sending them out
        STREAMING, // Streaming all received BNB to a specified address
        FALLBACK_SNOWBALL // Fee manager can no longer control, only snowball buyback available

    }

    /// @notice The type of balance update
    enum BalanceUpdateType {
        ACCUMULATION,
        SNOWBALL
    }

    struct VaultStats {
        uint128 totalBNBSpent;
        uint128 totalTokenBurn;
    }

    VaultStats public stats;

    /// @notice Historical proof record
    struct ProofRecord {
        // slot0
        uint128 XId;
        uint128 tweetId;
        // slot1
        address targetAddress;
    }

    /// @notice XProof struct for EIP712 signature verification
    struct XProof {
        address targetAddress;
        address taxToken;
        string xHandle;
        uint128 XId;
        uint128 tweetId;
    }

    /// @notice The tax token this vault is associated with
    address public taxToken;

    /// @notice The quote token for the tax token
    address public quoteToken;

    /// @notice The fee manager's Twitter handle
    string public xHandle;

    /// @notice The timeout period before transitioning to FALLBACK_SNOWBALL
    uint256 public timeoutPeriod;

    /// @notice The creation timestamp of the vault
    uint256 public createdAt;

    /// @notice The vault factory that created this vault
    address public factory;

    /// @notice Current state of the vault (internal storage)
    State internal _state;

    /// @notice The address to stream BNB to (only valid in STREAMING state)
    address public streamingTarget;

    /// @notice The amount of BNB streamed to each beneficiary
    mapping(address => uint256) public streamedAmount;

    /// @notice The last recorded tweet ID (for monotonicity check)
    uint128 public lastTweetId;

    /// @notice Array of historical proofs
    ProofRecord[] internal historicalProofs;

    /// @notice Emitted when the vault state changes
    /// @param token The tax token address
    /// @param newState The new state (0: ACCUMULATING, 1: STREAMING, 2: FALLBACK_SNOWBALL)
    event FlapTaxVaultStateChanged(address token, uint8 newState);

    /// @notice Emitted when the streaming target is updated
    /// @param token The tax token address
    /// @param newTarget The new streaming target address
    event FlapTaxVaultStreamingTargetUpdated(address token, address newTarget);

    /// @notice Emitted when snowball balance is updated
    /// @param token The tax token address
    /// @param vault The vault address
    /// @param newBalance The new BNB balance
    /// @param updateType The type of update (ACCUMULATION or SNOWBALL)
    event FlapSnowballBalanceUpdated(address token, address vault, uint256 newBalance, BalanceUpdateType updateType);

    /// @notice Emitted when forwarding to streaming target fails
    /// @param token The tax token address
    /// @param target The target address that rejected the transfer
    /// @param amount The amount that failed to transfer
    event FlapStreamingForwardFailed(address token, address target, uint256 amount);

    /// @notice Error when trying to use an outdated proof
    error OutdatedProof(uint128 providedTweetId, uint128 lastTweetId);

    /// @notice Error when vault is in wrong state for operation
    error InvalidState(State currentState);

    /// @notice Error when xHandle is empty
    error EmptyXHandle();

    /// @notice Error when proof verification fails
    error InvalidProof();

    /// @notice Error when taxToken in proof doesn't match vault's taxToken
    error MismatchedTaxToken();

    /// @notice Error when xHandle in proof doesn't match vault's xHandle
    error MismatchedXHandle();

    /// @notice Error when trying to revoke guardian's role
    error CannotRevokeGuardianRole();

    /// @notice Constructor to disable initializers on the implementation contract
    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the vault (called once by factory after cloning)
    /// @param _taxToken The tax token address
    /// @param _quoteToken The quote token address
    /// @param _xHandle The Twitter handle
    /// @param _timeoutPeriod The timeout period
    function initialize(address _taxToken, address _quoteToken, string calldata _xHandle, uint256 _timeoutPeriod)
        external
        initializer
    {
        if (bytes(_xHandle).length == 0) {
            revert EmptyXHandle();
        }

        __AccessControl_init();

        taxToken = _taxToken;
        quoteToken = _quoteToken;
        xHandle = _xHandle;
        timeoutPeriod = _timeoutPeriod;
        createdAt = block.timestamp;
        factory = msg.sender;
        _state = State.ACCUMULATING;

        // Get guardian address
        address guardian = _getGuardian();

        // Grant DEFAULT_ADMIN_ROLE to the factory and guardian
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(DEFAULT_ADMIN_ROLE, guardian);

        // Grant SNOWBALL_ROLE to the Vault Factory contract and guardian
        _grantRole(SNOWBALL_ROLE, msg.sender);
        _grantRole(SNOWBALL_ROLE, guardian);
    }

    /// @notice Get the current state of the vault (computed)
    /// @return The current state, accounting for timeout conditions
    /// @dev This method computes the state based on current conditions without modifying storage
    function state() public view returns (State) {
        // If already in STREAMING state, cannot transition
        if (_state == State.STREAMING) {
            return State.STREAMING;
        }

        // If already in FALLBACK_SNOWBALL state, cannot transition
        if (_state == State.FALLBACK_SNOWBALL) {
            return State.FALLBACK_SNOWBALL;
        }

        // If in ACCUMULATING state and timeout has passed without streaming address
        if (_state == State.ACCUMULATING) {
            if (block.timestamp >= createdAt + timeoutPeriod && streamingTarget == address(0)) {
                return State.FALLBACK_SNOWBALL;
            }
        }

        return _state;
    }

    /// @notice Transit the vault state if conditions are met
    /// @dev Anyone can call this method
    function transitState() public {
        // Get the computed state
        State computedState = state();

        // If state needs updating, update storage and emit event
        if (_state != computedState) {
            _state = computedState;
            emit FlapTaxVaultStateChanged(taxToken, uint8(computedState));
        }
    }

    /// @notice Manage the vault using a Twitter proof
    /// @param proof The XProof struct
    /// @param signature The EIP712 signature
    /// @dev Anyone can call this method to provide a proof posted by the fee manager
    function manageByProof(XProof calldata proof, bytes calldata signature) external {
        // First, try to transit state
        transitState();

        // If already in FALLBACK_SNOWBALL state, do nothing
        if (state() == State.FALLBACK_SNOWBALL) {
            return;
        }

        // Verify the proof using the factory's verifyXProof method
        if (!_verifyXProof(proof, signature)) {
            revert InvalidProof();
        }

        // Ensure the proof is for this vault's tax token to prevent cross-vault replay
        if (proof.taxToken != taxToken) {
            revert MismatchedTaxToken();
        }
        // Ensure the proof is for this vault's xHandle
        if (keccak256(bytes(proof.xHandle)) != keccak256(bytes(xHandle))) {
            revert MismatchedXHandle();
        }
        // Check tweet ID monotonicity
        if (proof.tweetId <= lastTweetId) {
            revert OutdatedProof(proof.tweetId, lastTweetId);
        }

        // Update last tweet ID
        lastTweetId = proof.tweetId;

        // Record proof in historical storage
        historicalProofs.push(ProofRecord({XId: proof.XId, tweetId: proof.tweetId, targetAddress: proof.targetAddress}));

        // Update streaming target
        if (streamingTarget != proof.targetAddress) {
            streamingTarget = proof.targetAddress;
            emit FlapTaxVaultStreamingTargetUpdated(taxToken, proof.targetAddress);
        }

        // Transition to STREAMING state if not already
        if (_state != State.STREAMING) {
            _state = State.STREAMING;
            emit FlapTaxVaultStateChanged(taxToken, uint8(State.STREAMING));
        }
    }

    /// @notice Receive BNB
    receive() external payable {
        // Transit state if conditions are met
        transitState();

        // Get current computed state
        State currentState = state();

        // If in STREAMING state with valid target, try to forward immediately
        if (currentState == State.STREAMING && streamingTarget != address(0)) {
            uint256 balance = address(this).balance;
            (bool success,) = streamingTarget.call{value: balance}("");
            if (!success) {
                // If forward fails, accumulate funds and emit event
                emit FlapStreamingForwardFailed(taxToken, streamingTarget, balance);
            } else {
                streamedAmount[streamingTarget] += balance;
            }
        } else if (currentState == State.FALLBACK_SNOWBALL) {
            // Emit balance update event in FALLBACK_SNOWBALL state
            emit FlapSnowballBalanceUpdated(
                taxToken, address(this), address(this).balance, BalanceUpdateType.ACCUMULATION
            );
        }
        // In ACCUMULATING state, just accumulate (do nothing)
    }

    /// @notice Buyback and burn tax tokens using accumulated BNB
    /// @param quoteAmt The amount of BNB to use for buyback
    /// @dev Can only be called by SNOWBALL_ROLE
    function snowball(uint256 quoteAmt) external onlyRole(SNOWBALL_ROLE) {
        if (state() != State.FALLBACK_SNOWBALL || address(this).balance < quoteAmt) {
            return;
        }

        // Get portal address
        address portal = _getPortal();

        // Swap BNB for tax tokens
        IPortalTradeV2.ExactInputParams memory params = IPortalTradeV2.ExactInputParams({
            inputToken: address(0), // BNB
            outputToken: taxToken,
            inputAmount: quoteAmt,
            minOutputAmount: 0, // No slippage protection
            permitData: ""
        });

        uint256 tokensReceived = IPortal(portal).swapExactInput{value: quoteAmt}(params);

        stats.totalBNBSpent += uint128(quoteAmt);
        stats.totalTokenBurn += uint128(tokensReceived);

        // Burn all received tokens by sending to dead address
        IERC20(taxToken).safeTransfer(DEAD_ADDRESS, tokensReceived);

        // Emit balance update event
        emit FlapSnowballBalanceUpdated(taxToken, address(this), address(this).balance, BalanceUpdateType.SNOWBALL);
    }

    /// @notice Get historical proofs with pagination
    /// @param offset Starting index for pagination (0 = most recent)
    /// @param limit Maximum number of records to return
    /// @return records Array of proof records in descending order (newest first)
    /// @return total Total number of historical proofs
    function getHistoricalProofs(uint256 offset, uint256 limit)
        external
        view
        returns (ProofRecord[] memory records, uint256 total)
    {
        total = historicalProofs.length;

        if (offset >= total) {
            return (new ProofRecord[](0), total);
        }

        // Calculate how many records we can actually return
        uint256 available = total - offset;
        uint256 resultLength = limit > available ? available : limit;

        records = new ProofRecord[](resultLength);

        // Start from the end and go backwards (descending order)
        for (uint256 i = 0; i < resultLength; i++) {
            records[i] = historicalProofs[total - 1 - offset - i];
        }

        return (records, total);
    }

    /// @notice Returns a description of the vault
    /// @return A string describing the vault's current state
    function description() public view override returns (string memory) {
        // Get token symbol by calling the ERC20 token
        string memory symbol = _getTokenSymbol();

        // Build description parts
        string memory desc = string(
            abi.encodePacked(
                "Flap Gift Vault for $", symbol, ", gift giver @", xHandle, ", current state: ", _stateString()
            )
        );

        // Add streaming info if in STREAMING state
        if (state() == State.STREAMING) {
            desc = string(
                abi.encodePacked(
                    desc,
                    ", current beneficiary: ",
                    streamingTarget.toHexString(),
                    ", amount received: ",
                    _formatAmount(streamedAmount[streamingTarget]),
                    " ether"
                )
            );
        } else if (state() == State.FALLBACK_SNOWBALL) {
            desc = string(
                abi.encodePacked(
                    desc,
                    ", total BNB spent: ",
                    _formatAmount(stats.totalBNBSpent),
                    ", total ",
                    symbol,
                    " burned: ",
                    _formatAmount(stats.totalTokenBurn)
                )
            );
        }

        return desc;
    }

    function _formatAmount(uint256 amount) internal pure returns (string memory) {
        if (amount == 0) {
            return "0";
        }

        if (amount < 1e14) {
            return "< 0.0001";
        }

        uint256 integerPart = amount / 1e18;
        uint256 decimalPart = (amount % 1e18) / 1e14;

        string memory decimalStr = decimalPart.toString();

        if (bytes(decimalStr).length < 4) {
            string memory padding = "";
            uint256 missing = 4 - bytes(decimalStr).length;
            for (uint256 i = 0; i < missing; i++) {
                padding = string.concat(padding, "0");
            }
            decimalStr = string.concat(padding, decimalStr);
        }

        return string.concat(integerPart.toString(), ".", decimalStr);
    }

    /// @notice Verify XProof by calling factory's verifyXProof method
    /// @param proof The XProof struct
    /// @param signature The signature bytes
    /// @return valid True if the proof is valid
    function _verifyXProof(XProof calldata proof, bytes calldata signature) internal view returns (bool valid) {
        // Call factory's verifyXProof method
        (bool success, bytes memory result) = factory.staticcall(
            abi.encodeWithSignature("verifyXProof((address,address,string,uint128,uint128),bytes)", proof, signature)
        );

        if (!success || result.length == 0) {
            return false;
        }

        return abi.decode(result, (bool));
    }

    /// @notice Get the token symbol
    /// @return The token symbol
    function _getTokenSymbol() internal view returns (string memory) {
        (bool success, bytes memory result) = taxToken.staticcall(abi.encodeWithSignature("symbol()"));
        if (success && result.length > 0) {
            return abi.decode(result, (string));
        }
        return "UNKNOWN";
    }

    /// @notice Convert state to string
    /// @return The state as a string
    function _stateString() internal view returns (string memory) {
        State currentState = state();
        if (currentState == State.ACCUMULATING) {
            return "ACCUMULATING";
        } else if (currentState == State.STREAMING) {
            return "STREAMING";
        } else {
            return "SNOWBALL";
        }
    }

    /// @notice Override revokeRole to prevent revoking guardian's roles
    /// @param role The role to revoke
    /// @param account The account to revoke the role from
    function revokeRole(bytes32 role, address account) public override onlyRole(getRoleAdmin(role)) {
        address guardian = _getGuardian();
        if (account == guardian) {
            revert CannotRevokeGuardianRole();
        }
        super.revokeRole(role, account);
    }
}
