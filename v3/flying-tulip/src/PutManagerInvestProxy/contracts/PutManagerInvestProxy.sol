// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

interface IPutManager {
    function invest(
        address token,
        uint256 amount,
        address recipient,
        uint256 proofAmount,
        bytes32[] calldata proofWL
    )
        external
        returns (uint256 id);
}

/**
 * @notice A whitelisted proxy payer for PutManager.invest that enforces a separate (per-user) ACL.
 * @dev Design notes:
 * - Users approve this contract to pull collateral.
 * - This contract transfers collateral into itself and then calls PutManager.invest as msg.sender (payer).
 * - PutManager mints the pFT to `recipient`.
 * - To avoid PutManager ftACL tracking cap usage against this proxy (shared across all users),
 *   whitelist this proxy with a leaf `(proxy, address(0), 0)` and keep `putManagerProofAmount = 0`.
 *   The PutManager proof for this proxy (`proofWL`) is stored on-chain in this contract.
 */
contract PutManagerInvestProxy is Ownable, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;

    IPutManager public immutable putManager;

    // ---- User ACL (Merkle) ----
    bytes32 public merkleRoot;
    mapping(address account => mapping(address token => uint256 invested)) public amountInvested;

    // ---- PutManager ACL proof (Merkle) ----
    // Used when calling PutManager.invest as this proxy (payer = this contract).
    // Recommendation: whitelist this proxy with a leaf (proxy, address(0), 0) and use `putManagerProofAmount = 0`
    // to avoid PutManager ftACL cap accounting aggregating all users into this proxy address.
    uint256 public putManagerProofAmount;
    bytes32[] internal _putManagerProofWL;

    // ---- Caller ACL (on-chain allowlist) ----
    mapping(address caller => bool allowed) public allowedCallers;

    event MerkleRootUpdated(bytes32 indexed newRoot);
    event PutManagerProofUpdated(uint256 proofAmount, bytes32[] proofWL);
    event AllowedCallerUpdated(address indexed caller, bool allowed);
    event ProxiedInvest(
        address indexed payer,
        address indexed recipient,
        address indexed token,
        uint256 amount,
        uint256 id
    );
    event TokenSwept(address indexed token, address indexed to, uint256 amount);

    error ftInvestProxyZeroAddress();
    error ftInvestProxyZeroRoot();
    error ftInvestProxyNotAllowedCaller();
    error ftInvestProxyNotWhitelisted();
    error ftInvestProxyCapReached();
    error ftInvestProxyInvalidAmount();
    error ftInvestProxyZeroRecipient();
    error ftInvestProxyNothingToSweep();
    error ftInvestProxyArrayLengthMismatch();
    error ftInvestProxyTotalAmountMismatch();

    modifier onlyAllowedCaller() {
        if (msg.sender != owner() && !allowedCallers[msg.sender]) {
            revert ftInvestProxyNotAllowedCaller();
        }
        _;
    }

    constructor(address _putManager, bytes32 root) Ownable(msg.sender) {
        if (_putManager == address(0)) revert ftInvestProxyZeroAddress();
        if (root == bytes32(0)) revert ftInvestProxyZeroRoot();
        putManager = IPutManager(_putManager);
        merkleRoot = root;
        emit MerkleRootUpdated(root);
    }

    function updateMerkleRoot(bytes32 newRoot) external onlyOwner {
        if (newRoot == bytes32(0)) revert ftInvestProxyZeroRoot();
        merkleRoot = newRoot;
        emit MerkleRootUpdated(newRoot);
    }

    function setPutManagerProof(
        uint256 newProofAmount,
        bytes32[] calldata newProofWL
    )
        external
        onlyOwner
    {
        putManagerProofAmount = newProofAmount;
        _putManagerProofWL = newProofWL;
        emit PutManagerProofUpdated(newProofAmount, newProofWL);
    }

    function setAllowedCaller(address caller, bool allowed) external onlyOwner {
        if (caller == address(0)) revert ftInvestProxyZeroAddress();
        allowedCallers[caller] = allowed;
        emit AllowedCallerUpdated(caller, allowed);
    }

    /**
     * @dev Verify if an address is whitelisted using merkle proof.
     * Tries all possible combinations of parameters:
     * - asset can be: actual asset or address(0)
     * - amount can be: actual amount or 0
     */
    function isWhitelisted(
        address who,
        address asset,
        uint256 amount,
        bytes32[] calldata proof
    )
        public
        view
        returns (bool)
    {
        bytes32 leaf;

        // 1. Exact match: specific asset, and amount
        leaf = keccak256(bytes.concat(keccak256(abi.encode(who, asset, amount))));
        if (MerkleProof.verify(proof, merkleRoot, leaf)) {
            return true;
        }

        // 2. Specific asset, any amount
        leaf = keccak256(bytes.concat(keccak256(abi.encode(who, asset, uint256(0)))));
        if (MerkleProof.verify(proof, merkleRoot, leaf)) {
            return true;
        }

        // 3. Any asset & amount
        leaf = keccak256(bytes.concat(keccak256(abi.encode(who, address(0), uint256(0)))));
        if (MerkleProof.verify(proof, merkleRoot, leaf)) {
            return true;
        }
        return false;
    }

    /**
     * @notice Public invest: payer is msg.sender, recipient can be any address.
     * @param token Collateral token.
     * @param amount Collateral amount.
     * @param recipient pFT recipient in PutManager.
     * @param proofAmount User ACL cap (0 = unlimited).
     * @param proofWL User ACL merkle proof.
     */
    function invest(
        address token,
        uint256 amount,
        address recipient,
        uint256 proofAmount,
        bytes32[] calldata proofWL
    )
        external
        nonReentrant
        returns (uint256 id)
    {
        id = _invest(msg.sender, token, amount, recipient, proofAmount, proofWL);
        emit ProxiedInvest(msg.sender, recipient, token, amount, id);
    }

    /**
     * @notice Permissioned invest on behalf of `from`, minting the pFT back to `from`.
     * @dev Caller must be owner or explicitly allowlisted via `setAllowedCaller`.
     *      This path intentionally does not require a user merkle proof.
     */
    function investFor(
        address from,
        address token,
        uint256 amount
    )
        external
        nonReentrant
        onlyAllowedCaller
        returns (uint256 id)
    {
        id = _investWithoutUserACL(from, token, amount, from);
        emit ProxiedInvest(from, from, token, amount, id);
    }

    /**
     * @notice Permissioned self-invest (payer and recipient are msg.sender).
     * @dev Caller must be owner or explicitly allowlisted via `setAllowedCaller`.
     *      This path intentionally does not require a user merkle proof.
     */
    function investFor(
        address token,
        uint256 amount,
        address recipient
    )
        external
        nonReentrant
        onlyAllowedCaller
        returns (uint256 id)
    {
        id = _investWithoutUserACL(msg.sender, token, amount, recipient);
        emit ProxiedInvest(msg.sender, recipient, token, amount, id);
    }

    /**
     * @notice Permissioned batch invest on behalf of many payers, minting each pFT back to its payer.
     * @dev Caller must be owner or explicitly allowlisted via `setAllowedCaller`.
     *      This path intentionally does not require a user merkle proof.
     */
    function investForBatch(
        address[] calldata from,
        address token,
        uint256[] calldata amounts
    )
        external
        nonReentrant
        onlyAllowedCaller
        returns (uint256[] memory ids)
    {
        uint256 length = from.length;
        if (length == 0) revert ftInvestProxyInvalidAmount();
        if (length != amounts.length) revert ftInvestProxyArrayLengthMismatch();

        ids = new uint256[](length);
        for (uint256 i; i < length; i++) {
            uint256 amount = amounts[i];
            if (amount == 0) revert ftInvestProxyInvalidAmount();

            address payer = from[i];
            if (payer == address(0)) revert ftInvestProxyZeroAddress();

            uint256 id = _investWithoutUserACL(payer, token, amount, payer);
            ids[i] = id;
            emit ProxiedInvest(payer, payer, token, amount, id);
        }
    }

    /**
     * @notice Permissioned batch invest from msg.sender to many recipients, using a single ERC20 transfer.
     * @dev Caller must be owner or explicitly allowlisted via `setAllowedCaller`.
     *      This path intentionally does not require a user merkle proof.
     * @param token Collateral token.
     * @param recipients pFT recipients in PutManager.
     * @param amounts Collateral amounts per recipient.
     * @param totalAmount Total collateral to pull from msg.sender (must equal sum(amounts)).
     */
    function investForBatch(
        address token,
        address[] calldata recipients,
        uint256[] calldata amounts,
        uint256 totalAmount
    )
        external
        nonReentrant
        onlyAllowedCaller
        returns (uint256[] memory ids)
    {
        uint256 length = recipients.length;
        if (length == 0) revert ftInvestProxyInvalidAmount();
        if (length != amounts.length) revert ftInvestProxyArrayLengthMismatch();
        if (totalAmount == 0) revert ftInvestProxyInvalidAmount();

        uint256 sum;
        for (uint256 i; i < length; i++) {
            address recipient = recipients[i];
            if (recipient == address(0)) revert ftInvestProxyZeroRecipient();

            uint256 amount = amounts[i];
            if (amount == 0) revert ftInvestProxyInvalidAmount();
            sum += amount;
        }
        if (sum != totalAmount) revert ftInvestProxyTotalAmountMismatch();

        IERC20(token).safeTransferFrom(msg.sender, address(this), totalAmount);
        IERC20(token).forceApprove(address(putManager), totalAmount);

        ids = new uint256[](length);
        for (uint256 i; i < length; i++) {
            uint256 amount = amounts[i];
            address recipient = recipients[i];

            uint256 id = putManager.invest(
                token, amount, recipient, putManagerProofAmount, _putManagerProofWL
            );
            ids[i] = id;
            emit ProxiedInvest(msg.sender, recipient, token, amount, id);
        }

        // Safety: do not leave a lingering PutManager allowance.
        IERC20(token).forceApprove(address(putManager), 0);
    }

    function _invest(
        address payer,
        address token,
        uint256 amount,
        address recipient,
        uint256 proofAmount,
        bytes32[] calldata proofWL
    )
        internal
        returns (uint256 id)
    {
        if (recipient == address(0)) revert ftInvestProxyZeroRecipient();
        if (amount == 0) revert ftInvestProxyInvalidAmount();
        if (!isWhitelisted(payer, token, proofAmount, proofWL)) {
            revert ftInvestProxyNotWhitelisted();
        }

        if (proofAmount != 0) {
            uint256 newInvestedAmount = amountInvested[payer][token] + amount;
            if (newInvestedAmount > proofAmount) revert ftInvestProxyCapReached();
            amountInvested[payer][token] = newInvestedAmount;
        }

        IERC20(token).safeTransferFrom(payer, address(this), amount);
        IERC20(token).forceApprove(address(putManager), amount);

        // Call PutManager as the whitelisted payer (this proxy).
        id = putManager.invest(token, amount, recipient, putManagerProofAmount, _putManagerProofWL);
    }

    function _investWithoutUserACL(
        address payer,
        address token,
        uint256 amount,
        address recipient
    )
        internal
        returns (uint256 id)
    {
        if (recipient == address(0)) revert ftInvestProxyZeroRecipient();
        if (amount == 0) revert ftInvestProxyInvalidAmount();

        IERC20(token).safeTransferFrom(payer, address(this), amount);
        IERC20(token).forceApprove(address(putManager), amount);

        // Call PutManager as the whitelisted payer (this proxy).
        id = putManager.invest(token, amount, recipient, putManagerProofAmount, _putManagerProofWL);
    }

    function getPutManagerProofWL() external view returns (bytes32[] memory) {
        return _putManagerProofWL;
    }

    function sweepERC20(
        address token,
        address to
    )
        external
        nonReentrant
        onlyOwner
        returns (uint256 amount)
    {
        if (token == address(0) || to == address(0)) revert ftInvestProxyZeroAddress();
        amount = IERC20(token).balanceOf(address(this));
        if (amount == 0) revert ftInvestProxyNothingToSweep();

        // Safety: revoke any PutManager allowance before transferring away funds.
        IERC20(token).forceApprove(address(putManager), 0);
        IERC20(token).safeTransfer(to, amount);
        emit TokenSwept(token, to, amount);
    }
}
