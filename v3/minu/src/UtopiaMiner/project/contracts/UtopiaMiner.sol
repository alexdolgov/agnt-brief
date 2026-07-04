// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IUtopiaMiner} from "./interfaces/IUtopiaMiner.sol";

contract UtopiaMiner is IUtopiaMiner, Ownable, ReentrancyGuard {
    uint256 private constant BONES_TO_HATCH_1MINERS = 86_400;
    uint256 private constant PSN = 10_000;
    uint256 private constant PSNH = 5_000;

    uint256 private constant DAILY_REWARD_RATE = 800;
    uint256 private constant AFFILIATE_REWARD_RATE = 800;
    uint256 private constant DEVELOPMENT_FEE = 400;
    uint256 private constant FEE_DIVISOR = 10_000;

    bool private initialized;
    uint256 private marketBones;

    address public developmentAddress;
    address public token;
    uint256 private minimumTokenBalance;

    TradingState public tradingState;

    mapping(address => uint256) private hatcheryMiners;
    mapping(address => uint256) private claimedBones;
    mapping(address => uint256) private lastHatch;
    mapping(address => address) private referrals;

    modifier whenTradingAllowed() {
        if (
            _msgSender() != owner() &&
            (!isTradingOpen() ||
                IERC20(token).balanceOf(_msgSender()) < minimumTokenBalance)
        ) {
            revert TradingNotAllowed();
        }
        _;
    }

    modifier onlyInitialized() {
        if (!initialized) {
            revert NotInitialized();
        }
        _;
    }

    constructor(
        address ownerAddress,
        address tokenAddress,
        uint256 minTokenBalance
    ) Ownable(ownerAddress) {
        if (ownerAddress == address(0) || tokenAddress == address(0)) {
            revert ZeroAddress();
        }

        initialized = false;
        marketBones = 0;
        developmentAddress = ownerAddress;
        token = tokenAddress;
        tradingState = TradingState.CLOSED;
        minimumTokenBalance = minTokenBalance;
    }

    receive() external payable {}

    function initialize() external payable onlyOwner {
        require(!initialized, "Market already initialized");
        require(msg.value > 0, "Initial funding required");

        initialized = true;
        marketBones = BONES_TO_HATCH_1MINERS * 100_000;
        tradingState = TradingState.OPEN;

        emit Initialized();
    }

    function beanRewards(address adr) external view returns (uint256) {
        uint256 bones = getMyBones(adr);
        uint256 boneValue = calculateBoneSell(bones);
        return boneValue;
    }

    function calculateBoneSell(uint256 bones) public view returns (uint256) {
        return calculateTrade(bones, marketBones, address(this).balance);
    }

    function calculateBoneBuy(
        uint256 eth,
        uint256 contractBalance
    ) public view returns (uint256) {
        return calculateTrade(eth, contractBalance, marketBones);
    }

    function calculateBoneBuySimple(
        uint256 eth
    ) external view returns (uint256) {
        return calculateBoneBuy(eth, address(this).balance);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }

    function getMyExplorers(address adr) external view returns (uint256) {
        return hatcheryMiners[adr];
    }

    function getMyBones(address adr) public view returns (uint256) {
        return claimedBones[adr] + getBonesSinceLastHatch(adr);
    }

    function getBonesSinceLastHatch(address adr) public view returns (uint256) {
        uint256 secondsPassed = min(
            BONES_TO_HATCH_1MINERS,
            block.timestamp - lastHatch[adr]
        );
        return secondsPassed * hatcheryMiners[adr];
    }

    function getDailyBoneRewards(address adr) external view returns (uint256) {
        return BONES_TO_HATCH_1MINERS * hatcheryMiners[adr];
    }

    function compoundExplorers(
        address ref
    ) external nonReentrant onlyInitialized whenTradingAllowed {
        _compoundExplorers(ref);
    }

    function hireExplorers(
        address ref
    ) external payable nonReentrant onlyInitialized whenTradingAllowed {
        address sender = _msgSender();
        uint256 amount = msg.value;
        if (amount == 0) {
            revert InsufficientAmount(amount, 1);
        }

        uint256 contractBalance = address(this).balance;
        if (contractBalance < amount) {
            revert InsufficientBalance(contractBalance, amount);
        }

        uint256 bonesBought = calculateBoneBuy(
            amount,
            contractBalance - amount
        );
        bonesBought -= calculateDevelopmentFee(bonesBought);
        claimedBones[sender] += bonesBought;

        _compoundExplorers(ref);

        uint256 fee = calculateDevelopmentFee(amount);
        payable(developmentAddress).transfer(fee);

        emit Hire(sender, amount - fee, bonesBought);
    }

    function collectRewards()
        external
        nonReentrant
        onlyInitialized
        whenTradingAllowed
    {
        address sender = _msgSender();

        uint256 bones = getMyBones(sender);
        uint256 boneValue = calculateBoneSell(bones);
        uint256 fee = calculateDevelopmentFee(boneValue);
        uint256 amountToTransfer = boneValue - fee;

        claimedBones[sender] = 0;
        lastHatch[sender] = block.timestamp;
        marketBones += bones;

        payable(developmentAddress).transfer(fee);
        payable(sender).transfer(amountToTransfer);

        emit Collect(sender, bones, amountToTransfer);
    }

    function setTradingState(TradingState newTradingState) external onlyOwner {
        require(
            !initialized,
            "Cannot change trading state after initialization"
        );

        tradingState = newTradingState;
        emit TradingStateUpdated(newTradingState);
    }

    function setToken(address newToken) external onlyOwner {
        if (newToken == address(0)) {
            revert ZeroAddress();
        }

        token = newToken;
        emit TokenUpdated(newToken);
    }

    function setMinimumTokenBalance(
        uint256 newMinimumTokenBalance
    ) external onlyOwner {
        minimumTokenBalance = newMinimumTokenBalance;
        emit MinimumTokenBalanceUpdated(newMinimumTokenBalance);
    }

    function _compoundExplorers(address ref) private {
        address sender = _msgSender();

        if (ref != sender && referrals[sender] == address(0)) {
            referrals[sender] = ref;
        }

        uint256 bonesUsed = getMyBones(sender);
        uint256 newMiners = (bonesUsed * DAILY_REWARD_RATE) /
            (BONES_TO_HATCH_1MINERS * FEE_DIVISOR);
        hatcheryMiners[sender] += newMiners;
        claimedBones[sender] = 0;
        lastHatch[sender] = block.timestamp;

        // send referral bones
        uint256 affiliateRewardAmount = (bonesUsed * AFFILIATE_REWARD_RATE) /
            FEE_DIVISOR;
        claimedBones[referrals[sender]] += affiliateRewardAmount;

        // boost market to nerf miners hoarding
        marketBones += bonesUsed / 5;

        emit Compound(sender, newMiners);
    }

    function calculateTrade(
        uint256 rt,
        uint256 rs,
        uint256 bs
    ) private pure returns (uint256) {
        if (rt == 0) {
            return 0;
        }

        return (PSN * bs) / (PSNH + (((PSN * rs) + (PSNH * rt)) / rt));
    }

    function calculateDevelopmentFee(
        uint256 amount
    ) private pure returns (uint256) {
        return (amount * DEVELOPMENT_FEE) / FEE_DIVISOR;
    }

    function isTradingOpen() private view returns (bool) {
        return tradingState == TradingState.OPEN;
    }

    function min(uint256 a, uint256 b) private pure returns (uint256) {
        return a < b ? a : b;
    }
}
