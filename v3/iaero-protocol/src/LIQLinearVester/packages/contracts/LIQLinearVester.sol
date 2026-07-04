// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title LIQLinearVester
 * @notice Holds pre-funded LIQ and releases linearly to two beneficiaries over 3 years.
 *         Streams are immutable once deployed.
 *
 *         Stream 0: Treasury — 10,000,000 LIQ  (3 years)
 *         Stream 1: Team     — 10,000,000 LIQ  (3 years)
 *
 *         - Pull model: anyone can call claim(), funds go to beneficiary.
 *         - Owner can rescue non-LIQ tokens anytime, and sweep leftover LIQ only
 *           after both streams fully vested AND fully claimed.
 */
contract LIQLinearVester is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    IERC20 public immutable LIQ;

    struct Stream {
        address beneficiary;
        uint128 total;      // total LIQ allocated to this stream
        uint128 released;   // LIQ released (transferred) so far
        uint64  start;      // vesting start timestamp
        uint64  end;        // vesting end timestamp (linear to this moment)
    }

    // Two fixed streams: 0 = Treasury, 1 = Team
    Stream[2] public streams;

    event Claimed(uint256 indexed streamId, address indexed to, uint256 amount);
    event SweptOther(address indexed token, address indexed to, uint256 amount);
    event SweptLeftoverLIQ(address indexed to, uint256 amount);

    error InvalidParams();
    error NothingToClaim();
    error TooEarly();
    error LIQNotSweepable();

    constructor(
        address _liq,
        address _treasury,
        address _team,
        uint64  _start,     // e.g. block.timestamp or a future TGE time
        uint64  _duration   // e.g. 3 * 365 days
    ) Ownable(msg.sender) {
        if (
            _liq == address(0) ||
            _treasury == address(0) ||
            _team == address(0) ||
            _duration == 0
        ) revert InvalidParams();

        LIQ = IERC20(_liq);

        uint64 endTs = _start + _duration;

        // 10,000,000 * 1e18
        uint128 TEN_M = uint128(10_000_000e18);

        // Stream 0: Treasury
        streams[0] = Stream({
            beneficiary: _treasury,
            total: TEN_M,
            released: 0,
            start: _start,
            end: endTs
        });

        // Stream 1: Team
        streams[1] = Stream({
            beneficiary: _team,
            total: TEN_M,
            released: 0,
            start: _start,
            end: endTs
        });
    }

    /* -------------------------------- Views -------------------------------- */

    function streamInfo(uint256 streamId) external view returns (Stream memory) {
        require(streamId < 2, "bad id");
        return streams[streamId];
    }

    function vested(uint256 streamId, uint256 timestamp) public view returns (uint256) {
        require(streamId < 2, "bad id");
        Stream memory s = streams[streamId];

        if (timestamp <= s.start) return 0;
        if (timestamp >= s.end)   return s.total;

        uint256 elapsed = timestamp - s.start;
        uint256 duration = s.end - s.start;
        return (uint256(s.total) * elapsed) / duration;
    }

    function releasable(uint256 streamId) public view returns (uint256) {
        require(streamId < 2, "bad id");
        Stream memory s = streams[streamId];
        uint256 v = vested(streamId, block.timestamp);
        if (v <= s.released) return 0;
        return v - s.released;
    }

    /* ------------------------------- Claiming ------------------------------ */

    /// @notice Claim the vested amount for a stream. Anyone can trigger, funds go to beneficiary.
    function claim(uint256 streamId) public nonReentrant {
        require(streamId < 2, "bad id");
        uint256 amt = releasable(streamId);
        if (amt == 0) revert NothingToClaim();

        Stream storage s = streams[streamId];
        s.released += uint128(amt);
        LIQ.safeTransfer(s.beneficiary, amt);
        emit Claimed(streamId, s.beneficiary, amt);
    }

    /// @notice Claim both streams in one call (useful for a keeper).
    function claimAll() external nonReentrant {
        uint256 a0 = releasable(0);
        if (a0 > 0) {
            Stream storage s0 = streams[0];
            s0.released += uint128(a0);
            LIQ.safeTransfer(s0.beneficiary, a0);
            emit Claimed(0, s0.beneficiary, a0);
        }
        uint256 a1 = releasable(1);
        if (a1 > 0) {
            Stream storage s1 = streams[1];
            s1.released += uint128(a1);
            LIQ.safeTransfer(s1.beneficiary, a1);
            emit Claimed(1, s1.beneficiary, a1);
        }
    }

    /* ---------------------------- Admin Utilities --------------------------- */

    /// @notice Rescue non-LIQ tokens accidentally sent here (e.g., airdrops). LIQ is blocked.
    function sweepOtherERC20(address token, address to) external onlyOwner {
        require(token != address(LIQ), "LIQNotSweepable");
        uint256 bal = IERC20(token).balanceOf(address(this));
        if (bal > 0) {
            IERC20(token).safeTransfer(to, bal);
            emit SweptOther(token, to, bal);
        }
    }

    /// @notice After both streams have fully vested & been claimed, sweep any LIQ dust left.
    function sweepLeftoverLIQ(address to) external onlyOwner {
        Stream memory s0 = streams[0];
        Stream memory s1 = streams[1];
        if (block.timestamp < s0.end || block.timestamp < s1.end) revert TooEarly();
        if (s0.released < s0.total || s1.released < s1.total) revert LIQNotSweepable();

        uint256 bal = LIQ.balanceOf(address(this));
        if (bal > 0) {
            LIQ.safeTransfer(to, bal);
            emit SweptLeftoverLIQ(to, bal);
        }
    }
}
