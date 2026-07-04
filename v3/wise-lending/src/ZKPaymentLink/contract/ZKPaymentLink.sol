// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./IGroth16Verifier.sol";

/// @title ZKPaymentLink
/// @author Bitcoin.com
/// @notice Anonymous payment links using Groth16 ZK proofs.
///
/// @dev Commitment scheme (Poseidon-based, ZK-friendly):
///
///   Deposit side (client):
///     secret     = random 32 bytes
///     nullifier  = random 32 bytes
///     commitment = Poseidon(nullifier, secret)                  ← stored on-chain
///     Link URL: /claim/zk?id=<id>&chain=<chainId>&s=<secret>&n=<nullifier>
///
///   Claim side (client generates proof, depositId + chainId known from URL):
///     nullifierHash = Poseidon(nullifier, depositId, chainId)   ← bound to chain + deposit
///     proof = Groth16{ private: (secret, nullifier),
///                      public:  (commitment, nullifierHash, recipient, depositId, chainId) }
///     Single tx: claimZK(depositId, nullifierHash, recipient, proofA, proofB, proofC)
///
///   Security (two attack vectors closed):
///     1. Commitment-cloning DoS: nullifierHash includes depositId — a proof generated
///        for deposit #10 cannot be replayed against a cloned commitment at deposit #11.
///     2. Cross-chain replay: nullifierHash includes chainId — a proof used to claim
///        on Arbitrum cannot be force-relayed to Ethereum Mainnet.
///
/// @dev Only standard ERC-20s are supported; fee-on-transfer and rebasing tokens are not.
contract ZKPaymentLink is AccessControl, ReentrancyGuard {

    using SafeERC20 for IERC20;

    address public constant ZERO_ADDRESS = address(0);

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    uint16  public constant MAX_FEE_BPS = 1000; // 10 %
    uint256 public constant MAX_DEADLINE_DURATION = 365 days; // depositors always have a safety hatch

    IGroth16Verifier public immutable verifier;

    uint16  public feeRateBps;
    address public feeJar;

    /// @notice Running total of ETH locked in unclaimed ZK deposits.
    uint256 public totalReservedETH;

    /// @notice Running total of ERC-20 tokens locked in unclaimed ZK deposits, per token.
    mapping(address token => uint256 reserved) public totalReservedERC20;

    /// @notice Accumulated ETH fees (pull pattern — not pushed to feeJar during claims).
    uint256 public accumulatedETHFees;

    /// @notice Accumulated ERC-20 fees per token (pull pattern).
    mapping(address token => uint256 fees) public accumulatedERC20Fees;

    // ── Deposit storage ──────────────────────────────────────────────────

    struct ZKDeposit {
        address depositor;
        address token;        // ZERO_ADDRESS = native ETH
        uint256 amount;
        uint256 deadline;
        bytes32 commitment;   // Poseidon(nullifier, secret)
        uint16 lockedFeeBps; // Fee rate snapshotted at deposit time; immune to admin changes
        bool claimed;
    }

    mapping(uint256 id => ZKDeposit deposit) public deposits;
    mapping(address depositor => uint256[] ids) private depositorIds;
    mapping(bytes32 nullifierHash => bool spent) public spentNullifiers;
    uint256 public nextId;

    // ── Events ───────────────────────────────────────────────────────────

    event Deposited(
        uint256 indexed id,
        address indexed depositor,
        address token,
        uint256 amount,
        uint256 deadline,
        bytes32 commitment
    );

    event Claimed(
        uint256 indexed id,
        address indexed recipient,
        uint256 amount,
        uint256 feeTaken,
        bytes32 nullifierHash
    );

    event Withdrawn(uint256 indexed id, address indexed depositor);
    event FeeRateUpdated(uint16 newRateBps);
    event FeeJarUpdated(address newJar);
    event FeesClaimed(address indexed token, uint256 amount);
    event LooseFundsSwept(address indexed token, uint256 amount);

    // ── Errors ───────────────────────────────────────────────────────────

    error ZeroAddress();
    error ZeroAmount();
    error InvalidDeadline();
    error InvalidCommitment();
    error DepositNotFound();
    error AlreadyClaimed();
    error Expired();
    error NotExpired();
    error NotDepositor();
    error InvalidProof();
    error NullifierSpent();
    error MaxFeeExceeded();
    error FeeOnTransferNotSupported();
    error TransferFailed(address to, uint256 amount);
    error ArrayLengthMismatch();
    error EmptyArray();
    error UnEvenETHSplit();
    error SweepFailed();

    // ── Constructor ──────────────────────────────────────────────────────

    constructor(
        address _admin,
        address _verifier
    ) {
        if (_admin == ZERO_ADDRESS) {
            revert ZeroAddress();
        }

        if (_verifier == ZERO_ADDRESS) {
            revert ZeroAddress();
        }


        _grantRole(
            DEFAULT_ADMIN_ROLE,
            _admin
        );

        _grantRole(
            ADMIN_ROLE,
            _admin
        );

        verifier = IGroth16Verifier(
            _verifier
        );

        feeJar   = _admin;
    }

    // ── Single Deposits ──────────────────────────────────────────────────

    /// @notice Deposit native ETH. The commitment is Poseidon(nullifier, secret),
    ///         computed client-side using circomlibjs.
    function depositETH(
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

        if (_deadline <= block.timestamp || _deadline > block.timestamp + MAX_DEADLINE_DURATION) {
            revert InvalidDeadline();
        }

        if (_commitment == bytes32(0)) {
            revert InvalidCommitment();
        }

        id = _createDeposit(
            msg.sender,
            ZERO_ADDRESS,
            msg.value,
            _deadline,
            _commitment
        );

        totalReservedETH += msg.value;

        emit Deposited(
            id, msg.sender,
            ZERO_ADDRESS,
            msg.value,
            _deadline,
            _commitment
        );
    }

    /// @notice Deposit an ERC-20 token. The commitment is Poseidon(nullifier, secret),
    ///         computed client-side using circomlibjs.
    function depositERC20(
        address _token,
        uint256 _amount,
        uint256 _deadline,
        bytes32 _commitment
    )
        external
        returns (uint256 id)
    {
        if (_token      == ZERO_ADDRESS) revert ZeroAddress();
        if (_amount     == 0)          revert ZeroAmount();
        if (_deadline   <= block.timestamp || _deadline > block.timestamp + MAX_DEADLINE_DURATION)
            revert InvalidDeadline();
        if (_commitment == bytes32(0)) revert InvalidCommitment();

        // CEI: record state before the external call
        id = _createDeposit(msg.sender, _token, _amount, _deadline, _commitment);
        totalReservedERC20[_token] += _amount;

        // Interaction: pull tokens (reverts if fee-on-transfer detected)
        _pullERC20(
            _token,
            msg.sender,
            _amount
        );

        emit Deposited(
            id,
            msg.sender,
            _token, _amount,
            _deadline,
            _commitment
        );
    }

    // ── Bulk Deposits ────────────────────────────────────────────────────

    /// @notice Create multiple ETH ZK deposit links in a single transaction.
    ///
    /// @param _deadlines   Per-link expiry timestamps (length N)
    /// @param _commitments Per-link Poseidon(nullifier, secret) commitments (length N)
    ///
    /// @dev msg.value must be exactly divisible by N; each link receives
    ///      msg.value / N ETH. All links have the same denomination.
    function bulkDepositETH(
        uint256[] calldata _deadlines,
        bytes32[] calldata _commitments
    )
        external
        payable
        nonReentrant
        returns (uint256[] memory ids)
    {
        uint256 n = _commitments.length;

        if (n == 0) {
            revert EmptyArray();
        }

        if (_deadlines.length != n) {
            revert ArrayLengthMismatch();
        }

        if (msg.value == 0) {
            revert ZeroAmount();
        }

        if (msg.value % n != 0) {
            revert UnEvenETHSplit();
        }

        uint256 amountEach = msg.value / n;

        ids = new uint256[](n);

        for (uint256 i; i < n; ++i) {
            if (_deadlines[i] <= block.timestamp || _deadlines[i] > block.timestamp + MAX_DEADLINE_DURATION)
                revert InvalidDeadline();
            if (_commitments[i] == bytes32(0)) revert InvalidCommitment();

            uint256 id = _createDeposit(msg.sender, ZERO_ADDRESS, amountEach, _deadlines[i], _commitments[i]);
            ids[i] = id;
            emit Deposited(id, msg.sender, ZERO_ADDRESS, amountEach, _deadlines[i], _commitments[i]);
        }

        totalReservedETH += msg.value;
    }

    /// @notice Create multiple ERC-20 ZK deposit links in a single transaction.
    ///
    /// @param _token        ERC-20 token address
    /// @param _amountEach   Token amount per link (caller approves amountEach * N total)
    /// @param _deadlines    Per-link expiry timestamps (length N)
    /// @param _commitments  Per-link Poseidon(nullifier, secret) commitments (length N)
    function bulkDepositERC20(
        address _token,
        uint256 _amountEach,
        uint256[] calldata _deadlines,
        bytes32[] calldata _commitments
    )
        external
        nonReentrant
        returns (uint256[] memory ids)
    {
        uint256 n = _commitments.length;
        if (n == 0)                revert EmptyArray();
        if (_token == ZERO_ADDRESS)   revert ZeroAddress();
        if (_amountEach == 0)       revert ZeroAmount();
        if (_deadlines.length != n) revert ArrayLengthMismatch();

        // CEI: record all state before the single external transfer
        ids = new uint256[](n);

        for (uint256 i; i < n; ++i) {
            if (_deadlines[i] <= block.timestamp || _deadlines[i] > block.timestamp + MAX_DEADLINE_DURATION)
                revert InvalidDeadline();
            if (_commitments[i] == bytes32(0)) revert InvalidCommitment();

            uint256 id = _createDeposit(
                msg.sender,
                _token,
                _amountEach,
                _deadlines[i],
                _commitments[i]
            );

            ids[i] = id;

            emit Deposited(
                id,
                msg.sender,
                _token,
                _amountEach,
                _deadlines[i],
                _commitments[i]
            );
        }

        uint256 totalAmount = _amountEach * n;
        totalReservedERC20[_token] += totalAmount;

        // Interaction: pull total in one transfer (reverts if fee-on-transfer detected)
        _pullERC20(
            _token,
            msg.sender,
            totalAmount
        );
    }

    // ── Single Claim ──────────────────────────────────────────────────────

    /// @notice Claim a ZK anonymous deposit in a single transaction.
    ///
    /// @param _depositId     The deposit to claim
    /// @param _nullifierHash Poseidon(nullifier, depositId, chainId) — prevents double-spend,
    ///                       binds the proof to this deposit and this chain
    /// @param _recipient     Address to receive funds (must match the value in the proof)
    /// @param _proofA        Groth16 proof component A  [2]
    /// @param _proofB        Groth16 proof component B  [2][2]
    /// @param _proofC        Groth16 proof component C  [2]
    ///
    /// @dev Public signals passed to the verifier (must match circuit order):
    /// [0] = depositCommitment  (from on-chain storage)
    /// [1] = nullifierHash      (Poseidon(nullifier, depositId, chainId))
    /// [2] = recipient          (uint160, provided by caller)
    /// [3] = depositId          (the deposit being claimed)
    /// [4] = chainId            (block.chainid — prevents cross-chain replay)
    function claimZK(
        uint256       _depositId,
        bytes32       _nullifierHash,
        address       _recipient,
        uint256[2]    calldata _proofA,
        uint256[2][2] calldata _proofB,
        uint256[2]    calldata _proofC
    )
        external
        nonReentrant
    {
        _claimOne(
            _depositId,
            _nullifierHash,
            _recipient,
            _proofA,
            _proofB,
            _proofC
        );
    }

    // ── Reclaim (depositor, after expiry) ────────────────────────────────

    /// @notice Reclaim an unclaimed expired deposit back to the depositor.
    function withdraw(
        uint256 _depositId
    )
        external
        nonReentrant
    {
        _withdrawOne(
            _depositId
        );
    }

    /// @notice Reclaim multiple unclaimed expired deposits in one transaction.
    ///         All depositIds must belong to msg.sender.
    function bulkWithdraw(
        uint256[] calldata _depositIds
    )
        external
        nonReentrant
    {
        uint256 n = _depositIds.length;

        if (n == 0) {
            revert EmptyArray();
        }

        for (uint256 i; i < n; ++i) {
            _withdrawOne(
                _depositIds[i]
            );
        }
    }

    // ── Views ─────────────────────────────────────────────────────────────

    /// @notice Returns all deposit IDs created by `depositor`.
    function getDepositorIds(address _depositor)
        external
        view
        returns (uint256[] memory)
    {
        return depositorIds[_depositor];
    }

    // ── Admin ─────────────────────────────────────────────────────────────

    function setFeeRate(uint16 _newRateBps) external onlyRole(ADMIN_ROLE) {
        if (_newRateBps > MAX_FEE_BPS) revert MaxFeeExceeded();
        feeRateBps = _newRateBps;
        emit FeeRateUpdated(_newRateBps);
    }

    /// @dev Rejects ZERO_ADDRESS and address(this) to prevent fee accounting corruption.
    function setFeeJar(
        address _newJar
    )
        external
        onlyRole(ADMIN_ROLE)
    {
        if (_newJar == ZERO_ADDRESS || _newJar == address(this)) revert ZeroAddress();
        feeJar = _newJar;
        emit FeeJarUpdated(_newJar);
    }

    /// @notice Pull accumulated ETH fees to feeJar. Callable by anyone.
    function claimETHFees()
        external
    {
        uint256 amount = accumulatedETHFees;
        if (amount == 0) return;
        accumulatedETHFees = 0;
        (bool ok, ) = feeJar.call{value: amount}("");
        if (!ok) revert SweepFailed();
        emit FeesClaimed(ZERO_ADDRESS, amount);
    }

    /// @notice Pull accumulated ERC-20 fees to feeJar. Callable by anyone.
    function claimERC20Fees(address _token) external {
        uint256 amount = accumulatedERC20Fees[_token];
        if (amount == 0) return;
        accumulatedERC20Fees[_token] = 0;
        IERC20(_token).safeTransfer(feeJar, amount);
        emit FeesClaimed(_token, amount);
    }

    /// @notice Sweep ETH sent directly to the contract (not via depositETH) to feeJar.
    function sweepLooseETH()
        external
        onlyRole(ADMIN_ROLE)
    {
        uint256 loose = address(this).balance - totalReservedETH - accumulatedETHFees;
        if (loose == 0) return;
        (bool ok, ) = feeJar.call{value: loose}("");
        if (!ok) revert SweepFailed();
        emit LooseFundsSwept(ZERO_ADDRESS, loose);
    }

    /// @notice Sweep ERC-20 tokens sent directly to the contract (not via deposit) to feeJar.
    function sweepLooseERC20(
        address _token
    )
        external
        onlyRole(ADMIN_ROLE)
    {
        uint256 contractBal = IERC20(_token).balanceOf(
            address(this)
        );

        uint256 loose = contractBal
            - totalReservedERC20[_token]
            - accumulatedERC20Fees[_token];

        if (loose == 0) return;

        IERC20(_token).safeTransfer(
            feeJar,
            loose
        );

        emit LooseFundsSwept(
            _token,
            loose
        );
    }

    // ── Internal ──────────────────────────────────────────────────────────

    function _createDeposit(
        address _depositor,
        address _token,
        uint256 _amount,
        uint256 _deadline,
        bytes32 _commitment
    )
        internal
        returns (uint256 id)
    {
        id = nextId++;

        ZKDeposit storage dep = deposits[id];
        dep.depositor    = _depositor;
        dep.token        = _token;
        dep.amount       = _amount;
        dep.deadline     = _deadline;
        dep.commitment   = _commitment;
        dep.lockedFeeBps = feeRateBps;

        depositorIds[_depositor].push(id);
    }

    function _claimOne(
        uint256       _depositId,
        bytes32       _nullifierHash,
        address       _recipient,
        uint256[2]    calldata _proofA,
        uint256[2][2] calldata _proofB,
        uint256[2]    calldata _proofC
    )
        internal
    {
        if (spentNullifiers[_nullifierHash]) {
            revert NullifierSpent();
        }

        ZKDeposit storage dep = deposits[_depositId];
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

        // Public signals must match circuit order:
        //   [0] depositCommitment, [1] nullifierHash, [2] recipient,
        //   [3] depositId, [4] chainId
        uint256[5] memory pubSignals = [
            uint256(dep.commitment),
            uint256(_nullifierHash),
            uint256(uint160(_recipient)),
            _depositId,
            block.chainid
        ];

        if (verifier.verifyProof(
            _proofA,
            _proofB,
            _proofC,
            pubSignals
        ) == false) {
            revert InvalidProof();
        }

        spentNullifiers[_nullifierHash] = true;
        dep.claimed = true;

        address tokenAddr = dep.token;

        (
            uint256 payout,
            uint256 fee
        ) = _calculateFee(
            amount,
            dep.lockedFeeBps
        );

        if (tokenAddr == ZERO_ADDRESS) {
            totalReservedETH -= amount;
            if (fee != 0) {
                accumulatedETHFees += fee;
            }
        } else {
            totalReservedERC20[tokenAddr] -= amount;
            if (fee != 0) {
                accumulatedERC20Fees[tokenAddr] += fee;
            }
        }

        _transfer(
            tokenAddr,
            _recipient,
            payout
        );

        emit Claimed(
            _depositId,
            _recipient,
            payout,
            fee,
            _nullifierHash
        );
    }

    function _withdrawOne(
        uint256 _depositId
    )
        internal
    {
        ZKDeposit storage dep = deposits[_depositId];

        if (dep.depositor == ZERO_ADDRESS) {
            revert DepositNotFound();
        }

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

        if (tokenAddr == ZERO_ADDRESS) {
            totalReservedETH -= amount;
        } else {
            totalReservedERC20[tokenAddr] -= amount;
        }

        _transfer(
            tokenAddr,
            msg.sender,
            amount
        );

        emit Withdrawn(
            _depositId,
            msg.sender
        );
    }

    function _pullERC20(
        address _token,
        address _from,
        uint256 _amount
    )
        internal
    {
        uint256 balBefore = IERC20(_token).balanceOf(
            address(this)
        );

        IERC20(_token).safeTransferFrom(
            _from,
            address(this),
            _amount
        );

        if (IERC20(_token).balanceOf(address(this)) != balBefore + _amount) {
            revert FeeOnTransferNotSupported();
        }
    }

    function _calculateFee(
        uint256 _amount,
        uint16 _lockedFee
    )
        internal
        pure
        returns (
            uint256 payout,
            uint256 fee
        )
    {
        if (_lockedFee == 0) {
            return (_amount, 0);
        }

        fee = (_amount * _lockedFee) / 10_000;
        payout = _amount - fee;
    }

    function _transfer(
        address _token,
        address _to,
        uint256 _amount
    )
        internal
        returns (bool success)
    {
        if (_token == ZERO_ADDRESS) {
            (bool ok, ) = _to.call{
                value: _amount
            }("");
            if (ok == false) {
                revert TransferFailed(
                    _to,
                    _amount
                );
            }
        } else {
            IERC20(_token).safeTransfer(
                _to,
                _amount
            );
        }

        return true;
    }

    receive() external payable {}
}
