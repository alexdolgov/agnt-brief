// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/// @dev Minimal interface for the stiAERO receipt token.
/// Must authorize this distributor to mint/burn.
interface IReceiptToken is IERC20 {
    function mint(address to, uint256 amount) external;
    function burn(address from, uint256 amount) external;
}

/// @title EpochStakingDistributor (Aerodrome-friendly, no active token set)
/// @notice Stake iAERO; rewards are bucketed per (token, epoch) and split by
///         epoch-start snapshots. Optionally mints a 1:1 transferable receipt
///         token (stiAERO) on stake and burns on unstake. Includes emergency pause.
contract EpochStakingDistributor is Ownable, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;

    // ========= Errors =========
    error ZeroAddress();
    error InvalidAmount();
    error NotEnoughStaked();
    error BadETHValue();
    error LengthMismatch();
    error TooManyItems();
    error BadEpoch();
    error NotAuthorized();
    error ReceiptAlreadySet();
    error ReceiptNotSet();
    error BadReceiptToken();

    // ========= Constants / Immutables =========
    address public immutable iAERO;
    uint256 public constant WEEK = 7 days;

    // ========= Staking state with checkpoints =========
    // Fit in one slot while increasing timestamp width.
    struct Checkpoint {
        uint64 ts;     // timestamp of checkpoint
        uint192 value; // balance/supply value at that time
    }

    mapping(address => Checkpoint[]) private _userCkpts;
    Checkpoint[] private _supplyCkpts;

    uint256 public totalStaked;
    mapping(address => uint256) public balanceOf;

    // ========= Rewards accounting (per token, per epoch) =========
    mapping(address => mapping(uint256 => uint256)) public rewardsForEpoch; // token => epoch => total funded
    mapping(address => mapping(address => mapping(uint256 => uint256))) public claimedForEpoch; // user => token => epoch => claimed
    mapping(uint256 => uint256) public supplySnapshotAtEpochStart; // epoch => total supply at epoch start (cached)

    // ========= Admin: allowed funders =========
    mapping(address => bool) public allowedFunders;

    // ========= Optional receipt token (stiAERO) =========
    IReceiptToken public receiptToken;     // settable later
    bool public receiptTokenFrozen;        // optional freeze once set

    // ========= Events =========
    event Staked(address indexed user, uint256 amount);
    event StakedFor(address indexed funder, address indexed user, uint256 amount);
    event Unstaked(address indexed user, uint256 amount);
    event Exited(address indexed user, uint256 amount);

    event RewardFunded(address indexed token, uint256 indexed epochId, uint256 amount);
    event RewardClaimed(address indexed user, address indexed token, uint256 indexed epochId, uint256 amount);

    event AllowedFunderSet(address indexed funder, bool allowed);
    event ReceiptTokenSet(address indexed token);
    event ReceiptTokenFrozen();
    event ReceiptsBackfilled(uint256 count);

    constructor(address _iAERO) Ownable(msg.sender) {
        if (_iAERO == address(0)) revert ZeroAddress();
        iAERO = _iAERO;
    }

    // ========= Admin (pause) =========
    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    // ========= Epoch helpers =========
    function _epochStart(uint256 t) internal pure returns (uint256) {
        return (t / WEEK) * WEEK;
    }
    function currentEpoch() public view returns (uint256) {
        return _epochStart(block.timestamp);
    }

    // ========= Checkpoint internals =========
    function _pushUserCkpt(address user, uint256 newBal) internal {
        Checkpoint[] storage ck = _userCkpts[user];
        uint64 nowTs = uint64(block.timestamp);
        if (ck.length != 0 && ck[ck.length - 1].ts == nowTs) {
            ck[ck.length - 1].value = uint192(newBal);
        } else {
            ck.push(Checkpoint({ ts: nowTs, value: uint192(newBal) }));
        }
    }
    function _pushSupplyCkpt(uint256 newSupply) internal {
        uint64 nowTs = uint64(block.timestamp);
        if (_supplyCkpts.length != 0 && _supplyCkpts[_supplyCkpts.length - 1].ts == nowTs) {
            _supplyCkpts[_supplyCkpts.length - 1].value = uint192(newSupply);
        } else {
            _supplyCkpts.push(Checkpoint({ ts: nowTs, value: uint192(newSupply) }));
        }
    }

    // Binary search: value at or before `ts`
    function _valueAt(Checkpoint[] storage ck, uint256 ts) internal view returns (uint256) {
        uint256 n = ck.length;
        if (n == 0) return 0;
        if (ts >= ck[n - 1].ts) return ck[n - 1].value;
        if (ts < ck[0].ts) return 0;
        uint256 lo = 0; uint256 hi = n - 1;
        while (lo < hi) {
            uint256 mid = (lo + hi + 1) >> 1;
            if (ck[mid].ts <= ts) lo = mid; else hi = mid - 1;
        }
        return ck[lo].value;
    }
    function balanceAtEpochStart(address user, uint256 epochId) public view returns (uint256) {
        return _valueAt(_userCkpts[user], epochId);
    }
    function totalSupplyAtEpochStart(uint256 epochId) public view returns (uint256) {
        return _valueAt(_supplyCkpts, epochId);
    }

    // ========= Admin (funders / receipt token) =========
    function setAllowedFunder(address funder, bool allowed) external onlyOwner {
        if (funder == address(0)) revert ZeroAddress();
        allowedFunders[funder] = allowed;
        emit AllowedFunderSet(funder, allowed);
    }

    /// @notice Set the stiAERO receipt token. Call after granting MINTER/BURNER to this distributor.
    function setReceiptToken(address token) external onlyOwner {
        if (receiptTokenFrozen) revert ReceiptAlreadySet();
        if (token == address(0)) revert ZeroAddress();
        if (token == iAERO) revert BadReceiptToken();
        // must be a contract
        if (token.code.length == 0) revert BadReceiptToken();
        receiptToken = IReceiptToken(token);
        emit ReceiptTokenSet(token);
    }

    function freezeReceiptToken() external onlyOwner {
        if (address(receiptToken) == address(0)) revert ReceiptNotSet();
        receiptTokenFrozen = true;
        emit ReceiptTokenFrozen();
    }

    /// @notice After setting `receiptToken`, mint missing receipts for current stakers (batch).
    function backfillReceipts(address[] calldata users) external onlyOwner nonReentrant whenNotPaused {
        IReceiptToken r = receiptToken;
        if (address(r) == address(0)) revert ReceiptNotSet();
        uint256 len = users.length;
        for (uint256 i = 0; i < len; ++i) {
            address u = users[i];
            uint256 want = balanceOf[u];
            uint256 have = r.balanceOf(u);
            if (want > have) r.mint(u, want - have);
        }
        emit ReceiptsBackfilled(len);
    }

    // ========= Staking =========
    function stake(uint256 amount) external nonReentrant whenNotPaused { _stakeFor(msg.sender, msg.sender, amount); }
    function stakeFor(address user, uint256 amount) external nonReentrant whenNotPaused { _stakeFor(msg.sender, user, amount); }

    function _stakeFor(address funder, address user, uint256 amount) internal {
        if (user == address(0)) revert ZeroAddress();
        if (amount == 0) revert InvalidAmount();

        IERC20(iAERO).safeTransferFrom(funder, address(this), amount);

        balanceOf[user] += amount;
        totalStaked += amount;
        _pushUserCkpt(user, balanceOf[user]);
        _pushSupplyCkpt(totalStaked);

        if (address(receiptToken) != address(0)) {
            receiptToken.mint(user, amount);
        }

        emit StakedFor(funder, user, amount);
        if (funder == user) emit Staked(user, amount);
    }

    function unstake(uint256 amount) external nonReentrant whenNotPaused {
        if (amount == 0) revert InvalidAmount();
        if (balanceOf[msg.sender] < amount) revert NotEnoughStaked();

        if (address(receiptToken) != address(0)) {
            receiptToken.burn(msg.sender, amount);
        }

        balanceOf[msg.sender] -= amount;
        totalStaked -= amount;
        _pushUserCkpt(msg.sender, balanceOf[msg.sender]);
        _pushSupplyCkpt(totalStaked);

        IERC20(iAERO).safeTransfer(msg.sender, amount);
        emit Unstaked(msg.sender, amount);
    }

    function exit() external nonReentrant whenNotPaused {
        uint256 amt = balanceOf[msg.sender];
        if (amt == 0) return;

        if (address(receiptToken) != address(0)) {
            receiptToken.burn(msg.sender, amt);
        }

        balanceOf[msg.sender] = 0;
        totalStaked -= amt;
        _pushUserCkpt(msg.sender, 0);
        _pushSupplyCkpt(totalStaked);

        IERC20(iAERO).safeTransfer(msg.sender, amt);
        emit Exited(msg.sender, amt);
    }

    // ========= Funding (per token, per epoch) =========
    function notifyRewardAmount(address token, uint256 amount) external payable nonReentrant whenNotPaused {
        if (!(allowedFunders[msg.sender] || msg.sender == owner())) revert NotAuthorized();
        _fund(token, currentEpoch(), amount);
    }

    function notifyRewardForEpoch(address token, uint256 epochId, uint256 amount) external payable nonReentrant whenNotPaused {
        if (!(allowedFunders[msg.sender] || msg.sender == owner())) revert NotAuthorized();
        uint256 nowEpoch = currentEpoch();
        if (!(epochId == nowEpoch || epochId == nowEpoch - WEEK)) revert BadEpoch();
        _fund(token, epochId, amount);
    }

    function notifyRewardAmountsBatch(
        address[] calldata tokens,
        uint256[] calldata epochs,
        uint256[] calldata amounts
    ) external payable nonReentrant whenNotPaused {
        if (!(allowedFunders[msg.sender] || msg.sender == owner())) revert NotAuthorized();
        if (tokens.length != epochs.length || tokens.length != amounts.length) revert LengthMismatch();
        if (tokens.length > 50) revert TooManyItems();

        uint256 ethRequired = 0;
        for (uint256 i = 0; i < tokens.length; i++) {
            if (tokens[i] == address(0)) ethRequired += amounts[i];
        }
        if (ethRequired > 0) {
            if (msg.value != ethRequired) revert BadETHValue();
        } else if (msg.value != 0) {
            revert BadETHValue();
        }

        uint256 nowEpoch = currentEpoch();
        for (uint256 i = 0; i < tokens.length; i++) {
            address token = tokens[i];
            uint256 epochId = epochs[i];
            uint256 amt = amounts[i];
            if (!(epochId == nowEpoch || epochId == nowEpoch - WEEK)) revert BadEpoch();

            if (token == address(0)) {
                _fundInternal(address(0), epochId, amt);
            } else {
                if (amt == 0) revert InvalidAmount();
                IERC20 erc = IERC20(token);
                uint256 beforeBal = erc.balanceOf(address(this));
                erc.safeTransferFrom(msg.sender, address(this), amt);
                uint256 afterBal = erc.balanceOf(address(this));
                require(afterBal >= beforeBal, "balance regression");
                uint256 received = afterBal - beforeBal;
                require(received > 0, "no receive");
                _fundInternal(token, epochId, received);
            }
        }
    }

    function _fund(address token, uint256 epochId, uint256 amount) internal {
        if (token == address(0)) {
            if (msg.value != amount) revert BadETHValue();
            _fundInternal(address(0), epochId, amount);
        } else {
            if (amount == 0) revert InvalidAmount();
            IERC20 erc = IERC20(token);
            uint256 beforeBal = erc.balanceOf(address(this));
            erc.safeTransferFrom(msg.sender, address(this), amount);
            uint256 afterBal = erc.balanceOf(address(this));
            require(afterBal >= beforeBal, "balance regression");
            uint256 received = afterBal - beforeBal;
            require(received > 0, "no receive");
            _fundInternal(token, epochId, received);
        }
    }

    function _fundInternal(address token, uint256 epochId, uint256 amount) internal {
        if (amount == 0) return;
        rewardsForEpoch[token][epochId] += amount;

        if (supplySnapshotAtEpochStart[epochId] == 0) {
            uint256 snap = totalSupplyAtEpochStart(epochId);
            if (snap > 0) supplySnapshotAtEpochStart[epochId] = snap;
        }
        emit RewardFunded(token, epochId, amount);
    }

    // ========= Claiming =========
    function previewClaim(address user, address token, uint256 epochId) public view returns (uint256) {
        uint256 total = rewardsForEpoch[token][epochId];
        if (total == 0) return 0;

        uint256 supplySnap = supplySnapshotAtEpochStart[epochId];
        if (supplySnap == 0) {
            supplySnap = totalSupplyAtEpochStart(epochId);
            if (supplySnap == 0) return 0;
        }

        uint256 balSnap = balanceAtEpochStart(user, epochId);
        if (balSnap == 0) return 0;

        uint256 gross = Math.mulDiv(total, balSnap, supplySnap);
        uint256 already = claimedForEpoch[user][token][epochId];
        if (gross <= already) return 0;
        return gross - already;
    }

    function claim(address token, uint256 epochId) external nonReentrant whenNotPaused {
        _claim(msg.sender, token, epochId);
    }

    function claimMany(address[] calldata tokens, uint256[] calldata epochs) external nonReentrant whenNotPaused {
        if (tokens.length != epochs.length) revert LengthMismatch();
        if (tokens.length > 50) revert TooManyItems();
        for (uint256 i = 0; i < tokens.length; i++) {
            _claim(msg.sender, tokens[i], epochs[i]);
        }
    }

    function claimLatest(address[] calldata tokens) external nonReentrant whenNotPaused {
        uint256 nowEpoch = currentEpoch();
        uint256 prev = nowEpoch - WEEK;
        for (uint256 i = 0; i < tokens.length; i++) {
            address t = tokens[i];
            _claim(msg.sender, t, prev);
            _claim(msg.sender, t, nowEpoch);
        }
    }

    function _claim(address user, address token, uint256 epochId) internal {
        uint256 amt = previewClaim(user, token, epochId);
        if (amt == 0) return;

        claimedForEpoch[user][token][epochId] += amt;

        if (token == address(0)) {
            (bool ok, ) = payable(user).call{ value: amt }("");
            require(ok, "ETH transfer failed");
        } else {
            IERC20(token).safeTransfer(user, amt);
        }

        emit RewardClaimed(user, token, epochId, amt);
    }

    // ========= Light views for UX =========
    function previewClaimsForEpoch(address user, address[] calldata tokens, uint256 epochId)
        external view returns (uint256[] memory amounts)
    {
        uint256 len = tokens.length;
        amounts = new uint256[](len);
        for (uint256 i = 0; i < len; i++) amounts[i] = previewClaim(user, tokens[i], epochId);
    }
    function userCheckpointsLength(address user) external view returns (uint256) { return _userCkpts[user].length; }
    function supplyCheckpointsLength() external view returns (uint256) { return _supplyCkpts.length; }

    // ========= Conservative token rescue =========
    /// @notice Rescue non-staked, non-receipt tokens (use with extreme care).
    function recoverERC20(address token, address to, uint256 amount) external onlyOwner {
        if (token == address(0)) revert ZeroAddress();
        if (token == iAERO) revert InvalidAmount(); // never recover staked token
        if (address(receiptToken) != address(0) && token == address(receiptToken)) revert InvalidAmount(); // don't sweep receipts
        IERC20(token).safeTransfer(to, amount);
    }

    // ========= ETH receive =========
    receive() external payable {}
}
