pragma solidity ^0.8.30;
/* SPDX-License-Identifier: MIT
  _____ _          _          _         
 |  ___(_)_ __ ___| |    __ _| |__  ___ 
 | |_  | | '__/ _ \ |   / _` | '_ \/ __|
 |  _| | | | |  __/ |__| (_| | |_) \__ \
 |_|   |_|_|  \___|_____\__,_|_.__/|___/

FUSD v2.11
*/

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

interface IComet {
    function supply(address asset, uint256 amount) external;
    function withdraw(address asset, uint256 amount) external;
}

interface ICometRewards {
    struct RewardOwed { address token; uint256 owed; }
    function getRewardOwed(address comet, address account) external returns (RewardOwed memory);
    function claim(address comet, address src, bool shouldAccrue) external;
    function claimTo(address comet, address src, address to, bool shouldAccrue) external;
}

interface IOraclePool {
    function swapExactUsdt0ForToken(uint256 amountIn, uint256 minAmountOut, uint256 deadline) external returns (uint256 amountOut);
    function trust() external view returns (bool);
}

contract FUSDv2 is ERC20, Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    function decimals() public pure override returns (uint8) { return 6; }
    
    address public constant USDT0_ADDR   = 0xc2132D05D31c914a87C6611C10748AEb04B58e8F;
    address public constant COMET_ADDR   = 0xaeB318360f27748Acb200CE616E389A6C9409a07;
    address public constant REWARDS_ADDR = 0x45939657d1CA34A8FA39A924B71D28Fe8431e581;

    IOraclePool public oraclePool;
    address[] public rewardTokens;

    IERC20 public constant USDT0  = IERC20(USDT0_ADDR);
    IComet public constant COMET = IComet(COMET_ADDR);
    IERC20 public constant CUSDT0 = IERC20(COMET_ADDR);
    ICometRewards public constant REWARDS = ICometRewards(REWARDS_ADDR);
    mapping(address => address) public rewardsRedirection;
    mapping(address => uint256) public checkpoints;
    mapping(address => uint256) public savedPoints;
    uint256 public globalCheckpoint;
    uint256 public totalSavedPoints;

    event Minted(address indexed minter, uint256 amount);
    event Redeemed(address indexed redeemer, uint256 amount);
    event ForceRedeemed(address indexed redeemer, uint256 shares, uint256 amountOut);
    event RewardsClaimed(address indexed claimer, address indexed account, address indexed recipient, address token, uint256 rewards);
    event RewardsRedirectionSet(address indexed account, address indexed recipient);
    event OracleUpdated(address indexed previousOracleAddress, address indexed newOracleAddress);
    event RewardTokensUpdated(address[] newRewardTokens);

    error AmountZero();
    error SlippageTooLow();
    error InvalidOracle();
    error OracleUnchanged();
    error OracleUntrusted();
    error RewardTokensEmpty();
    error InvalidRewardToken(address token);

    constructor(address initialOraclePool, address[] memory initialRewardTokens) Ownable(msg.sender) ERC20("FireLabs USD", "FUSD") {
        USDT0.forceApprove(COMET_ADDR, type(uint256).max);
        _setOracle(initialOraclePool);
        _setRewardTokens(initialRewardTokens);
        globalCheckpoint = block.timestamp;
        totalSavedPoints = 100_000 * 1e6 * 365 days; // 100k x 1y buffer to smooth out contract deplation
    }

    // Compound
    function previewCompoundRewards() public returns (address token, uint256 amount) {
        ICometRewards.RewardOwed memory r = REWARDS.getRewardOwed(COMET_ADDR, address(this));
        return (r.token, r.owed);
    }

    function claimCompoundRewards(bool shouldAccrue) external nonReentrant returns (address token, uint256 amount) {
        (token, amount) = this.previewCompoundRewards();
        REWARDS.claimTo(COMET_ADDR, address(this), owner(), shouldAccrue);
    }

    // Read
    function totalPoints() public view returns (uint256) {
        return totalSavedPoints + (block.timestamp - globalCheckpoint) * totalSupply();
    }

    function points(address account) public view returns (uint256) {
        return savedPoints[account] + (block.timestamp - checkpoints[account]) * balanceOf(account);
    }

    function excessUSDT0() public view returns (uint256 excess) {
        excess = 0;
        uint256 cometBal = CUSDT0.balanceOf(address(this));
        uint256 debt = totalSupply();
        if (cometBal > debt) excess = cometBal - debt;
    }

    // Write
    function stakeUSDT0() external nonReentrant { _stakeUSDT0(); }

    function _stakeUSDT0() internal {
        uint256 bal = USDT0.balanceOf(address(this));
        if (bal > 0) COMET.supply(USDT0_ADDR, bal);
    }
    
    function mint(uint256 amount) external nonReentrant {
        if (amount == 0) revert AmountZero();
        _checkpoint(msg.sender);

        USDT0.safeTransferFrom(msg.sender, address(this), amount);
        _mint(msg.sender, amount);

        emit Minted(msg.sender, amount);
        _stakeUSDT0();
        _convert();
    }
    
    function redeem(uint256 amount) external nonReentrant {
        if (amount == 0) revert AmountZero();
        _checkpoint(msg.sender);

        uint256 supply = totalSupply();
        uint256 cometBal = CUSDT0.balanceOf(address(this));
        require(cometBal >= supply, "Comet Balance Shortfall");

        _burn(msg.sender, amount);
        COMET.withdraw(USDT0_ADDR, amount);
        USDT0.safeTransfer(msg.sender, amount);
        
        emit Redeemed(msg.sender, amount);
    }

    // In case of an issue with Comet, redeem as an ERC20 transfer
    function forceRedeem(uint256 shares, uint256 minAmountOut) external nonReentrant returns(uint256 payout) {
        if (shares == 0) revert AmountZero();
        _checkpoint(msg.sender);

        uint256 supply = totalSupply();
        uint256 cometBal = CUSDT0.balanceOf(address(this));

        payout = cometBal < supply ? (shares * cometBal) / supply : shares;
        if (payout < minAmountOut) revert SlippageTooLow();

        _burn(msg.sender, shares);
        if (payout != 0) {
            CUSDT0.safeTransfer(msg.sender, payout);
        }
        emit ForceRedeemed(msg.sender, shares, payout);
    }
    
    function claim(address account) external nonReentrant returns (uint256[] memory rewards) {
        _convert();
        _checkpoint(account);

        uint256 len = rewardTokens.length;
        rewards = new uint256[](len);

        uint256 accountPoints = savedPoints[account];
        if (accountPoints == 0) return rewards;

        uint256 totalPointsCached = totalSavedPoints;
        totalSavedPoints = totalPointsCached - accountPoints;
        savedPoints[account] = 0;

        address recipient = rewardsRedirection[account];
        if (recipient == address(0)) recipient = account;

        for (uint256 i = 0; i < len; ++i) {
            IERC20 token = IERC20(rewardTokens[i]);
            uint256 available = token.balanceOf(address(this));
            if (available == 0) continue;
            uint256 reward = (available * accountPoints) / totalPointsCached;
            if (reward == 0) continue;
            rewards[i] = reward;
            token.safeTransfer(recipient, reward);
            emit RewardsClaimed(msg.sender, account, recipient, rewardTokens[i], reward);
        }
    }
    
    function convert() public nonReentrant returns (uint256 excess, uint256 receivedToken) {
        (excess, receivedToken) = _convert();
    }
    
    function _convert() internal returns (uint256 excess, uint256 receivedToken) {
        excess = excessUSDT0();
        if (excess > 1e6 && oraclePool.trust()) {
            uint256 toConvert = excess - 1e3;
            COMET.withdraw(USDT0_ADDR, toConvert);
            receivedToken = oraclePool.swapExactUsdt0ForToken(toConvert, 0, block.timestamp + 1);
        }
    }

    function _checkpoint(address account) internal {
        totalSavedPoints = totalPoints();
        savedPoints[account] = points(account);
        globalCheckpoint = block.timestamp;
        checkpoints[account] = block.timestamp;
    }
    
    function _update(address from, address to, uint256 amount) internal override {
        if (from != address(0)) _checkpoint(from);
        if (to   != address(0)) _checkpoint(to);
        super._update(from, to, amount);
    }
    
    // Owner Functions
    // To redirect rewards from non compatible contracts like Liquidity Pools
    function redirectRewards(address account, address recipient) external onlyOwner {
        rewardsRedirection[account] = recipient; // recipient can be 0x0 to clear
        emit RewardsRedirectionSet(account, recipient);
    }

    function updateOracle(address newOracleAddress) external onlyOwner {
        _setOracle(newOracleAddress);
    }

    function setRewardTokens(address[] calldata newRewardTokens) external onlyOwner {
        _setRewardTokens(newRewardTokens);
    }

    function _setOracle(address newOracleAddress) internal {
        if (newOracleAddress == address(0) || newOracleAddress.code.length == 0) revert InvalidOracle();
        IOraclePool candidate = IOraclePool(newOracleAddress);
        if (!candidate.trust()) revert OracleUntrusted();

        address oldOracleAddress = address(oraclePool);
        if (oldOracleAddress == newOracleAddress) revert OracleUnchanged();
        if (oldOracleAddress != address(0)) USDT0.forceApprove(oldOracleAddress, 0);
        oraclePool = candidate;
        USDT0.forceApprove(newOracleAddress, type(uint256).max);
        emit OracleUpdated(oldOracleAddress, newOracleAddress);
    }

    function _setRewardTokens(address[] memory newRewardTokens) internal {
        uint256 len = newRewardTokens.length;
        if (len == 0) revert RewardTokensEmpty();

        delete rewardTokens;
        for (uint256 i = 0; i < len; ++i) {
            address token = newRewardTokens[i];
            if (token == address(0) || token == USDT0_ADDR || token == COMET_ADDR) revert InvalidRewardToken(token);
            rewardTokens.push(token);
        }

        emit RewardTokensUpdated(newRewardTokens);
    }
}