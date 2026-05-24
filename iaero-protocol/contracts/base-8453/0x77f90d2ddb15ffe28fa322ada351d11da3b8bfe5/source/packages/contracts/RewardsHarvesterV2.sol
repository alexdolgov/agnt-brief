// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

/**
 * @title RewardsHarvesterV2
 * @notice Pulls AERO ecosystem rewards via a Permalock vault and routes them:
 *         - Protocol share -> TreasuryDistributor (or treasury fallback)
 *         - Peg reserve     -> Peg defender (or treasury fallback)
 *         - Stakers share   -> StakingDistributor (pull-model)
 *
 * @dev ETH is represented by address(0) in events/logic comments.
 *      Use `setVault` to rotate vaults without redeploying this contract.
 */

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol"; 
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/* -----------------------------
   External interfaces (TOP-LEVEL)
------------------------------ */

interface IVoter {
    function claimBribes(address[] memory _bribes, address[][] memory _tokens, uint256 _tokenId) external;
    function claimFees(address[] memory _fees, address[][] memory _tokens, uint256 _tokenId) external;
    function claimRewards(address[] memory _gauges) external;
    function claimRebase(uint256 tokenId) external;
}

interface IPermalockVault {
    function primaryNFT() external view returns (uint256);
    function executeNFTAction(uint256 tokenId, address target, bytes calldata data) external returns (bytes memory);
    function AERO() external view returns (address);
    function iAERO() external view returns (address);
    function treasury() external view returns (address);
    function sweepERC20(address[] calldata tokens, address to) external returns (uint256[] memory);
    function sweepETH(address to) external returns (uint256 amount);
}

interface IStakingDistributor {
    function notifyRewardAmount(address token, uint256 amount) external payable;
}

interface ITreasuryDistributor {
    function distribute(address token) external;
}

/* --- OPTIONAL view interface to avoid obvious reverts --- */
interface IStakingDistributorView {
    function isRetired(address token) external view returns (bool);
    function rewardTokensLength() external view returns (uint256);
    function maxActiveRewardTokens() external view returns (uint256);
}

/* -----------------------------
            Contract
------------------------------ */

contract RewardsHarvesterV2 is Ownable, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    uint256 public constant BPS = 10_000;
    uint256 public constant PROTOCOL_BASE_BPS = 1_000; // 10%
    uint256 public constant PEG_ACTION_BPS    = 1_000; // 10%

    /// @notice Upper bound to avoid OOG in large batches
    uint256 public constant MAX_TOKENS_PER_TX = 200;

    IPermalockVault public vault;
    IERC20 public AERO;
    IERC20 public iAERO;

    address public voter;
    address public stakingDistributor;
    address public treasuryDistributor;
    address public pegDefender;

    // reserved for future peg logic (left as-is to avoid storage layout changes later)
    address public router;
    address public iaeroAeroPair;
    bool    public pairIsStable;
    uint256 public buyThresholdBps = 8_500;

    mapping(address => bool) public keepers;

    /* -----------------------------
                Events
    ------------------------------ */
    event KeeperSet(address indexed keeper, bool allowed);
    event VoterSet(address indexed voter);
    event StakingDistributorSet(address indexed distributor);
    event TreasuryDistributorSet(address indexed distributor);
    event PegDefenderSet(address indexed defender);
    event RouterSet(address indexed router);
    event PairConfigSet(address indexed pair, bool stable);
    event BuyThresholdSet(uint256 bps);
    event RewardsClaimed(address indexed source, uint256 tokenId, uint8 claimType);
    event TokenReceived(address indexed token, uint256 amount);
    event TreasuryShareSent(address indexed token, uint256 amount, uint256 totalBps);
    event PegReserveSent(address indexed token, uint256 amount);
    event StakersShareSent(address indexed token, uint256 amount);
    event StakersShareFallbackToTreasury(address indexed token, uint256 amount); // clearer than bps=0
    event Distributed(uint256 treasurySideBps, uint256 stakersBps);
    event VaultSet(address indexed newVault, address indexed newAero, address indexed newIAero);
    event Rescue(address indexed token, address indexed to, uint256 amount);
    event RescueETH(address indexed to, uint256 amount);

    /* -----------------------------
              Modifiers
    ------------------------------ */
    modifier onlyKeeperOrOwner() {
        require(keepers[msg.sender] || msg.sender == owner(), "not keeper");
        _;
    }

    constructor(address _vault, address _voter, address _stakingDistributor) Ownable(msg.sender) {
        require(_vault != address(0), "vault=0");
        require(_stakingDistributor != address(0), "dist=0");
        _setVault(_vault); // sets vault, AERO, iAERO
        voter = _voter;
        stakingDistributor = _stakingDistributor;
        emit VoterSet(_voter);
        emit StakingDistributorSet(_stakingDistributor);
    }

    /* ---------- Admin ---------- */

    function setKeeper(address who, bool allowed) external onlyOwner {
        keepers[who] = allowed;
        emit KeeperSet(who, allowed);
    }

    function setVoter(address _voter) external onlyOwner {
        require(_voter != address(0), "voter=0");
        voter = _voter;
        emit VoterSet(_voter);
    }

    function setStakingDistributor(address dst) external onlyOwner {
        require(dst != address(0) && dst.code.length > 0, "dist invalid");
        stakingDistributor = dst;
        emit StakingDistributorSet(dst);
    }

    function setTreasuryDistributor(address _distributor) external onlyOwner {
        treasuryDistributor = _distributor;
        emit TreasuryDistributorSet(_distributor);
    }

    function setPegDefender(address _defender) external onlyOwner {
        pegDefender = _defender;
        emit PegDefenderSet(_defender);
    }

    function setVault(address _newVault) external onlyOwner {
        _setVault(_newVault);
    }

    function _setVault(address _newVault) internal {
        require(_newVault != address(0), "vault=0");
        require(address(_newVault).code.length > 0, "vault !contract");
        IPermalockVault v = IPermalockVault(_newVault);

        address newAero  = v.AERO();
        address newIAero = v.iAERO();
        require(newAero != address(0) && newIAero != address(0), "tokens=0");

        vault = v;
        AERO  = IERC20(newAero);
        iAERO = IERC20(newIAero);

        emit VaultSet(_newVault, newAero, newIAero);
    }

    function setRouter(address _router) external onlyOwner { router = _router; emit RouterSet(_router); }
    function setPairConfig(address _pair, bool _stable) external onlyOwner { iaeroAeroPair = _pair; pairIsStable = _stable; emit PairConfigSet(_pair, _stable); }
    function setBuyThresholdBps(uint256 _bps) external onlyOwner { require(_bps <= BPS, "bps>100%"); buyThresholdBps = _bps; emit BuyThresholdSet(_bps); }

    /// @notice Pause sensitive flows (claims & distribution)
    function pause() external onlyOwner { 
        _pause(); // emits Paused(msg.sender)
    }

    function unpause() external onlyOwner { 
        _unpause(); // emits Unpaused(msg.sender)
    }

    /// @notice Emergency token recovery
    function rescueTokens(address token, address to, uint256 amount) external onlyOwner nonReentrant {
        require(to != address(0), "to=0");
        IERC20(token).safeTransfer(to, amount);
        emit Rescue(token, to, amount);
    }

    /// @notice Emergency ETH recovery
    function rescueETH(address to, uint256 amount) external onlyOwner nonReentrant {
        require(to != address(0), "to=0");
        (bool ok, ) = payable(to).call{value: amount}("");
        require(ok, "eth rescue fail");
        emit RescueETH(to, amount);
    }

    /* ---------- Claims ---------- */

    function claimAerodromeRewards(
        address[] calldata bribes,
        address[][] calldata bribeTokens,
        address[] calldata fees,
        address[][] calldata feeTokens,
        address[] calldata gauges
    ) external nonReentrant onlyKeeperOrOwner whenNotPaused {
        uint256 tokenId = vault.primaryNFT(); require(tokenId != 0, "no veNFT");
        require(voter != address(0), "voter=0");

        if (bribes.length > 0) {
            bytes memory data = abi.encodeWithSelector(IVoter.claimBribes.selector, bribes, bribeTokens, tokenId);
            vault.executeNFTAction(tokenId, voter, data);
            emit RewardsClaimed(voter, tokenId, 1);
        }
        if (fees.length > 0) {
            bytes memory data = abi.encodeWithSelector(IVoter.claimFees.selector, fees, feeTokens, tokenId);
            vault.executeNFTAction(tokenId, voter, data);
            emit RewardsClaimed(voter, tokenId, 2);
        }
        if (gauges.length > 0) {
            bytes memory data = abi.encodeWithSelector(IVoter.claimRewards.selector, gauges);
            vault.executeNFTAction(tokenId, voter, data);
            emit RewardsClaimed(voter, tokenId, 3);
        }
    }

    /* ---------- Distribution ---------- */

    function processAndDistribute(address[] calldata tokens) external nonReentrant onlyKeeperOrOwner whenNotPaused {
        require(stakingDistributor != address(0), "dist=0");
        require(tokens.length <= MAX_TOKENS_PER_TX, "too many tokens");

        // Sweep rewards from vault into this contract
        vault.sweepERC20(tokens, address(this));

        // 10% protocol (to TreasuryDistributor -> splits 80/20), 10% peg, 80% iAERO stakers
        uint256 protocolBps = PROTOCOL_BASE_BPS;  // 10%
        uint256 pegBps      = PEG_ACTION_BPS;     // 10%
        uint256 stakersBps  = BPS - protocolBps - pegBps;  // 80%

        address treasFallback = vault.treasury();
        address dist = treasuryDistributor;

        for (uint256 i = 0; i < tokens.length; i++) {
            address token = tokens[i];
            if (token == address(0)) continue;

            uint256 received = IERC20(token).balanceOf(address(this));
            if (received == 0) continue;

            emit TokenReceived(token, received);

            uint256 toProtocol = (received * protocolBps) / BPS;
            uint256 toPeg      = (received * pegBps) / BPS;
            uint256 toStakers  = received - toProtocol - toPeg;

            // Protocol share (wrap distribute() to avoid cascade failure)
            if (toProtocol > 0) {
                if (dist != address(0)) {
                    IERC20(token).safeTransfer(dist, toProtocol);
                    emit TreasuryShareSent(token, toProtocol, protocolBps);
                    // prevent a single-token revert from halting the whole batch
                    try ITreasuryDistributor(dist).distribute(token) {
                        // ok
                    } catch {
                        // swallow; funds already transferred to dist
                    }
                } else {
                    IERC20(token).safeTransfer(treasFallback, toProtocol);
                    emit TreasuryShareSent(token, toProtocol, protocolBps);
                }
            }

            // Peg reserve
            if (toPeg > 0) {
                address pegDest = pegDefender != address(0) ? pegDefender : treasFallback;
                IERC20(token).safeTransfer(pegDest, toPeg);
                emit PegReserveSent(token, toPeg);
            }

            // iAERO stakers (pull model) — verify tokens are actually pulled
            if (toStakers > 0) {
                // Optional pre-check to avoid obvious reverts
                bool retired = false;
                try IStakingDistributorView(stakingDistributor).isRetired(token) returns (bool r) {
                    retired = r;
                } catch {}

                if (!retired) {
                    uint256 balBefore = IERC20(token).balanceOf(address(this));

                    IERC20(token).forceApprove(stakingDistributor, toStakers);
                    bool okPull = false;
                    try IStakingDistributor(stakingDistributor).notifyRewardAmount(token, toStakers) {
                        okPull = true;
                    } catch {
                        okPull = false;
                    }
                    IERC20(token).forceApprove(stakingDistributor, 0);

                    if (okPull) {
                        uint256 balAfter = IERC20(token).balanceOf(address(this));
                        // exact pull check to prevent silent accumulation
                        require(balBefore - balAfter == toStakers, "notify: transfer mismatch");
                        emit StakersShareSent(token, toStakers);
                    } else {
                        address fallbackDest = dist != address(0) ? dist : treasFallback;
                        IERC20(token).safeTransfer(fallbackDest, toStakers);
                        emit StakersShareFallbackToTreasury(token, toStakers);
                    }
                } else {
                    address fallbackDest = dist != address(0) ? dist : treasFallback;
                    IERC20(token).safeTransfer(fallbackDest, toStakers);
                    emit StakersShareFallbackToTreasury(token, toStakers);
                }
            }
        }

        emit Distributed(protocolBps + pegBps, stakersBps);
    }

    function processAndDistributeETH() external nonReentrant onlyKeeperOrOwner whenNotPaused {
        require(stakingDistributor != address(0), "dist=0");

        // Sweep ETH from vault
        vault.sweepETH(address(this));

        uint256 total = address(this).balance;
        if (total == 0) return;

        uint256 protocolBps = PROTOCOL_BASE_BPS;  // 10%
        uint256 pegBps      = PEG_ACTION_BPS;     // 10%
        uint256 stakersBps  = BPS - protocolBps - pegBps;  // 80%

        uint256 toProtocol = (total * protocolBps) / BPS;
        uint256 toPeg      = (total * pegBps) / BPS;
        uint256 toStakers  = total - toProtocol - toPeg;

        address treasFallback = vault.treasury();
        address dist = treasuryDistributor;

        // Protocol share (ETH) — protect against cascade failure
        if (toProtocol > 0) {
            address dest = dist != address(0) ? dist : treasFallback;
            (bool ok, ) = payable(dest).call{value: toProtocol}("");
            require(ok, "protocol ETH xfer fail");
            emit TreasuryShareSent(address(0), toProtocol, protocolBps);
            if (dist != address(0)) {
                try ITreasuryDistributor(dist).distribute(address(0)) {
                } catch { /* swallow */ }
            }
        }

        // Peg reserve (ETH)
        if (toPeg > 0) {
            address pegDest = pegDefender != address(0) ? pegDefender : treasFallback;
            (bool ok2, ) = payable(pegDest).call{value: toPeg}("");
            require(ok2, "peg ETH xfer fail");
            emit PegReserveSent(address(0), toPeg);
        }

        // iAERO stakers (ETH path) — best-effort, with fallback
        if (toStakers > 0) {
            bool retired = false;
            try IStakingDistributorView(stakingDistributor).isRetired(address(0)) returns (bool r) {
                retired = r;
            } catch {}

            if (!retired) {
                (bool ok3, ) = address(stakingDistributor).call{value: toStakers}(
                    abi.encodeWithSelector(IStakingDistributor.notifyRewardAmount.selector, address(0), toStakers)
                );
                if (!ok3) {
                    address fallbackDest = dist != address(0) ? dist : treasFallback;
                    (bool ok4, ) = payable(fallbackDest).call{value: toStakers}("");
                    require(ok4, "fallback ETH xfer fail");
                    emit StakersShareFallbackToTreasury(address(0), toStakers);
                } else {
                    emit StakersShareSent(address(0), toStakers);
                }
            } else {
                address fallbackDest = dist != address(0) ? dist : treasFallback;
                (bool ok5, ) = payable(fallbackDest).call{value: toStakers}("");
                require(ok5, "fallback ETH xfer fail");
                emit StakersShareFallbackToTreasury(address(0), toStakers);
            }
        }

        emit Distributed(protocolBps + pegBps, stakersBps);
    }

    receive() external payable {}
}
