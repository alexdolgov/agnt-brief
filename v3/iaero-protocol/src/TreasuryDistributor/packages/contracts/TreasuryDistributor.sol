// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface ILIQStakingDistributor {
    function notifyRewardAmount(address token, uint256 amount) external payable;
}

/**
 * @title TreasuryDistributor
 * @notice Splits funds held by this contract: 80% to LIQ stakers, 20% to the treasury.
 *         Anyone may trigger distribution; owner may sweep stray funds.
 * @dev    - OZ v5 compatible
 *         - ethers v6 compatible
 *         - Resilient: per-token try/catch, and fallback-to-treasury if notify fails
 *         - ABI unchanged for distribute()/distributeMultiple(), so upstream callers (Harvester) are unaffected
 */
contract TreasuryDistributor is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /* ------------------- Constants ------------------- */
    /// @notice 80% to LIQ stakers
    uint256 public constant LIQ_SHARE_BPS     = 8000;
    /// @notice 20% to treasury
    uint256 public constant TREASURY_KEEP_BPS = 2000;
    /// @notice BPS base
    uint256 public constant BPS               = 10000;

    /// @notice Maximum number of tokens processed in a single distributeMultiple call (gas guard)
    uint256 public constant MAX_BATCH = 64;

    /* ------------------- Immutables ------------------ */
    address public immutable treasury;
    address public immutable liqStakingDistributor;

    /* ------------------- Events ---------------------- */
    /// @notice Emitted after a distribution attempt for a token (ETH uses address(0))
    event FundsDistributed(address indexed token, uint256 toLiqStakers, uint256 toTreasury);
    /// @notice Emitted when a notify to the LIQ staking distributor fails and we route to treasury instead
    event LiqNotifyFailed(address indexed token, uint256 amountRoutedToTreasury);
    /// @notice Emitted when a token in distributeMultiple is skipped due to failure
    event DistributionSkipped(address indexed token);
    /// @notice Emitted when owner sweeps funds out of the contract
    event Sweeped(address indexed token, address indexed to, uint256 amount);

    /* ------------------- Constructor ----------------- */
    constructor(address _treasury, address _liqStaking) Ownable(msg.sender) {
        require(_treasury != address(0), "treasury=0");
        require(_liqStaking != address(0), "liqStaking=0");
        treasury = _treasury;
        liqStakingDistributor = _liqStaking;
    }

    /* -------------------------------------------------
                               External
       ------------------------------------------------- */

    /**
     * @notice Distribute a single token's balance (anyone may call).
     * @param token Token address; use address(0) for native ETH.
     */
    function distribute(address token) external nonReentrant {
        _distribute(token);
    }

    /**
     * @notice Distribute multiple tokens in one transaction (anyone may call).
     * @param tokens Array of token addresses; use address(0) for native ETH.
     * @dev    Gas-guarded and resilient: each token is processed via an external self-call
     *         so we can try/catch per token without reverting the whole batch.
     */
    function distributeMultiple(address[] calldata tokens) external nonReentrant {
        uint256 len = tokens.length;
        require(len <= MAX_BATCH, "batch too large");
        for (uint256 i = 0; i < len; i++) {
            try this._distributeExternal(tokens[i]) {} catch {
                emit DistributionSkipped(tokens[i]);
            }
        }
    }

    /**
     * @notice Sweep arbitrary ETH/ERC20 to a recipient (owner only).
     * @param token Token to sweep (address(0) for ETH)
     * @param to    Recipient address (must be non-zero)
     */
    function sweep(address token, address to) external onlyOwner nonReentrant {
        require(to != address(0), "to=0");

        if (token == address(0)) {
            uint256 bal = address(this).balance;
            if (bal > 0) {
                (bool ok, ) = payable(to).call{value: bal}("");
                require(ok, "sweep ETH fail");
                emit Sweeped(address(0), to, bal);
            }
        } else {
            IERC20 erc = IERC20(token);
            uint256 bal = erc.balanceOf(address(this));
            if (bal > 0) {
                erc.safeTransfer(to, bal);
                emit Sweeped(token, to, bal);
            }
        }
    }

    /**
     * @notice Externalized wrapper so we can try/catch around the internal logic in distributeMultiple.
     * @dev    This is intentionally callable only by the contract itself to prevent external misuse.
     */
    function _distributeExternal(address token) external {
        require(msg.sender == address(this), "internal-only");
        _distribute(token);
    }

    /* -------------------------------------------------
                               Internal
       ------------------------------------------------- */

    function _distribute(address token) internal {
        address dst = liqStakingDistributor; // cache

        if (token == address(0)) {
            // ---------- ETH path ----------
            uint256 balance = address(this).balance;
            if (balance == 0) return;

            uint256 toLiq   = (balance * LIQ_SHARE_BPS) / BPS;
            uint256 toTreas = balance - toLiq;

            // LIQ stakers (fallback to treasury if notify fails)
            if (toLiq > 0) {
                (bool ok, ) = dst.call{value: toLiq}(
                    abi.encodeWithSelector(
                        ILIQStakingDistributor.notifyRewardAmount.selector,
                        address(0),
                        toLiq
                    )
                );
                if (!ok) {
                    (bool ok2, ) = payable(treasury).call{value: toLiq}("");
                    require(ok2, "fallback ETH->treasury fail");
                    emit LiqNotifyFailed(address(0), toLiq);
                }
            }

            // Treasury (send even if zero for consistency; safe in EVM)
            (bool success, ) = payable(treasury).call{value: toTreas}("");
            require(success, "treasury ETH fail");

            emit FundsDistributed(address(0), toLiq, toTreas);
            return;
        }

        // ---------- ERC20 path ----------
        IERC20 erc = IERC20(token);
        uint256 balance = erc.balanceOf(address(this));
        if (balance == 0) return;

        uint256 toLiq   = (balance * LIQ_SHARE_BPS) / BPS;
        uint256 toTreas = balance - toLiq;

        if (toLiq > 0) {
            // Approve exact, notify, then reset allowance to zero
            erc.forceApprove(dst, toLiq);
            try ILIQStakingDistributor(dst).notifyRewardAmount(token, toLiq) {
                erc.forceApprove(dst, 0);
            } catch {
                erc.forceApprove(dst, 0);
                // fallback: route the intended LIQ-share to treasury so it doesn't get stuck here
                erc.safeTransfer(treasury, toLiq);
                emit LiqNotifyFailed(token, toLiq);
            }
        }

        // Treasury (safe to transfer zero)
        erc.safeTransfer(treasury, toTreas);

        emit FundsDistributed(token, toLiq, toTreas);
    }

    /* -------------------------------------------------
                               Receive
       ------------------------------------------------- */

    receive() external payable {}
}
