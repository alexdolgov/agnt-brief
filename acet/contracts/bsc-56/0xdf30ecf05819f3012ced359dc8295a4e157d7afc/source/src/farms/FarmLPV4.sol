// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {FarmBase} from "./FarmBase.sol";
import {IMintReserve} from "./interfaces/IMintReserve.sol";
import {ICLPositionManager, ICLPoolManager, PoolKey} from "./interfaces/ICLPositionManager.sol";
import {TickMath} from "infinity-core/src/pool-cl/libraries/TickMath.sol";
import {SqrtPriceMath} from "infinity-core/src/pool-cl/libraries/SqrtPriceMath.sol";
import {CLPoolParametersHelper} from "infinity-core/src/pool-cl/libraries/CLPoolParametersHelper.sol";

/// @title FarmLPV4
/// @notice "Pool ACT-LP V.4" — stake a FULL-RANGE PCS Infinity v4 ACT/USDT liquidity
///         position (ERC721), earn ACT v4 rewards.
///
/// Principal valuation (frozen at stake time):
///   principal = 2 × ACT amount currently in the position
///   (ACT-denominated, so the reward % is a true value-% — consistent with the
///    V.2/V.4 farms which also stake & reward in ACT. For a full-range position
///    the ACT side and USDT side are equal in value, so 2×ACT = total position
///    value expressed in ACT.)
///
/// Verification at stake time:
///   1. keccak256(abi.encode(PoolKey)) == PINNED_POOL_ID
///      → guarantees the position is in OUR ACT/USDT v4 pool (with CLWhitelistHookV3).
///   2. tickLower == TickMath.minUsableTick(tickSpacing) AND
///      tickUpper == TickMath.maxUsableTick(tickSpacing)
///      → guarantees the position is full-range.
///
/// Custody:
///   Farm holds the NFT for the entire lock. At maturity, the NFT is transferred
///   back to the user as-is. Any trading fees that accrued during the lock remain
///   in the NFT and become claimable by the user (via the position manager) after
///   they receive it back. The farm does NOT collect fees.
contract FarmLPV4 is FarmBase {
    using CLPoolParametersHelper for bytes32;

    /// @notice Pool ID for the ACT/USDT v4 CL pool gated by CLWhitelistHookV3.
    /// (USDT = currency0, ACT = currency1, hooks = 0x21e0…F2eF, manager = 0xa0Ff…058b)
    bytes32 public immutable PINNED_POOL_ID;

    ICLPositionManager public immutable posMgr;
    ICLPoolManager public immutable poolMgr;

    /// @dev v4 hook is fixed at this address; we don't strictly need it here since
    ///      PINNED_POOL_ID encodes it, but keep for off-chain readability.
    address public immutable HOOK;

    /// @dev USDT is currency0 in this pool (lower address sorts first).
    address public immutable USDT;
    address public immutable ACT;

    mapping(uint256 => uint256) public stakedTokenId; // stakeId → ERC721 tokenId
    mapping(uint256 => bool) public tokenIdLocked;    // tokenId → is currently staked

    error WrongPool(bytes32 actual, bytes32 expected);
    error NotFullRange(int24 tickLower, int24 tickUpper, int24 tickSpacing);
    error ZeroLiquidity();
    error AlreadyStaked();
    error UsdtNotCurrency0();

    event LpStaked(address indexed user, uint256 indexed id, uint256 tokenId, uint128 liquidity, uint256 actAmount, uint256 principal);

    constructor(
        IMintReserve _mintReserve,
        ICLPositionManager _posMgr,
        ICLPoolManager _poolMgr,
        bytes32 _pinnedPoolId,
        address _hook,
        address _usdt,
        address _act
    ) FarmBase(_mintReserve) {
        posMgr = _posMgr;
        poolMgr = _poolMgr;
        PINNED_POOL_ID = _pinnedPoolId;
        HOOK = _hook;
        USDT = _usdt;
        ACT = _act;
        // Sanity check the sort order; the principal valuation depends on it.
        if (uint160(_usdt) >= uint160(_act)) revert UsdtNotCurrency0();
    }

    function tierBps(Tier tier) public pure override returns (uint16) {
        if (tier == Tier.D30)  return 100;    // 1.00%
        if (tier == Tier.D90)  return 400;    // 4.00%
        if (tier == Tier.D180) return 1100;   // 11.00%
        return 4200;                          // 42.00%
    }

    /// @notice Stake a full-range ACT/USDT v4 position NFT for `tier`.
    /// Caller must approve this contract for `tokenId` first (or use setApprovalForAll).
    function stake(uint256 tokenId, Tier tier) external whenNotPaused returns (uint256 id) {
        if (tokenIdLocked[tokenId]) revert AlreadyStaked();

        // Pull the NFT in. posMgr.safeTransferFrom will trigger onERC721Received on us.
        posMgr.safeTransferFrom(msg.sender, address(this), tokenId);

        uint256 principal = _verifyAndValuePosition(tokenId);

        tokenIdLocked[tokenId] = true;
        id = _recordStake(msg.sender, principal, tier);
        stakedTokenId[id] = tokenId;

        emit LpStaked(msg.sender, id, tokenId, posMgr.getPositionLiquidity(tokenId), principal / 2, principal);
    }

    /// @dev Verifies (a) the NFT is in the pinned ACT/USDT pool, (b) it's full-range,
    ///      then returns principal = 2 * ACT amount currently in the position.
    function _verifyAndValuePosition(uint256 tokenId) internal view returns (uint256 principal) {
        (PoolKey memory key, uint256 info) = posMgr.getPoolAndPositionInfo(tokenId);

        // (a) Pool identity check.
        bytes32 actualPoolId = keccak256(abi.encode(key));
        if (actualPoolId != PINNED_POOL_ID) revert WrongPool(actualPoolId, PINNED_POOL_ID);

        // Decode tickLower / tickUpper from PositionInfo (matches Uniswap v4 layout):
        // bit 0: subscriber, bits 8-31: tickLower (int24), bits 32-55: tickUpper (int24).
        int24 tickLower = int24(int256(info) >> 8);
        int24 tickUpper = int24(int256(info) >> 32);

        // (b) Full-range check.
        int24 tickSpacing = key.parameters.getTickSpacing();
        int24 minTick = TickMath.minUsableTick(tickSpacing);
        int24 maxTick = TickMath.maxUsableTick(tickSpacing);
        if (tickLower != minTick || tickUpper != maxTick) {
            revert NotFullRange(tickLower, tickUpper, tickSpacing);
        }

        // Compute USDT amount currently in the position.
        uint128 liquidity = posMgr.getPositionLiquidity(tokenId);
        if (liquidity == 0) revert ZeroLiquidity();

        (uint160 sqrtPriceX96, , , ) = poolMgr.getSlot0(PINNED_POOL_ID);
        uint160 sqrtLower = TickMath.getSqrtRatioAtTick(minTick);
        // ACT is currency1, so amount1 = ACT held by the position right now.
        // For a position with current price within [lower, upper], amount1 between
        // lower price and current price is the token1 component.
        uint256 actAmount = SqrtPriceMath.getAmount1Delta(sqrtLower, sqrtPriceX96, liquidity, false);

        principal = actAmount * 2;
    }

    function _returnPrincipal(uint256 stakeId) internal override {
        StakeRecord storage s = stakes[stakeId];
        uint256 tokenId = stakedTokenId[stakeId];
        tokenIdLocked[tokenId] = false;
        // Fees stay in the NFT; user collects them later via the position manager.
        posMgr.safeTransferFrom(address(this), s.owner, tokenId);
    }

    /// @notice ERC721 receiver hook. Accepts any incoming NFT; verification happens in `stake`.
    function onERC721Received(address, address, uint256, bytes calldata) external pure returns (bytes4) {
        return this.onERC721Received.selector;
    }
}
