// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./interface/IBridge.sol";
import "./interface/IVaultRouter.sol";
import "../fia_btc/interface/IMintableBurnable.sol";
import "../liquidity_provider/interface/ILPManager.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@btc-light-client/packages/contracts/src/interfaces/IBtcTxVerifier.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title BitVMBridgeV4
 * @notice A bridge contract that facilitates the minting and burning of BTC-pegged tokens
 * @dev This contract implements a Bitcoin bridge using BitVM technology, allowing users to
 *      mint tokens by proving Bitcoin transactions and burn tokens to initiate Bitcoin withdrawals.
 *      The contract is upgradeable and includes reentrancy protection.
 * @custom:security Uses role-based access control for different operational functions
 * @custom:security-contact security@fiammalabs.io
 */
/// @custom:oz-upgrades-from BitVMBridgeV3
contract BitVMBridgeV4 is IBitVMBridge, IInvest, AccessControlUpgradeable, ReentrancyGuardUpgradeable {
    /// @notice Role for business operations including minting and LP management
    bytes32 public constant BUSINESS_ROLE = keccak256("BUSINESS_ROLE");

    /// @notice BTC Peg contract interface for minting and burning operations
    IMintableBurnable public btcPeg;

    /// @notice BTC Tx Verifier contract interface for Bitcoin transaction verification
    IBtcTxVerifier public btcTxVerifier;

    /// @notice Minimum number of Bitcoin block confirmations required for a transaction to be considered valid
    uint256 public minConfirmations;

    /// @notice Mapping to track used inclusion proofs to prevent double-spending
    mapping(bytes32 txid => bool isMinted) private minted;

    /// @notice Maximum number of pegs allowed in a single mint transaction
    uint256 public maxPegsPerMint;

    /// @notice Maximum amount of BTC (in satoshis) that can be minted in a single peg
    uint256 public maxBtcPerMint;

    /// @notice Minimum amount of BTC (in satoshis) that can be minted in a single peg
    uint256 public minBtcPerMint;

    /// @notice Maximum amount of BTC (in satoshis) that can be burned in a single transaction
    uint256 public maxBtcPerBurn;

    /// @notice Minimum amount of BTC (in satoshis) that can be burned in a single transaction
    uint256 public minBtcPerBurn;

    /// @notice Burn pause status
    bool public burnPaused;

    /// @notice Maximum fee rate for burn transactions
    uint256 public maxFeeRate;

    /// @notice Vault router contract interface
    IVaultRouter public vaultRouter;

    /// @notice Chain name, used for intent commitment
    string public chainName;

    /// @notice LP manager contract
    ILPManager public lpManager;

    /// @notice Mapping to track LP withdrawals
    mapping(uint256 => LPWithdraw) public lpWithdraws;

    /// @notice Timeout period in seconds after which LP withdrawals can be refunded, used for refunding LP withdrawals
    uint256 public lpWithdrawTimeout;

    /// @notice Two intent type, used for intent commitment
    bytes32 constant HASH_DEPOSIT = keccak256("deposit");
    bytes32 constant HASH_SWITCH = keccak256("switch");

    /// @dev Custom errors
    error TooManyPegs();
    error InvalidPegAddress();
    error InvalidPegAmount();
    error InvalidPeginAmount();
    error InvalidBurnAmount();
    error InvalidBtcAddress();
    error InvalidBtcPegAddress();
    error BurnPaused();
    error InvalidInclusionProof();
    error MismatchBtcAmount(uint256 _provided, uint256 _btcAmount);
    error InvalidFeeRate();
    error InvalidBurnTime();
    error InvalidVaultRouter();
    error InvalidIntentType();
    error InvalidLPID();
    error InvalidLPWithdrawID();
    error InsufficientAllowance();
    error InvalidLPWithdrawTimeout();
    error InvalidLPWithdrawAmount();

    /// @notice Modifier to check if burn is not paused
    modifier whenBurnNotPaused() {
        if (burnPaused) revert BurnPaused();
        _;
    }

    /// @notice State change events for monitoring and indexing

    /**
     * @notice Emitted when bridge parameters are updated
     * @param maxPegsPerMint New maximum number of pegs per mint operation
     * @param maxBtcPerMint New maximum BTC amount per mint (in satoshis)
     * @param minBtcPerMint New minimum BTC amount per mint (in satoshis)
     * @param maxBtcPerBurn New maximum BTC amount per burn (in satoshis)
     * @param minBtcPerBurn New minimum BTC amount per burn (in satoshis)
     */
    event ParametersChanged(
        uint256 maxPegsPerMint,
        uint256 maxBtcPerMint,
        uint256 minBtcPerMint,
        uint256 maxBtcPerBurn,
        uint256 minBtcPerBurn
    );

    /**
     * @notice Constructor for the logic contract
     * @dev Disables initializers to prevent direct initialization of the logic contract.
     *      This is a security measure for upgradeable contracts deployed behind proxies.
     *      The logic contract should only be initialized through the proxy.
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the BitVMBridge contract with required parameters
     * @dev This function replaces the constructor for upgradeable contracts.
     *      Can only be called once due to the initializer modifier.
     *      Sets up access control, reentrancy protection, and validates all input parameters.
     * @param _admin Address that will become the contract admin
     * @param _btcPegAddr Address of the BTC Peg contract for token operations
     * @param _btcTxVerifierAddr Address of the BTC transaction verifier contract
     * @param _minConfirmations Minimum number of Bitcoin confirmations required
     * @param _lpManager Address of the LP manager contract
     * @param _lpWithdrawTimeout Timeout period in seconds for LP withdrawals
     * @param _chainName Name of the chain
     * @custom:security Must validate all addresses are non-zero to prevent deployment issues
     * @custom:security Uses role-based access control for granular permission management
     * @custom:security Uses setter functions for consistent parameter validation
     */
    function initialize(
        address _admin,
        address _btcPegAddr,
        address _btcTxVerifierAddr,
        address _lpManager,
        uint256 _lpWithdrawTimeout,
        uint256 _minConfirmations,
        string calldata _chainName
    ) external initializer {
        if (_admin == address(0)) revert InvalidPegAddress();
        if (_btcPegAddr == address(0)) revert InvalidBtcPegAddress();

        __AccessControl_init();
        __ReentrancyGuard_init();

        // Grant all roles to the admin initially
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(BUSINESS_ROLE, _admin);

        btcPeg = IMintableBurnable(_btcPegAddr);
        btcTxVerifier = IBtcTxVerifier(_btcTxVerifierAddr);
        minConfirmations = _minConfirmations;
        chainName = _chainName;
        lpManager = ILPManager(_lpManager);
        lpWithdrawTimeout = _lpWithdrawTimeout;
    }

    /**
     * @notice Updates the bridge operational parameters
     * @dev Only callable by addresses with DEFAULT_ADMIN_ROLE. Validates parameter consistency before updating
     * @param _maxPegsPerMint Maximum number of pegs allowed in a single mint transaction
     * @param _maxBtcPerMint Maximum BTC amount per individual mint operation (in satoshis)
     * @param _minBtcPerMint Minimum BTC amount per individual mint operation (in satoshis)
     * @param _maxBtcPerBurn Maximum BTC amount per burn operation (in satoshis)
     * @param _minBtcPerBurn Minimum BTC amount per burn operation (in satoshis)
     * @custom:security Validates that min values don't exceed max values to prevent logical errors
     */
    function setParameters(
        uint256 _maxPegsPerMint,
        uint256 _maxBtcPerMint,
        uint256 _minBtcPerMint,
        uint256 _maxBtcPerBurn,
        uint256 _minBtcPerBurn
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // basic parameter check
        if (_minBtcPerMint > _maxBtcPerMint) revert InvalidPeginAmount();
        if (_minBtcPerBurn > _maxBtcPerBurn) revert InvalidBurnAmount();
        if (_maxPegsPerMint == 0) revert InvalidPegAmount();

        maxPegsPerMint = _maxPegsPerMint;
        maxBtcPerMint = _maxBtcPerMint;
        minBtcPerMint = _minBtcPerMint;
        maxBtcPerBurn = _maxBtcPerBurn;
        minBtcPerBurn = _minBtcPerBurn;
        emit ParametersChanged(_maxPegsPerMint, _maxBtcPerMint, _minBtcPerMint, _maxBtcPerBurn, _minBtcPerBurn);
    }

    function setChainName(string calldata _chainName) external onlyRole(DEFAULT_ADMIN_ROLE) {
        chainName = _chainName;
    }

    /// @notice Pause burn functionality
    function pauseBurn() external onlyRole(DEFAULT_ADMIN_ROLE) {
        burnPaused = true;
    }

    /// @notice Unpause burn functionality
    function unpauseBurn() external onlyRole(DEFAULT_ADMIN_ROLE) {
        burnPaused = false;
    }

    function setLPManager(address _lpManager) external onlyRole(DEFAULT_ADMIN_ROLE) {
        lpManager = ILPManager(_lpManager);
        emit LPManagerUpdated(_lpManager);
    }

    function setLPWithdrawTimeout(uint256 _lpWithdrawTimeout) external onlyRole(DEFAULT_ADMIN_ROLE) {
        lpWithdrawTimeout = _lpWithdrawTimeout;
        emit PWithdrawTimeoutUpdated(_lpWithdrawTimeout);
    }

    function getMinted(bytes32 _txid) public view returns (bool) {
        return minted[_txid];
    }

    /// @notice Internal function to validate Bitcoin transaction from calldata
    /// @param value Transaction value
    /// @param blockNum Block number
    /// @param inclusionProof Bitcoin transaction proof
    /// @param txOutIx Transaction output index
    /// @param destScriptHash Destination script hash
    /// @param amountSats Amount in satoshis
    function _validateBtcTransaction(
        uint256 value,
        uint256 blockNum,
        BtcTxProof calldata inclusionProof,
        uint256 txOutIx,
        bytes32 destScriptHash,
        BitcoinScriptType scriptType,
        uint256 amountSats,
        bool checkOpReturn,
        uint256 opReturnOutIx,
        bytes32 opReturnData
    ) internal view {
        if (amountSats != value) {
            revert MismatchBtcAmount(value, amountSats);
        }

        if (value < minBtcPerMint || value > maxBtcPerMint) {
            revert InvalidPeginAmount();
        }

        bool isValid = btcTxVerifier.verifyPayment(
            minConfirmations,
            blockNum,
            inclusionProof,
            txOutIx,
            destScriptHash,
            scriptType,
            amountSats,
            checkOpReturn,
            opReturnOutIx,
            opReturnData
        );
        if (!isValid) revert InvalidInclusionProof();
    }

    /// @notice Calculate intent hash for investment
    /// @param sidechainUser User's sidechain address
    /// @param amount Amount in satoshis
    /// @param vaultAddress Vault contract address
    /// @param intentType Intent type identifier ("deposit" or "switch")
    /// @return hash SHA256 hash of the intent
    function calculateIntentHash(
        address sidechainUser,
        uint256 amount,
        address vaultAddress,
        string calldata intentType
    ) public view returns (bytes32 hash) {
        hash = sha256(abi.encodePacked(sidechainUser, amount, vaultAddress, chainName, intentType));
    }

    /// @notice Check if the intent type is valid
    /// @param _intentType Intent type identifier ("deposit" or "switch")
    /// @return isValid True if the intent type is valid, false otherwise
    /// @dev This function is used to validate the intent type
    /// @custom:security Prevents invalid intent types from being used
    function isValidIntentType(string memory _intentType) public pure returns (bool) {
        bytes32 intentTypeHash = keccak256(abi.encodePacked(_intentType));
        return intentTypeHash == HASH_DEPOSIT || intentTypeHash == HASH_SWITCH;
    }

    /**
     * @notice Mints tokens by verifying Bitcoin transaction inclusion proofs
     * @dev Critical function that validates Bitcoin payments and mints corresponding tokens.
     * @param pegs Array of peg data containing Bitcoin transaction proofs and recipient information
     * @custom:security Verifies each Bitcoin transaction proof before minting
     * @custom:security Prevents double-spending by tracking used inclusion proofs
     * @custom:security Validates amounts are within configured limits
     */
    function mint(Peg[] calldata pegs) public onlyRole(BUSINESS_ROLE) nonReentrant {
        if (pegs.length > maxPegsPerMint) revert TooManyPegs();
        if (pegs.length == 0) revert InvalidPegAmount();

        for (uint256 i = 0; i < pegs.length; i++) {
            Peg calldata peg = pegs[i];

            bytes32 txid = peg.inclusionProof.txId;
            // Skip if already processed
            if (minted[txid]) {
                continue;
            }
            // Mark as minted in outer scope
            minted[txid] = true;

            _validateBtcTransaction(
                peg.value,
                peg.blockNum,
                peg.inclusionProof,
                peg.txOutIx,
                peg.destScriptHash,
                BitcoinScriptType.P2WSH,
                peg.amountSats,
                false,
                0,
                0
            );

            btcPeg.mint(peg.to, peg.value);
            emit Mint(peg.to, peg.value);
        }
    }

    /**
     * @notice Mints tokens for investment
     * @dev Validates investment transactions and mints corresponding tokens.
     *      Only callable by addresses with BUSINESS_ROLE.
     * @param invests Array of investment data containing transaction proofs and recipient information
     * @custom:security Validates all investment transactions before minting
     * @custom:security Prevents double-spending by tracking used inclusion proofs
     * @custom:security Validates amounts are within configured limits
     */
    function mint_for_invest(Invest[] calldata invests) public onlyRole(BUSINESS_ROLE) nonReentrant {
        if (invests.length > maxPegsPerMint) revert TooManyPegs();
        if (invests.length == 0) revert InvalidPegAmount();
        if (address(vaultRouter) == address(0)) revert InvalidVaultRouter();

        // Track which transactions to skip
        bool[] memory shouldSkip = new bool[](invests.length);

        // Validate all transactions and calculate total amount
        uint256 totalAmount = 0;
        for (uint256 i = 0; i < invests.length; i++) {
            Invest calldata invest = invests[i];

            bytes32 txid = invest.inclusionProof.txId;

            // Skip if already processed
            if (minted[txid]) {
                shouldSkip[i] = true;
                continue;
            }

            // Mark as minted in outer scope
            minted[txid] = true;

            if (!isValidIntentType(invest.intentType)) {
                revert InvalidIntentType();
            }

            bytes32 intentHash =
                calculateIntentHash(invest.sidechainUser, invest.value, invest.vault, invest.intentType);

            _validateBtcTransaction(
                invest.value,
                invest.blockNum,
                invest.inclusionProof,
                invest.txOutIx,
                invest.destScriptHash,
                BitcoinScriptType.P2WSH,
                invest.amountSats,
                true,
                invest.opReturnOutIx,
                intentHash
            );

            totalAmount += invest.value;
        }

        // Only mint if there's a positive total amount
        if (totalAmount > 0) {
            // Mint total amount once
            btcPeg.mint(address(this), totalAmount);

            // Check and update allowance once for total amount
            address token = address(btcPeg);
            uint256 currentAllowance = IERC20(token).allowance(address(this), address(vaultRouter));
            if (currentAllowance < totalAmount) {
                SafeERC20.safeIncreaseAllowance(IERC20(token), address(vaultRouter), totalAmount - currentAllowance);
            }
        }

        // Process deposits and emit events
        for (uint256 i = 0; i < invests.length; i++) {
            if (shouldSkip[i]) {
                continue;
            }

            Invest calldata invest = invests[i];

            vaultRouter.depositNative(invest.sidechainUser, invest.vault, invest.value);

            emit InvestMinted(invest.sidechainUser, invest.inclusionProof.txId, invest.value, invest.vault);
        }
    }

    /**
     * @notice Burns tokens to initiate a Bitcoin withdrawal
     * @dev Burns tokens from the caller's balance and emits an event for off-chain processing.
     *      Protected against reentrancy attacks.
     * @param _btc_addr Bitcoin address where the withdrawn funds should be sent
     * @param _value Amount of tokens to burn (in satoshis)
     * @custom:security Validates burn amount is within allowed limits
     * @custom:security The actual Bitcoin transaction must be processed off-chain
     */
    function burn(string calldata _btc_addr, uint256 _fee_rate, uint256 _value, uint256 _operator_id)
        public
        nonReentrant
        whenBurnNotPaused
    {
        _validateBurnRestrictions(_value, _fee_rate);

        btcPeg.burn(msg.sender, _value);
        emit Burn(msg.sender, _btc_addr, _fee_rate, _value, _operator_id);
    }

    /**
     * @notice Withdraws tokens through the LP mode
     * @dev Validates LP withdrawal parameters and processes the withdrawal.
     *      Only callable when burn is not paused.
     * @param _withdraw_id Unique identifier for the withdrawal
     * @param _btc_addr Bitcoin address where the withdrawn funds should be sent
     * @param _receiver_script_hash Script hash of the receiver
     * @param _receive_min_amount Minimum amount of BTC to receive (in satoshis)
     * @param _lp_id LP ID to which the withdrawal belongs
     * @param _value Amount of tokens to withdraw (in satoshis)
     * @param _fee_rate Fee rate for the withdrawal
     * @custom:security Validates withdrawal parameters
     * @custom:security Prevents double-spending by tracking used inclusion proofs
     * @custom:security Validates amounts are within configured limits
     */
    function withdrawByLP(
        uint256 _withdraw_id,
        string calldata _btc_addr,
        bytes32 _receiver_script_hash,
        uint256 _receive_min_amount,
        uint256 _lp_id,
        uint256 _value,
        uint256 _fee_rate
    ) external nonReentrant whenBurnNotPaused {
        _validateBurnRestrictions(_value, _fee_rate);

        if (_withdraw_id == 0 || lpWithdraws[_withdraw_id].id != 0) {
            revert InvalidLPWithdrawID();
        }

        LPInfo memory lpInfo = lpManager.getLPInfo(_lp_id);
        if (lpInfo.status != LPStatus.ACTIVE) revert InvalidLPID();

        lpWithdraws[_withdraw_id] = LPWithdraw({
            id: _withdraw_id,
            withdraw_amount: _value,
            receiver_addr: _btc_addr,
            receiver_script_hash: _receiver_script_hash,
            receive_min_amount: _receive_min_amount,
            fee_rate: _fee_rate,
            timestamp: block.timestamp,
            lp_id: _lp_id
        });

        SafeERC20.safeTransferFrom(IERC20(address(btcPeg)), msg.sender, address(this), _value);
        emit WithdrawByLP(msg.sender, _withdraw_id, _btc_addr, _fee_rate, _value, _lp_id, _receive_min_amount);
    }

    /**
     * @notice Claims an LP withdrawal
     * @dev Validates the LP withdrawal parameters and processes the claim.
     *      Only callable by addresses with BUSINESS_ROLE.
     * @param _lp_claim_infos Information about the LP withdrawals to claim
     * @custom:security Validates the LP withdrawal parameters
     * @custom:security Prevents double-spending by tracking used inclusion proofs
     */
    function claimLPWithdraw(LPClaimInfo[] calldata _lp_claim_infos) external nonReentrant onlyRole(BUSINESS_ROLE) {
        for (uint256 i = 0; i < _lp_claim_infos.length; i++) {
            LPClaimInfo calldata _lp_claim_info = _lp_claim_infos[i];

            LPWithdraw memory lpWithdraw = lpWithdraws[_lp_claim_info.withdraw_id];
            if (lpWithdraw.id == 0) revert InvalidLPWithdrawID();
            if (lpWithdraw.receive_min_amount > _lp_claim_info.amountSats) revert InvalidLPWithdrawAmount();

            bool isValid = btcTxVerifier.verifyPayment(
                minConfirmations,
                _lp_claim_info.blockNum,
                _lp_claim_info.inclusionProof,
                _lp_claim_info.txOutIx,
                lpWithdraw.receiver_script_hash,
                BitcoinScriptType.P2TR,
                _lp_claim_info.amountSats,
                false,
                0,
                0
            );
            if (!isValid) revert InvalidInclusionProof();

            delete lpWithdraws[_lp_claim_info.withdraw_id];
            LPInfo memory lpInfo = lpManager.getLPInfo(lpWithdraw.lp_id);
            SafeERC20.safeTransfer(IERC20(address(btcPeg)), lpInfo.evm_addr, lpWithdraw.withdraw_amount);
            emit ClaimLPWithdraw(lpWithdraw.id, lpInfo.id, lpInfo.evm_addr, lpWithdraw.withdraw_amount);
        }
    }

    /**
     * @notice Refunds an LP withdrawal
     * @dev Validates the LP withdrawal parameters and processes the refund.
     *      Only callable by addresses with BUSINESS_ROLE.
     * @param _withdraw_id Unique identifier for the withdrawal
     * @param _receiver Address to which the withdrawn funds should be sent
     * @custom:security Validates the LP withdrawal parameters
     */
    function refundLPWithdraw(uint256 _withdraw_id, address _receiver) external nonReentrant onlyRole(BUSINESS_ROLE) {
        LPWithdraw memory lpWithdraw = lpWithdraws[_withdraw_id];
        if (lpWithdraw.id == 0) revert InvalidLPWithdrawID();
        if (lpWithdraw.timestamp + lpWithdrawTimeout > block.timestamp) {
            revert InvalidLPWithdrawTimeout();
        }

        delete lpWithdraws[_withdraw_id];
        SafeERC20.safeTransfer(IERC20(address(btcPeg)), _receiver, lpWithdraw.withdraw_amount);
        emit RefundLPWithdraw(lpWithdraw.id, _receiver, lpWithdraw.withdraw_amount);
    }

    /// @notice Set the maximum fee rate for burn transactions
    function setMaxFeeRate(uint256 _maxFeeRate) external onlyRole(DEFAULT_ADMIN_ROLE) {
        maxFeeRate = _maxFeeRate;
    }

    /// @notice Set the minimum number of confirmations required for a Bitcoin transaction to be considered valid
    function setMinConfirmations(uint256 _minConfirmations) external onlyRole(DEFAULT_ADMIN_ROLE) {
        minConfirmations = _minConfirmations;
    }

    /// @notice Set the address of the BTC transaction verifier contract
    function setBtcTxVerifier(address _btcTxVerifierAddr) external onlyRole(DEFAULT_ADMIN_ROLE) {
        btcTxVerifier = IBtcTxVerifier(_btcTxVerifierAddr);
    }

    /// @notice Set the address of the vault router contract
    function setVaultRouter(address _vaultRouter) external onlyRole(DEFAULT_ADMIN_ROLE) {
        vaultRouter = IVaultRouter(_vaultRouter);
    }

    function setBtcPeg(address _btcPeg) external onlyRole(DEFAULT_ADMIN_ROLE) {
        btcPeg = IMintableBurnable(_btcPeg);
    }

    /**
     * @notice Grant business role to an address
     * @dev Only callable by addresses with DEFAULT_ADMIN_ROLE
     * @param _business Address to grant the business role to
     */
    function grantBusinessRole(address _business) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _grantRole(BUSINESS_ROLE, _business);
    }

    /**
     * @notice Revoke business role from an address
     * @dev Only callable by addresses with DEFAULT_ADMIN_ROLE
     * @param _business Address to revoke the business role from
     */
    function revokeBusinessRole(address _business) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _revokeRole(BUSINESS_ROLE, _business);
    }

    /// @notice Validate burn/withdraw parameters for restricted users
    function _validateBurnRestrictions(uint256 _value, uint256 _fee_rate) internal view {
        if (_value < minBtcPerBurn || _value > maxBtcPerBurn) {
            revert InvalidBurnAmount();
        }

        if (_fee_rate == 0 || _fee_rate > maxFeeRate) {
            revert InvalidFeeRate();
        }
    }
}
