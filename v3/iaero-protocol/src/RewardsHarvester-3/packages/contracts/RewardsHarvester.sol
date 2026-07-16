// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
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

/* -----------------------------
            Contract
------------------------------ */

contract RewardsHarvester is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    uint256 public constant BPS = 10_000;
    uint256 public constant PROTOCOL_BASE_BPS = 1_000; // 10%
    uint256 public constant PEG_ACTION_BPS    = 1_000; // 10% bucket (unused atm)

    IPermalockVault public immutable vault;
    IERC20 public immutable AERO;
    IERC20 public immutable iAERO;

    address public voter;
    address public stakingDistributor;

    address public router;          // reserved for future peg logic
    address public iaeroAeroPair;   // reserved for future peg logic
    bool    public pairIsStable;    // reserved
    uint256 public buyThresholdBps = 8_500;

    mapping(address => bool) public keepers;

    event KeeperSet(address indexed keeper, bool allowed);
    event VoterSet(address indexed voter);
    event StakingDistributorSet(address indexed distributor);
    event RouterSet(address indexed router);
    event PairConfigSet(address indexed pair, bool stable);
    event BuyThresholdSet(uint256 bps);
    event RewardsClaimed(address indexed source, uint256 tokenId, uint8 claimType);
    event TokenReceived(address indexed token, uint256 amount);
    event TreasuryShareSent(address indexed token, uint256 amount, uint256 totalBps);
    event StakersShareSent(address indexed token, uint256 amount);
    event Distributed(uint256 treasuryBps, uint256 stakersBps);

    constructor(address _vault, address _voter, address _stakingDistributor) Ownable(msg.sender) {
        require(_vault != address(0), "vault=0");
        require(_stakingDistributor != address(0), "dist=0");
        vault = IPermalockVault(_vault);
        voter = _voter;
        stakingDistributor = _stakingDistributor;
        AERO = IERC20(vault.AERO());
        iAERO = IERC20(vault.iAERO());
        emit VoterSet(_voter);
        emit StakingDistributorSet(_stakingDistributor);
    }

    /* ---------- Admin ---------- */

    function setKeeper(address who, bool allowed) external onlyOwner {
        keepers[who] = allowed; emit KeeperSet(who, allowed);
    }

    function setVoter(address _voter) external onlyOwner {
        require(_voter != address(0), "voter=0");
        voter = _voter; emit VoterSet(_voter);
    }

    function setStakingDistributor(address dst) external onlyOwner {
        require(dst != address(0) && dst.code.length > 0, "dist invalid");
        stakingDistributor = dst; emit StakingDistributorSet(dst);
    }

    function setRouter(address _router) external onlyOwner { router = _router; emit RouterSet(_router); }
    function setPairConfig(address _pair, bool _stable) external onlyOwner { iaeroAeroPair = _pair; pairIsStable = _stable; emit PairConfigSet(_pair, _stable); }
    function setBuyThresholdBps(uint256 _bps) external onlyOwner { require(_bps <= BPS, "bps>100%"); buyThresholdBps = _bps; emit BuyThresholdSet(_bps); }

    /* ---------- Views ---------- */

    function getProtocolCutBps() public view returns (uint256) {
        uint256 totalBps = PROTOCOL_BASE_BPS;
        if (totalBps > 8_000) totalBps = 8_000; // reserve room for peg+stakers
        return totalBps;
    }

    /* ---------- Claims ---------- */

    function claimAerodromeRewards(
        address[] calldata bribes,
        address[][] calldata bribeTokens,
        address[] calldata fees,
        address[][] calldata feeTokens,
        address[] calldata gauges
    ) external nonReentrant {
        require(keepers[msg.sender] || msg.sender == owner(), "not keeper");
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

    function processAndDistribute(address[] calldata tokens) external nonReentrant {
        require(keepers[msg.sender] || msg.sender == owner(), "not keeper");
        require(stakingDistributor != address(0), "dist=0");

        // 1) sweep *all* listed tokens from vault to harvester
        vault.sweepERC20(tokens, address(this));

        uint256 protocolBps = getProtocolCutBps();
        uint256 treasuryBps = protocolBps + PEG_ACTION_BPS;
        require(treasuryBps <= BPS, "bps overflow");
        uint256 stakersBps = BPS - treasuryBps;

        address treas = vault.treasury();

        for (uint256 i = 0; i < tokens.length; i++) {
            address token = tokens[i]; if (token == address(0)) continue;
            uint256 received = IERC20(token).balanceOf(address(this));
            if (received == 0) continue;

            emit TokenReceived(token, received);

            uint256 toTreasury = (received * treasuryBps) / BPS;
            uint256 toStakers  = received - toTreasury;

            if (toTreasury > 0) {
                IERC20(token).safeTransfer(treas, toTreasury);
                emit TreasuryShareSent(token, toTreasury, treasuryBps);
            }
            if (toStakers > 0) {
                IERC20(token).forceApprove(stakingDistributor, toStakers);
                IStakingDistributor(stakingDistributor).notifyRewardAmount(token, toStakers);
                emit StakersShareSent(token, toStakers);
            }
        }
        emit Distributed(treasuryBps, stakersBps);
    }

    function processAndDistributeETH() external nonReentrant {
        require(keepers[msg.sender] || msg.sender == owner(), "not keeper");
        require(stakingDistributor != address(0), "dist=0");

        // Sweep ETH from vault to harvester
        IPermalockVault(vault).sweepETH(address(this));

        // Distribute the entire balance we now hold (includes leftovers)
        uint256 total = address(this).balance;
        if (total == 0) return;

        uint256 protocolBps = getProtocolCutBps();
        uint256 treasuryBps = protocolBps + PEG_ACTION_BPS; require(treasuryBps <= BPS, "bps overflow");
        uint256 toTreasury = (total * treasuryBps) / BPS;
        uint256 toStakers  = total - toTreasury;

        if (toTreasury > 0) {
            (bool ok, ) = payable(vault.treasury()).call{value: toTreasury}(""); require(ok, "treasury ETH xfer fail");
            emit TreasuryShareSent(address(0), toTreasury, treasuryBps);
        }
        if (toStakers > 0) {
            IStakingDistributor(stakingDistributor).notifyRewardAmount{value: toStakers}(address(0), toStakers);
            emit StakersShareSent(address(0), toStakers);
        }
        emit Distributed(treasuryBps, BPS - treasuryBps);
    }


    receive() external payable {}
}
