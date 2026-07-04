// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {
    ConnectorBase,
    IERC20Like,
    INonfungiblePositionManagerLike,
    ICLFactoryLike,
    IVoterLike,
    ICLGaugeLike
} from "./ConnectorBase.sol";

/// @title ConnectorCl
/// @notice Slipstream concentrated-liquidity lifecycle as ATOMIC primitives, each
///         function exactly one state transition (Doc 0 §4B/§4C). Delegatecalled by
///         a TopazAccount, so minted/staked positions are owned by the account.
///
///         **One justified composite:** `mint(stake=true)` fuses mint+stake because
///         `NPM.mint` returns a `tokenId` that does not exist off-chain — a separate
///         stake leg could not reference it. Every other op (increase, decrease,
///         remove, collect, stake, unstake, claim, withdrawNft) acts on an
///         already-known `tokenId` and is a clean standalone primitive that the
///         off-chain expander sequences into a batch.
///
///         **No ERC20 self-approve.** The NPM ERC20 approvals for mint/increase are
///         explicit `ConnectorToken.approve` legs. The ONLY intrinsic approval here
///         is `NPM.approve(gauge, tokenId)` — an NFT approval, 1:1 with the deposit
///         it enables (and, in the fused mint, for a tokenId only known mid-call).
///
///         **Working balance:** outputs (freed liquidity, fees, emissions) stay in
///         the account; a trailing `ConnectorToken.transfer` leg returns them.
contract ConnectorCl is ConnectorBase {
    address public immutable positionManager;
    address public immutable clFactory;
    address public immutable voter;

    struct MintParams {
        address token0;
        address token1;
        int24 tickSpacing;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired; // or USE_FULL_BALANCE
        uint256 amount1Desired; // or USE_FULL_BALANCE
        uint256 amount0Min;
        uint256 amount1Min;
        bool stake; // fuse the stake (the only justified composite)
        uint256 deadline;
    }

    struct IncreaseParams {
        uint256 tokenId;
        address token0;
        address token1;
        uint256 amount0Desired; // or USE_FULL_BALANCE
        uint256 amount1Desired; // or USE_FULL_BALANCE
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    struct DecreaseParams {
        uint256 tokenId;
        uint128 liquidity; // or type(uint128).max = full position liquidity
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    struct GaugeParams {
        uint256 tokenId;
        address token0;
        address token1;
        int24 tickSpacing;
    }

    uint128 internal constant FULL_LIQUIDITY = type(uint128).max;

    event Minted(address indexed account, address indexed gauge, uint256 indexed tokenId, bool staked);
    event Increased(address indexed account, uint256 indexed tokenId, uint256 amount0, uint256 amount1);
    event Decreased(address indexed account, uint256 indexed tokenId, uint256 amount0, uint256 amount1);
    event Removed(address indexed account, uint256 indexed tokenId, uint256 amount0, uint256 amount1);
    event Collected(address indexed account, uint256 indexed tokenId, uint256 amount0, uint256 amount1);
    event Staked(address indexed account, address indexed gauge, uint256 indexed tokenId);
    event Unstaked(address indexed account, address indexed gauge, uint256 indexed tokenId);
    event RewardClaimed(address indexed account, address indexed gauge, uint256 indexed tokenId);
    event NftWithdrawn(address indexed account, address indexed to, uint256 indexed tokenId);

    error PoolNotFound();
    error GaugeNotFound();

    constructor(address _wbnb, address _positionManager, address _clFactory, address _voter) ConnectorBase(_wbnb) {
        positionManager = _positionManager;
        clFactory = _clFactory;
        voter = _voter;
    }

    /// @dev CL_ADD_LIQUIDITY (open). The one fused atom. The account must already
    ///      hold both tokens and have approved the NPM (explicit prior legs). When
    ///      `stake`, the freshly-minted NFT is approved to + deposited in the gauge.
    function mint(MintParams calldata p) external payable returns (uint256 tokenId) {
        uint256 amount0 = _resolveAmount(p.token0, p.amount0Desired);
        uint256 amount1 = _resolveAmount(p.token1, p.amount1Desired);

        (tokenId,,,) = INonfungiblePositionManagerLike(positionManager).mint(
            INonfungiblePositionManagerLike.MintParams({
                token0: p.token0,
                token1: p.token1,
                tickSpacing: p.tickSpacing,
                tickLower: p.tickLower,
                tickUpper: p.tickUpper,
                amount0Desired: amount0,
                amount1Desired: amount1,
                amount0Min: p.amount0Min,
                amount1Min: p.amount1Min,
                recipient: address(this),
                deadline: p.deadline,
                sqrtPriceX96: 0
            })
        );

        address gauge;
        if (p.stake) {
            gauge = _gauge(p.token0, p.token1, p.tickSpacing);
            INonfungiblePositionManagerLike(positionManager).approve(gauge, tokenId);
            ICLGaugeLike(gauge).deposit(tokenId);
        }
        emit Minted(address(this), gauge, tokenId, p.stake);
    }

    /// @dev CL_INCREASE_LIQUIDITY. Requires the account to own the NFT (unstake
    ///      first) and the NPM approved (explicit prior legs).
    function increase(IncreaseParams calldata p) external payable returns (uint256 amount0, uint256 amount1) {
        uint256 amount0Desired = _resolveAmount(p.token0, p.amount0Desired);
        uint256 amount1Desired = _resolveAmount(p.token1, p.amount1Desired);
        (, amount0, amount1) = INonfungiblePositionManagerLike(positionManager).increaseLiquidity(
            INonfungiblePositionManagerLike.IncreaseLiquidityParams({
                tokenId: p.tokenId,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: p.amount0Min,
                amount1Min: p.amount1Min,
                deadline: p.deadline
            })
        );
        emit Increased(address(this), p.tokenId, amount0, amount1);
    }

    /// @dev CL_DECREASE_LIQUIDITY. Pulls `liquidity` (full when type(uint128).max)
    ///      and collects the freed amounts into the account. Position stays alive.
    function decrease(DecreaseParams calldata p) external payable returns (uint256 amount0, uint256 amount1) {
        uint128 liq = _resolveLiquidity(p.tokenId, p.liquidity);
        if (liq > 0) {
            INonfungiblePositionManagerLike(positionManager).decreaseLiquidity(
                INonfungiblePositionManagerLike.DecreaseLiquidityParams({
                    tokenId: p.tokenId,
                    liquidity: liq,
                    amount0Min: p.amount0Min,
                    amount1Min: p.amount1Min,
                    deadline: p.deadline
                })
            );
        }
        (amount0, amount1) = _collect(p.tokenId);
        emit Decreased(address(this), p.tokenId, amount0, amount1);
    }

    /// @dev CL_REMOVE_LIQUIDITY. decrease(all) + collect + burn. Position destroyed.
    function remove(DecreaseParams calldata p) external payable returns (uint256 amount0, uint256 amount1) {
        (,,,,,,, uint128 liquidity,,,,) =
            INonfungiblePositionManagerLike(positionManager).positions(p.tokenId);
        if (liquidity > 0) {
            INonfungiblePositionManagerLike(positionManager).decreaseLiquidity(
                INonfungiblePositionManagerLike.DecreaseLiquidityParams({
                    tokenId: p.tokenId,
                    liquidity: liquidity,
                    amount0Min: p.amount0Min,
                    amount1Min: p.amount1Min,
                    deadline: p.deadline
                })
            );
        }
        (amount0, amount1) = _collect(p.tokenId);
        INonfungiblePositionManagerLike(positionManager).burn(p.tokenId);
        emit Removed(address(this), p.tokenId, amount0, amount1);
    }

    /// @dev CL_COLLECT_FEES. Collect owed fees only; liquidity unchanged.
    function collect(uint256 tokenId) external payable returns (uint256 amount0, uint256 amount1) {
        (amount0, amount1) = _collect(tokenId);
        emit Collected(address(this), tokenId, amount0, amount1);
    }

    /// @dev STAKE_POSITION. Approve the (known) NFT to the gauge and deposit. The
    ///      NFT approval is intrinsic stake plumbing.
    function stake(GaugeParams calldata p) external payable {
        address gauge = _gauge(p.token0, p.token1, p.tickSpacing);
        INonfungiblePositionManagerLike(positionManager).approve(gauge, p.tokenId);
        ICLGaugeLike(gauge).deposit(p.tokenId);
        emit Staked(address(this), gauge, p.tokenId);
    }

    /// @dev UNSTAKE_POSITION. `gauge.withdraw` returns the NFT to the account and
    ///      (per the Topaz CL gauge) auto-claims emissions into the account.
    function unstake(GaugeParams calldata p) external payable {
        address gauge = _gauge(p.token0, p.token1, p.tickSpacing);
        ICLGaugeLike(gauge).withdraw(p.tokenId);
        emit Unstaked(address(this), gauge, p.tokenId);
    }

    /// @dev CLAIM_REWARDS. Claim gauge emissions for a staked position into the
    ///      account (left as working balance).
    function claim(GaugeParams calldata p) external payable {
        address gauge = _gauge(p.token0, p.token1, p.tickSpacing);
        ICLGaugeLike(gauge).getReward(p.tokenId);
        emit RewardClaimed(address(this), gauge, p.tokenId);
    }

    /// @dev Hand the live position NFT to the owner EOA (liquidity intact). The
    ///      account must own the NFT (unstake first). Owner-only recipient.
    function withdrawNft(uint256 tokenId) external payable {
        address ownerAddr = _owner();
        INonfungiblePositionManagerLike(positionManager).safeTransferFrom(address(this), ownerAddr, tokenId);
        emit NftWithdrawn(address(this), ownerAddr, tokenId);
    }

    function _collect(uint256 tokenId) private returns (uint256 amount0, uint256 amount1) {
        (amount0, amount1) = INonfungiblePositionManagerLike(positionManager).collect(
            INonfungiblePositionManagerLike.CollectParams({
                tokenId: tokenId,
                recipient: address(this),
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );
    }

    function _resolveLiquidity(uint256 tokenId, uint128 want) private view returns (uint128) {
        (,,,,,,, uint128 liquidity,,,,) =
            INonfungiblePositionManagerLike(positionManager).positions(tokenId);
        if (want == FULL_LIQUIDITY || want > liquidity) return liquidity;
        return want;
    }

    function _gauge(address token0, address token1, int24 tickSpacing) private view returns (address gauge) {
        address pool = ICLFactoryLike(clFactory).getPool(token0, token1, tickSpacing);
        if (pool == address(0)) revert PoolNotFound();
        gauge = IVoterLike(voter).gauges(pool);
        if (gauge == address(0)) revert GaugeNotFound();
    }
}
