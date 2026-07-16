// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/*
    Lens that sits in front of CLCore and exposes a small, stable
    output struct for DeBank (and anyone else).
*/

import {Ownable} from "openzeppelin-contracts/contracts/access/Ownable.sol";

interface ICLCore {
    // IMPORTANT: This struct must match CLCore exactly (field order/types).
    struct PositionDetails {
        bytes32 key;
        address owner;
        uint256 tokenId;
        address pool;
        address token0;
        address token1;
        uint24 fee;
        int24 tickSpacing;
        int24 tickLower;
        int24 tickUpper;
        int24 currentTick;
        uint128 liquidity;
        uint128 tokensOwed0;
        uint128 tokensOwed1;
        uint256 pendingFees0;
        uint256 pendingFees1;
        uint256 pendingFeesUSDC;
        uint256 amount0Now;
        uint256 amount1Now;
        uint256 valueUSDCNow;
        uint256 dustUSDC;
        uint256 totalDepositedUSDC;
        uint256 openedAt;
        address dex;
        bool botAllowed;
    }

    function listUserPositionKeys(address user) external view returns (bytes32[] memory);
    function getPositionDetails(bytes32 key) external view returns (PositionDetails memory);
}

contract Lens is Ownable {
    /// @dev The CLCore contract this lens reads from.
    ICLCore public core;

    /// @dev Stable output struct for DeBank integrations.
    struct LensPosition {
        bytes32 key;
        address pool;
        address token0;
        address token1;
        uint256 amount0;
        uint256 amount1;
        uint256 pending0;
        uint256 pending1;
        int24 tickLower;
        int24 tickUpper;
    }

    /// @notice Constructor sets owner and core permanently.
    /// @param owner_ Owner of the lens.
    /// @param core_ Initial CLCore address.
    constructor(address owner_, address core_) Ownable(owner_) {
        require(owner_ != address(0), "Lens: zero owner");
        require(core_ != address(0), "Lens: zero core");
        core = ICLCore(core_);
    }

    /// @notice True paginated position details for a user.
    /// @param user Wallet to query.
    /// @param cursor Zero-based index into the user's position keys list.
    /// @param limit Max number of positions to return.
    /// @return positions Up to `limit` LensPosition items.
    /// @return nextCursor Cursor for the next page (equals total length when finished).
    function getUserPositionDetailsPaginated(
        address user,
        uint256 cursor,
        uint256 limit
    ) external view returns (LensPosition[] memory positions, uint256 nextCursor) {
        // NOTE: This allocates the full keys array in memory.
        // If that ever becomes an issue, you can also add a core-side "count + keyAtIndex"
        // pattern, but for most users keys are small.
        bytes32[] memory keys = core.listUserPositionKeys(user);
        uint256 n = keys.length;
        
        if (limit == 0 || cursor >= n) {
            return (new LensPosition[](0), cursor);
        }

        uint256 end = cursor + limit;
        if (end > n) end = n;

        uint256 outLen = end - cursor;
        positions = new LensPosition[](outLen);

        for (uint256 i = 0; i < outLen; ) {
            bytes32 key = keys[cursor + i];
            ICLCore.PositionDetails memory p = core.getPositionDetails(key);

            positions[i] = LensPosition({
                key: key,
                pool: p.pool,
                token0: p.token0,
                token1: p.token1,
                amount0: p.amount0Now,
                amount1: p.amount1Now,
                pending0: p.pendingFees0,
                pending1: p.pendingFees1,
                tickLower: p.tickLower,
                tickUpper: p.tickUpper
            });

            unchecked {
                ++i;
            }
        }

        nextCursor = end;
    }

}