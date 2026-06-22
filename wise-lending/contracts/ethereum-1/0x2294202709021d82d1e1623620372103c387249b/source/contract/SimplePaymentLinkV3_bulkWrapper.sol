// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/// @title BulkDepositWrapper
/// @author Bitcoin.com
/// @notice Wrapper contract for creating, claiming, and withdrawing bulk anonymous deposits

interface ISimplePaymentLinkV3 {

    function depositAnonETH(
        uint256 deadline,
        bytes32 commitment
    )
        external
        payable
        returns (uint256 id);

    function depositAnonERC20(
        address token,
        uint256 amount,
        uint256 deadline,
        bytes32 commitment
    )
        external
        returns (uint256 id);

    function withdrawAnon(
        uint256 depositId
    )
        external;

    function revealAndClaimAnon(
        uint256 depositId,
        bytes32 secret,
        uint256 nonce
    )
        external;

    function commitClaim(
        uint256 depositId,
        bytes32 commitment
    )
        external;

    function anonDeposits(
        uint256 id
    )
        external
        view
        returns (
            address depositor,
            address token,
            uint256 amount,
            uint256 deadline,
            bytes32 commitment,
            bool claimed,
            address claimedBy,
            address committedClaimer,
            uint256 commitTimestamp
        );
}

contract BulkDepositWrapper is Ownable, ReentrancyGuard {

    using SafeERC20 for IERC20;

    ISimplePaymentLinkV3 public immutable paymentLink;

    /// @notice Batch metadata with explicit deposit IDs
    struct BulkBatch {
        address depositor;
        address token;
        uint256 amountEach;
        uint256 totalDeposits;
        uint256 firstDepositId;
        uint256 deadline;
        uint256 createdAt;
        uint256[] depositIds;  // Explicit storage of deposit IDs
    }

    mapping(uint256 batchId => BulkBatch batch) public bulkBatches;
    uint256 public nextBatchId = 1;

    /// @notice Track who initiated bulk claim commitments to prevent front-running
    /// @dev Maps keccak256(depositIds) => claimer address
    mapping(bytes32 => address) private bulkClaimCommitments;

    // ============ Events ============

    event BulkBatchCreated(
        uint256 indexed batchId,
        address indexed depositor,
        address token,
        uint256 totalDeposits,
        uint256 amountEach,
        uint256 deadline,
        uint256 firstDepositId,
        uint256[] depositIds
    );

    event BulkWithdrawn(
        uint256 indexed batchId,
        address indexed depositor,
        uint256[] depositIds,
        uint256 totalAmount
    );

    event BulkClaimed(
        address indexed claimant,
        uint256[] depositIds,
        uint256 totalPayout
    );

    // ============ Errors ============

    error ZeroAddress();
    error ZeroAmount();
    error InvalidCount();
    error AmountTooSmall();
    error InvalidDeadline();
    error InvalidCommitment();
    error TransferFailed();
    error DepositFailed();
    error NotBatchDepositor();
    error DepositNotFromBatch();
    error WithdrawFailed();
    error ArrayLengthMismatch();
    error ClaimFailed();

    // ============ Constructor ============

    constructor(
        address _paymentLinkContract
    )
        Ownable(msg.sender)
    {
        paymentLink = ISimplePaymentLinkV3(
            _paymentLinkContract
        );
    }

    // ============ Bulk Deposit Functions ============

    function depositBulkAnonETH(
        uint256 _deadline,
        bytes32[] calldata _commitments
    )
        external
        payable
        nonReentrant
        returns (
            uint256 batchId, uint256[]
            memory depositIds
        )
    {
        uint256 count = _commitments.length;

        if (count == 0 || count > 100) {
            revert InvalidCount();
        }

        if (msg.value == 0) {
            revert ZeroAmount();
        }

        if (_deadline <= block.timestamp) {
            revert InvalidDeadline();
        }

        uint256 amountEach = msg.value / count;

        if (amountEach == 0) {
            revert AmountTooSmall();
        }

        depositIds = new uint256[](
            count
        );

        uint256 firstId;

        for (uint256 i; i < count;) {

            bytes32 commitment = _commitments[i];

            if (commitment == bytes32(0)) {
                revert InvalidCommitment();
            }

            uint256 id = paymentLink.depositAnonETH{
                value: amountEach
            }(
                _deadline,
                commitment
            );

            depositIds[i] = id;

            if (i == 0) firstId = id;

            unchecked { ++i; }
        }

        batchId = nextBatchId;
        unchecked { ++nextBatchId; }

        bulkBatches[batchId] = BulkBatch({
            depositor: msg.sender,
            token: address(0),
            amountEach: amountEach,
            totalDeposits: count,
            firstDepositId: firstId,
            deadline: _deadline,
            createdAt: block.timestamp,
            depositIds: depositIds
        });

        emit BulkBatchCreated(
            batchId,
            msg.sender,
            address(0),
            count,
            amountEach,
            _deadline,
            firstId,
            depositIds
        );

        // Refund dust
        uint256 dust = msg.value - (
            amountEach * count
        );

        if (dust == 0) {
            return (
                batchId,
                depositIds
            );
        }

        _transferETH(
            msg.sender,
            dust
        );
    }

    /// @notice Create multiple anonymous ERC20 deposits in one transaction
    /// @param _token ERC20 token address
    /// @param _totalAmount Total amount to deposit (will be divided equally)
    /// @param _deadline Unix timestamp for all deposits
    /// @param _commitments Array of commitment hashes (max 200)
    /// @return batchId The batch ID for tracking
    /// @return depositIds Array of deposit IDs created in the core contract
    function depositBulkAnonERC20(
        address _token,
        uint256 _totalAmount,
        uint256 _deadline,
        bytes32[] calldata _commitments
    )
        external
        nonReentrant
        returns (
            uint256 batchId,
            uint256[] memory depositIds
        )
    {
        uint256 count = _commitments.length;
        if (count == 0 || count > 100) revert InvalidCount();
        if (_totalAmount == 0) revert ZeroAmount();
        if (_token == address(0)) revert ZeroAddress();
        if (_deadline <= block.timestamp) revert InvalidDeadline();

        uint256 amountEach = _totalAmount / count;
        if (amountEach == 0) revert AmountTooSmall();

        uint256 actualTotal = amountEach
            * count;

        // Pull tokens from user to this contract
        IERC20(_token).safeTransferFrom(
            msg.sender,
            address(this),
            actualTotal
        );

        // Gas optimization: Approve total amount once (not per deposit)
        IERC20(_token).forceApprove(
            address(paymentLink),
            actualTotal
        );

        depositIds = new uint256[](
            count
        );

        uint256 firstId;

        for (uint256 i; i < count;) {
            bytes32 commitment = _commitments[i];
            if (commitment == bytes32(0)) {
                revert InvalidCommitment();
            }

            // Core contract uses transferFrom, decrements allowance
            uint256 id = paymentLink.depositAnonERC20(
                _token,
                amountEach,
                _deadline,
                commitment
            );
            depositIds[i] = id;

            if (i == 0) firstId = id;

            unchecked { ++i; }
        }

        // Clear any remaining approval (defensive)
        IERC20(_token).forceApprove(
            address(paymentLink),
            0
        );

        batchId = nextBatchId;
        unchecked { ++nextBatchId; }

        bulkBatches[batchId] = BulkBatch({
            depositor: msg.sender,
            token: _token,
            amountEach: amountEach,
            totalDeposits: count,
            firstDepositId: firstId,
            deadline: _deadline,
            createdAt: block.timestamp,
            depositIds: depositIds
        });

        emit BulkBatchCreated(
            batchId,
            msg.sender,
            _token,
            count,
            amountEach,
            _deadline,
            firstId,
            depositIds
        );
    }

    // ============ Withdraw Functions ============

    /// @notice Withdraw expired bulk deposits (single deposit)
    /// @param _batchId The batch ID that contains the deposit
    /// @param _depositId The deposit ID to withdraw
    function withdrawBulkAnon(
        uint256 _batchId,
        uint256 _depositId
    )
        external
        nonReentrant
    {
        BulkBatch storage batch = bulkBatches[
            _batchId
        ];

        if (batch.depositor != msg.sender) {
            revert NotBatchDepositor();
        }

        // Verify deposit is in batch's explicit deposit IDs
        bool found;
        uint256[] memory batchIds = batch.depositIds;
        for (uint256 i; i < batchIds.length;) {
            if (batchIds[i] == _depositId) {
                found = true;
                break;
            }
            unchecked { ++i; }
        }
        if (!found) {
            revert DepositNotFromBatch();
        }

        // Get deposit info before withdrawal
        (
            ,
            address token
            ,
            uint256 amount
            ,
            ,
            ,
            ,
            ,
            ,
        ) = paymentLink.anonDeposits(
            _depositId
        );

        // Call main contract's withdrawAnon (this contract is the depositor)
        paymentLink.withdrawAnon(
            _depositId
        );

        // Transfer funds to original depositor
        if (token == address(0)) {
            _transferETH(
                msg.sender,
                amount
            );
        } else {
            IERC20(token).safeTransfer(
                msg.sender,
                amount
            );
        }

        uint256[] memory ids = new uint256[](1);
        ids[0] = _depositId;

        emit BulkWithdrawn(
            _batchId,
            msg.sender,
            ids,
            amount
        );
    }

    /// @notice sBatch withdraw multiple expired bulk deposits
    /// @param _batchId The batch ID that contains the deposits
    /// @param _depositIds Array of deposit IDs to withdraw
    function withdrawBulkAnonBatch(
        uint256 _batchId,
        uint256[] calldata _depositIds
    )
        external
        nonReentrant
    {
        BulkBatch storage batch = bulkBatches[
            _batchId
        ];

        if (batch.depositor != msg.sender) {
            revert NotBatchDepositor();
        }

        uint256[] memory batchDepositIds = batch.depositIds;
        uint256 totalETH;
        address tokenAddr = batch.token;
        uint256 totalERC20;

        for (uint256 i; i < _depositIds.length;) {

            uint256 depositId = _depositIds[i];

            // Verify deposit is in batch's explicit deposit IDs
            bool found;
            for (uint256 j; j < batchDepositIds.length;) {
                if (batchDepositIds[j] == depositId) {
                    found = true;
                    break;
                }
                unchecked { ++j; }
            }
            if (!found) {
                revert DepositNotFromBatch();
            }

            // Get deposit amount before withdrawal
            (
                ,
                ,
                uint256 amount
                ,
                ,
                ,
                ,
                ,
                ,
            ) = paymentLink.anonDeposits(
                depositId
            );

            // Call main contract's withdrawAnon
            paymentLink.withdrawAnon(
                depositId
            );

            if (tokenAddr == address(0)) {
                totalETH += amount;
            } else {
                totalERC20 += amount;
            }

            unchecked { ++i; }
        }

        // Transfer all funds to original depositor
        if (totalETH > 0) {
            _transferETH(
                msg.sender,
                totalETH
            );
        }
        if (totalERC20 > 0) {
            IERC20(tokenAddr).safeTransfer(
                msg.sender,
                totalERC20
            );
        }

        emit BulkWithdrawn(
            _batchId,
            msg.sender,
            _depositIds,
            totalETH + totalERC20
        );
    }

    // ============ Bulk Claim Functions ============

    /// @notice Commit to claiming multiple deposits (step 1 of commit-reveal)
    /// @param _depositIds Array of deposit IDs to commit to claiming
    /// @param _commitments Array of commitment hashes (keccak256(depositId, secret, msg.sender, nonce))
    /// @dev User commits to claiming, then waits REVEAL_DELAY_SECONDS (15 seconds) before calling claimBulkAnonReveal.
    ///      This prevents front-running attacks by reserving the claim for the committer.
    function commitBulkClaim(
        uint256[] calldata _depositIds,
        bytes32[] calldata _commitments
    )
        external
    {
        if (_depositIds.length == 0 || _depositIds.length > 100) {
            revert InvalidCount();
        }

        if (_commitments.length != _depositIds.length) {
            revert ArrayLengthMismatch();
        }

        // Track who initiated this bulk claim commitment to prevent front-running
        bytes32 claimKey = keccak256(abi.encodePacked(_depositIds));
        bulkClaimCommitments[claimKey] = msg.sender;

        for (uint256 i; i < _depositIds.length;) {
            paymentLink.commitClaim(
                _depositIds[i],
                _commitments[i]
            );
            unchecked { ++i; }
        }
    }

    /// @notice Claim multiple anonymous deposits using commit-reveal scheme (step 2)
    /// @param _depositIds Array of deposit IDs to claim
    /// @param _secrets Array of secrets corresponding to each deposit ID
    /// @param _nonces Array of nonces used in the commitment for each deposit
    /// @dev User must have already called commitBulkClaim for each deposit and waited REVEAL_DELAY_SECONDS (15 seconds).
    ///      This function reveals the secrets and claims all deposits in one transaction.
    ///      Safe from front-running because the commitment reserves the claim for the committer.
    function claimBulkAnonReveal(
        uint256[] calldata _depositIds,
        bytes32[] calldata _secrets,
        uint256[] calldata _nonces
    ) external nonReentrant {
        uint256 count = _depositIds.length;
        if (count == 0 || count > 100) revert InvalidCount();
        if (_secrets.length != count) revert ArrayLengthMismatch();
        if (_nonces.length != count) revert ArrayLengthMismatch();

        // Verify this caller initiated the commitment (prevent front-running)
        bytes32 claimKey = keccak256(abi.encodePacked(_depositIds));
        if (bulkClaimCommitments[claimKey] != msg.sender) {
            revert ClaimFailed();
        }

        // Clear the commitment after validation
        delete bulkClaimCommitments[claimKey];

        address tokenType;
        bool isFirstDeposit = true;
        uint256 totalPayout;

        for (uint256 i; i < count;) {
            uint256 depositId = _depositIds[i];
            bytes32 secret = _secrets[i];
            uint256 nonce = _nonces[i];

            // Get deposit token info for validation
            (
                ,
                address token,
                ,
                ,
                ,
                ,
                ,
                ,
            ) = paymentLink.anonDeposits(
                depositId
            );

            // Validate all deposits are same token type
            if (isFirstDeposit) {
                tokenType = token;
                isFirstDeposit = false;
            } else {
                if (token != tokenType) {
                    revert ClaimFailed();
                }
            }

            // FIX: Calculate actual received amount (handles fees from core contract)
            uint256 balanceBefore = (tokenType == address(0))
                ? address(this).balance
                : IERC20(tokenType).balanceOf(address(this));

            // Call main contract's reveal and claim function
            // Core contract deducts fees and sends net amount to this wrapper
            paymentLink.revealAndClaimAnon(
                depositId,
                secret,
                nonce
            );

            uint256 balanceAfter = (tokenType == address(0))
                ? address(this).balance
                : IERC20(tokenType).balanceOf(address(this));

            // Add actual received amount (after fees) to total
            totalPayout += (balanceAfter - balanceBefore);

            unchecked {
                ++i;
            }
        }

        // Transfer claimed funds to the claimer
        if (tokenType == address(0)) {
            // ETH claim
            _transferETH(msg.sender, totalPayout);
        } else {
            // ERC20 claim
            IERC20(tokenType).safeTransfer(msg.sender, totalPayout);
        }

        emit BulkClaimed(
            msg.sender,
            _depositIds,
            totalPayout
        );
    }

    // ============ View Functions ============

    /// @notice Get batch metadata
    function getBatch(
        uint256 batchId
    )
        external
        view
        returns (BulkBatch memory)

    {
        return bulkBatches[
            batchId
        ];
    }

    /// @notice Reconstruct deposit IDs for a batch (if IDs are sequential in core contract)
    /// @dev Only accurate if no other deposits occurred between batch deposits
    /// @dev For reliable IDs, index the BulkBatchCreated event
    function estimateBatchDepositIds(
        uint256 _batchId
    )
        external
        view
        returns (uint256[] memory depositIds)
    {
        BulkBatch memory batch = bulkBatches[
            _batchId
        ];

        uint256 count = batch.totalDeposits;
        uint256 firstId = batch.firstDepositId;

        depositIds = new uint256[](count);

        for (uint256 i; i < count;) {
            depositIds[i] = firstId + i;
            unchecked { ++i; }
        }
    }

    /// @notice Get batches by depositor with pagination
    function getBatchesByDepositor(
        address _depositor,
        uint256 _offset,
        uint256 _limit
    )
        external
        view
        returns (
            uint256[] memory batchIds,
            BulkBatch[] memory batches
        )
    {
        uint256 total = nextBatchId - 1;
        uint256 count;

        for (uint256 i = 1; i <= total;) {
            if (bulkBatches[i].depositor == _depositor) {
                unchecked { ++count; }
            }
            unchecked { ++i; }
        }

        uint256 start = _offset < count
            ? _offset
            : count;

        uint256 end = _offset + _limit;
        if (end > count) end = count;

        uint256 resultCount = end > start ? end - start : 0;

        batchIds = new uint256[](
            resultCount
        );

        batches = new BulkBatch[](
            resultCount
        );

        uint256 found;
        uint256 added;

        for (uint256 i = 1; i <= total && added < resultCount;) {
            if (bulkBatches[i].depositor == _depositor) {
                if (found >= start) {
                    batchIds[added] = i;
                    batches[added] = bulkBatches[i];
                    unchecked { ++added; }
                }
                unchecked { ++found; }
            }
            unchecked { ++i; }
        }
    }

    // ============ Emergency Functions ============

    /// @notice Recover stuck tokens (only owner, for emergency)
    function recoverTokens(
        address _token,
        address _to,
        uint256 _amount
    )
        external
        onlyOwner
    {
        if (_to == address(0)) {
            revert ZeroAddress();
        }

        IERC20(_token).safeTransfer(
            _to,
            _amount
        );
    }

    /// @notice Recover stuck ETH (only owner, for emergency)
    function recoverETH(
        address _to,
        uint256 _amount
    )
        external
        onlyOwner
    {
        if (_to == address(0)) {
            revert ZeroAddress();
        }

        _transferETH(
            _to,
            _amount
        );
    }

    // ============ Internal Functions ============

    function _transferETH(
        address _to,
        uint256 _amount
    )
        internal
    {
        (bool success, ) = _to.call{
            value: _amount
        }("");

        if (!success) {
            revert TransferFailed();
        }
    }

    /// @notice Receive ETH (for refunds)
    receive() external payable {}
}