// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

/// @title SimplePaymentLinkV3
/// @author Bitcoin.com
/// @notice Payment links with direct and anonymous claiming.
/// @dev Supports two link types:
///      1. Direct - recipient address specified, signature-based claiming
///      2. Anonymous - anyone with secret can claim (commitment scheme)
///      For bulk deposits, use BulkDepositWrapper contract.
///      For Piñata giveaways, use separate PinataGiveaway contract.
///      Only standard ERC20s are supported; fee-on-transfer and rebasing tokens are not.
contract SimplePaymentLinkV3 is AccessControl, ReentrancyGuard, EIP712 {

    using SafeERC20 for IERC20;

    bytes32 public constant ADMIN_ROLE = keccak256(
        "ADMIN_ROLE"
    );

    uint16 public feeRateBps;
    address public feeJar;

    // ============ Direct Deposits ============

    struct DirectDeposit {
        address depositor;
        address token;
        uint256 amount;
        uint256 deadline;
        bool claimed;
    }

    mapping(uint256 id => DirectDeposit deposit) public directDeposits;
    mapping(address depositor => uint256[] ids) private directDepositIds;
    uint256 public nextDirectId;

    bytes32 private constant _DIRECT_CLAIM_TYPEHASH =
        keccak256("Claim(uint256 id,address recipient,uint256 deadline)");

    // ============ Anonymous Deposits ============

    struct AnonymousDeposit {
        address depositor;
        address token;
        uint256 amount;
        uint256 deadline;
        bytes32 commitment;
        bool claimed;
        address claimedBy;
        address committedClaimer;
        uint256 commitTimestamp;
    }

    mapping(uint256 id => AnonymousDeposit deposit) public anonDeposits;
    mapping(address depositor => uint256[] ids) private anonDepositIds;
    uint256 public nextAnonId;

    struct ClaimCommitment {
        bytes32 commitment;
        uint256 timestamp;
    }

    mapping(address claimer => mapping(uint256 depositId => ClaimCommitment commitment)) public claimCommitments;

    uint256 public constant REVEAL_DELAY_SECONDS = 15;
    uint256 public constant COMMIT_EXPIRY_SECONDS = 300;

    // ============ Events ============

    event DirectDepositCreated(uint256 indexed id, address indexed depositor, address token, uint256 amount, uint256 deadline);
    event DirectClaimed(uint256 indexed id, address indexed claimant, uint256 amount, uint256 feeTaken);
    event DirectWithdrawn(uint256 indexed id, address indexed depositor);

    event AnonDepositCreated(uint256 indexed id, address indexed depositor, address token, uint256 amount, uint256 deadline, bytes32 commitment);
    event AnonClaimed(uint256 indexed id, address indexed claimant, uint256 amount, uint256 feeTaken);
    event AnonWithdrawn(uint256 indexed id, address indexed depositor);
    event ClaimCommitted(uint256 indexed depositId, address indexed claimer);
    event ClaimCommitmentExpired(uint256 indexed depositId, address indexed claimer);

    event FeeRateUpdated(uint16 newRateBps);
    event FeeJarUpdated(address newJar);
    event OrphanedETHRescued(address indexed to, uint256 amount);

    // ============ Errors ============

    error ZeroAddress();
    error ZeroAmount();
    error InvalidDeadline();
    error InvalidCommitment();
    error DepositNotFound();
    error AlreadyClaimed();
    error Expired();
    error NotExpired();
    error InvalidSignature();
    error NotDepositor();
    error NotAuthorizedRecipient();
    error InvalidSecret();
    error RevealTooEarly();
    error CommitmentMismatch();
    error TransferFailed();
    error MaxFeeExceeded();
    error DepositReserved();
    error NoCommitment();
    error RescueExceedsOrphaned(uint256 requested, uint256 allowed);

    // ============ Constructor ============

    constructor(
        address _initialAdmin
    )
        payable EIP712("SimplePaymentLinkV3", "3")
    {
        _grantRole(
            DEFAULT_ADMIN_ROLE,
            _initialAdmin
        );

        _grantRole(
            ADMIN_ROLE,
            _initialAdmin
        );

        feeJar = _initialAdmin;
    }

    // ============ Direct Deposits ============

    function depositDirectETH(
        uint256 _deadline
    )
        external
        payable
        returns (uint256 id)
    {
        if (msg.value == 0) {
            revert ZeroAmount();
        }

        if (_deadline <= block.timestamp) {
            revert InvalidDeadline();
        }

        id = nextDirectId;
        unchecked { ++nextDirectId; }

        DirectDeposit storage dep = directDeposits[id];

        dep.depositor = msg.sender;
        dep.token = address(0);
        dep.amount = msg.value;
        dep.deadline = _deadline;

        directDepositIds[msg.sender].push(id);

        emit DirectDepositCreated(
            id,
            msg.sender,
            address(0),
            msg.value,
            _deadline
        );
    }

    function depositDirectERC20(
        address _token,
        uint256 _amount,
        uint256 _deadline
    )
        external

        returns (uint256 id)
    {
        if (_amount == 0) {
            revert ZeroAmount();
        }

        if (_token == address(0)) {
            revert ZeroAddress();
        }

        if (_deadline <= block.timestamp) {
            revert InvalidDeadline();
        }

        IERC20(_token).safeTransferFrom(
            msg.sender,
            address(this),
            _amount
        );

        id = nextDirectId;
        unchecked { ++nextDirectId; }

        DirectDeposit storage dep = directDeposits[id];

        dep.depositor = msg.sender;
        dep.token = _token;
        dep.amount = _amount;
        dep.deadline = _deadline;

        directDepositIds[msg.sender].push(id);

        emit DirectDepositCreated(
            id,
            msg.sender,
            _token,
            _amount,
            _deadline
        );
    }

    function claimDirect(
        uint256 id,
        address recipient,
        bytes calldata signature
    )
        external
        nonReentrant

    {
        if (recipient != msg.sender) revert NotAuthorizedRecipient();

        DirectDeposit storage dep = directDeposits[id];
        uint256 amount = dep.amount;
        if (amount == 0) revert DepositNotFound();
        if (dep.claimed) revert AlreadyClaimed();

        uint256 depDeadline = dep.deadline;
        if (block.timestamp > depDeadline) revert Expired();

        bytes32 structHash = keccak256(abi.encode(_DIRECT_CLAIM_TYPEHASH, id, recipient, depDeadline));
        bytes32 digest = _hashTypedDataV4(structHash);
        address signer = ECDSA.recover(digest, signature);
        if (signer != dep.depositor) revert InvalidSignature();

        dep.claimed = true;
        address tokenAddr = dep.token;

        (uint256 payout, uint256 fee) = _calculateFee(amount);

        emit DirectClaimed(id, recipient, payout, fee);

        _transfer(tokenAddr, recipient, payout);
        if (fee != 0) {
            _transfer(tokenAddr, feeJar, fee);
        }
    }

    function withdrawDirect(
        uint256 _id
    )
        external
        nonReentrant

    {
        DirectDeposit storage dep = directDeposits[_id];

        if (dep.depositor != msg.sender) {
            revert NotDepositor();
        }

        if (dep.claimed) {
            revert AlreadyClaimed();
        }

        if (block.timestamp <= dep.deadline) {
            revert NotExpired();
        }

        dep.claimed = true;
        uint256 amount = dep.amount;
        address tokenAddr = dep.token;

        _transfer(
            tokenAddr,
            msg.sender,
            amount
        );

        emit DirectWithdrawn(
            _id,
            msg.sender
        );
    }

    // ============ Anonymous Deposits ============

    function depositAnonETH(
        uint256 _deadline,
        bytes32 _commitment
    )
        external
        payable

        returns (uint256 id)
    {
        if (msg.value == 0) {
            revert ZeroAmount();
        }

        if (_deadline <= block.timestamp) {
            revert InvalidDeadline();
        }

        if (_commitment == bytes32(0)) {
            revert InvalidCommitment();
        }

        id = nextAnonId;
        unchecked { ++nextAnonId; }

        AnonymousDeposit storage dep = anonDeposits[id];

        dep.depositor = msg.sender;
        dep.token = address(0);
        dep.amount = msg.value;
        dep.deadline = _deadline;
        dep.commitment = _commitment;

        anonDepositIds[msg.sender].push(id);

        emit AnonDepositCreated(
            id, msg.sender, address(0),
            msg.value,
            _deadline,
            _commitment
        );
    }

    function depositAnonERC20(
        address _token,
        uint256 _amount,
        uint256 _deadline,
        bytes32 _commitment
    )
        external

        returns (uint256 id)
    {
        if (_amount == 0) {
            revert ZeroAmount();
        }

        if (_token == address(0)) {
            revert ZeroAddress();
        }

        if (_deadline <= block.timestamp) {
            revert InvalidDeadline();
        }

        if (_commitment == bytes32(0)) {
            revert InvalidCommitment();
        }

        IERC20(_token).safeTransferFrom(
            msg.sender,
            address(this),
            _amount
        );

        id = nextAnonId;
        unchecked { ++nextAnonId; }

        AnonymousDeposit storage dep = anonDeposits[id];

        dep.depositor = msg.sender;
        dep.token = _token;
        dep.amount = _amount;
        dep.deadline = _deadline;
        dep.commitment = _commitment;

        anonDepositIds[msg.sender].push(id);

        emit AnonDepositCreated(
            id,
            msg.sender,
            _token,
            _amount,
            _deadline,
            _commitment
        );
    }

    /// @notice Step 1 of commit-reveal: Commit to claiming (front-running protection)
    /// @dev Caller must commit H(depositId, secret, msg.sender, nonce) with a cryptographically
    ///      random nonce. Do not reuse the same secret across deposits; use a unique nonce per
    ///      commit to avoid predictable commitments. All anonymous claims must use commit then
    ///      revealAndClaimAnon — there is no direct-claim path (plaintext secret would be
    ///      front-runnable).
    function commitClaim(
        uint256 _depositId,
        bytes32 _commitment
    )
        external
    {
        AnonymousDeposit storage dep = anonDeposits[
            _depositId
        ];

        if (dep.amount == 0) {
            revert DepositNotFound();
        }

        if (dep.claimed) {
            revert AlreadyClaimed();
        }

        if (block.timestamp > dep.deadline) {
            revert Expired();
        }

        if (dep.committedClaimer != address(0) &&
            dep.committedClaimer != msg.sender &&
            block.timestamp < dep.commitTimestamp + COMMIT_EXPIRY_SECONDS) {
            revert DepositReserved();
        }

        if (dep.committedClaimer != address(0) && dep.committedClaimer != msg.sender) {
            delete claimCommitments[dep.committedClaimer][_depositId];
        }

        dep.committedClaimer = msg.sender;
        dep.commitTimestamp = block.timestamp;

        claimCommitments[msg.sender][_depositId] = ClaimCommitment({
            commitment: _commitment,
            timestamp: block.timestamp
        });

        emit ClaimCommitted(
            _depositId,
            msg.sender
        );
    }

    /// @notice Step 2 of commit-reveal: Reveal and claim
    /// @dev Reveal (depositId, secret, nonce) must match the commitment from commitClaim.
    ///      Use a random nonce when committing to avoid predictability.
    function revealAndClaimAnon(
        uint256 _depositId,
        bytes32 _secret,
        uint256 _nonce
    )
        external
        nonReentrant

    {
        AnonymousDeposit storage dep = anonDeposits[
            _depositId
        ];

        uint256 amount = dep.amount;

        if (amount == 0) {
            revert DepositNotFound();
        }

        if (dep.claimed) {
            revert AlreadyClaimed();
        }

        if (block.timestamp > dep.deadline) {
            revert Expired();
        }

        if (keccak256(abi.encodePacked(_secret)) != dep.commitment) {
            revert InvalidSecret();
        }

        ClaimCommitment storage cc = claimCommitments[msg.sender][_depositId];
        if (cc.commitment == bytes32(0)) revert NoCommitment();
        if (block.timestamp < cc.timestamp + REVEAL_DELAY_SECONDS) revert RevealTooEarly();

        bytes32 expectedCommitment = keccak256(abi.encode(_depositId, _secret, msg.sender, _nonce));
        if (cc.commitment != expectedCommitment) revert CommitmentMismatch();

        delete claimCommitments[msg.sender][_depositId];

        dep.claimed = true;
        dep.claimedBy = msg.sender;
        dep.committedClaimer = address(0);

        address tokenAddr = dep.token;

        (uint256 payout, uint256 fee) = _calculateFee(
            amount
        );

        emit AnonClaimed(
            _depositId,
            msg.sender,
            payout,
            fee
        );

        _transfer(
            tokenAddr,
            msg.sender,
            payout
        );

        if (fee == 0) {
            return;
        }

        _transfer(
            tokenAddr,
            feeJar,
            fee
        );
    }

    /// @notice Clear expired commitment (allows others to claim)
    function clearExpiredCommitment(
        uint256 _depositId
    )
        external
    {
        AnonymousDeposit storage dep = anonDeposits[
            _depositId
        ];

        if (dep.committedClaimer == address(0)) {
            return;
        }

        if (block.timestamp < dep.commitTimestamp + COMMIT_EXPIRY_SECONDS) {
            revert NotExpired();
        }

        address expiredClaimer = dep.committedClaimer;
        dep.committedClaimer = address(0);
        dep.commitTimestamp = 0;

        delete claimCommitments[expiredClaimer][_depositId];

        emit ClaimCommitmentExpired(
            _depositId,
            expiredClaimer
        );
    }

    function withdrawAnon(
        uint256 _depositId
    )
        external
        nonReentrant
    {
        AnonymousDeposit storage dep = anonDeposits[
            _depositId
        ];

        if (dep.depositor != msg.sender) {
            revert NotDepositor();
        }

        if (dep.claimed) {
            revert AlreadyClaimed();
        }

        if (block.timestamp <= dep.deadline) {
            revert NotExpired();
        }

        address prevClaimer = dep.committedClaimer;
        dep.claimed = true;
        dep.committedClaimer = address(0);
        dep.commitTimestamp = 0;
        if (prevClaimer != address(0)) {
            delete claimCommitments[prevClaimer][_depositId];
        }

        uint256 amount = dep.amount;
        address tokenAddr = dep.token;

        emit AnonWithdrawn(
            _depositId,
            msg.sender
        );

        _transfer(
            tokenAddr,
            msg.sender,
            amount
        );
    }

    // ============ View Functions ============

    function getDirectDepositsByDepositor(
        address _depositor,
        uint256 _offset,
        uint256 _limit
    )
        external
        view
        returns (
            uint256[] memory ids,
            DirectDeposit[] memory deposits
        )
    {
        uint256[] storage depositorIds = directDepositIds[_depositor];
        uint256 count = depositorIds.length;

        uint256 start = _offset < count ? _offset : count;
        uint256 end = _offset + _limit;
        if (end > count) end = count;
        uint256 resultCount = end > start ? end - start : 0;

        ids = new uint256[](resultCount);
        deposits = new DirectDeposit[](resultCount);

        for (uint256 i; i < resultCount;) {
            uint256 id = depositorIds[start + i];
            ids[i] = id;
            deposits[i] = directDeposits[id];
            unchecked { ++i; }
        }
    }

    function getAnonDepositsByDepositor(
        address _depositor,
        uint256 _offset,
        uint256 _limit
    )
        external
        view
        returns (
            uint256[] memory ids,
            AnonymousDeposit[] memory deposits
        )
    {
        uint256[] storage depositorIds = anonDepositIds[_depositor];
        uint256 count = depositorIds.length;

        uint256 start = _offset < count ? _offset : count;
        uint256 end = _offset + _limit;
        if (end > count) end = count;
        uint256 resultCount = end > start ? end - start : 0;

        ids = new uint256[](resultCount);
        deposits = new AnonymousDeposit[](resultCount);

        for (uint256 i; i < resultCount;) {
            uint256 id = depositorIds[start + i];
            ids[i] = id;
            deposits[i] = anonDeposits[id];
            unchecked { ++i; }
        }
    }

    function isDepositReserved(
        uint256 _depositId
    )
        external
        view
        returns (
            bool reserved,
            address claimer,
            uint256 expiresAt
        )
    {
        AnonymousDeposit storage dep = anonDeposits[
            _depositId
        ];

        if (dep.committedClaimer == address(0)) {
            return (
                false,
                address(0),
                0
            );
        }

        uint256 expiry = dep.commitTimestamp
            + COMMIT_EXPIRY_SECONDS;

        if (block.timestamp >= expiry) {
            return (
                false,
                address(0),
                0
            );
        }

        return (
            true,
            dep.committedClaimer,
            expiry
        );
    }

    // ============ Admin Functions ============

    function setFeeRate(
        uint16 _feeRateBps
    )
        external
        onlyRole(ADMIN_ROLE)
    {
        if (_feeRateBps > 500) {
            revert MaxFeeExceeded();
        }

        if (feeRateBps == _feeRateBps) {
            return;
        }

        feeRateBps = _feeRateBps;

        emit FeeRateUpdated(
            _feeRateBps
        );
    }

    function setFeeJar(
        address _feeJar
    )
        external
        onlyRole(ADMIN_ROLE)
    {
        if (_feeJar == address(0)) {
            revert ZeroAddress();
        }

        if (feeJar == _feeJar) {
            return;
        }

        feeJar = _feeJar;

        emit FeeJarUpdated(
            _feeJar
        );
    }

    /// @notice Rescue ETH sent to the contract by mistake (not via deposit functions).
    /// @param _amount Amount to rescue; must not exceed (balance - reserved ETH for unclaimed deposits).
    function rescueOrphanedETH(uint256 _amount)
        external
        onlyRole(ADMIN_ROLE)
        nonReentrant
    {
        uint256 reserved = reservedETH();
        uint256 allowed = address(this).balance > reserved ? address(this).balance - reserved : 0;
        if (_amount > allowed) {
            revert RescueExceedsOrphaned(_amount, allowed);
        }
        if (_amount == 0) {
            return;
        }
        _transferETH(feeJar, _amount);
        emit OrphanedETHRescued(feeJar, _amount);
    }

    /// @notice Total ETH reserved by unclaimed direct and anonymous deposits.
    function reservedETH()
        public
        view
        returns (uint256 reserved)
    {
        for (uint256 i; i < nextDirectId;) {
            DirectDeposit storage d = directDeposits[i];
            if (d.token == address(0) && !d.claimed) {
                reserved += d.amount;
            }
            unchecked { ++i; }
        }
        for (uint256 i; i < nextAnonId;) {
            AnonymousDeposit storage d = anonDeposits[i];
            if (d.token == address(0) && !d.claimed) {
                reserved += d.amount;
            }
            unchecked { ++i; }
        }
    }

    // ============ Internal Functions ============

    function _calculateFee(
        uint256 _amount
    )
        internal
        view
        returns (
            uint256 payout,
            uint256 fee
        )
    {
        uint16 _feeRateBps = feeRateBps;
        if (_feeRateBps == 0) {
            return (_amount, 0);
        }
        fee = (_amount * _feeRateBps) / 10000;
        payout = _amount - fee;
    }

    function _transfer(
        address _token,
        address _to,
        uint256 _amount
    )
        internal
    {
        if (_token == address(0)) {
            _transferETH(_to, _amount);
        } else {
            IERC20(_token).safeTransfer(
                _to,
                _amount
            );
        }
    }

    function _transferETH(
        address _to,
        uint256 _amount
    )
        internal
    {
        (bool success, ) = _to.call{
            value: _amount
        }("");

        if (!success) revert TransferFailed();
    }

    receive() external payable {}
}
