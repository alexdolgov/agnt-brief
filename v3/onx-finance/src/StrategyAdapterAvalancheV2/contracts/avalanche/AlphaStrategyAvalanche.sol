pragma solidity 0.7.3;

import "@openzeppelin/contracts/math/Math.sol";
import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "../interface/SushiBar.sol";
import "./IMasterChef.sol";
import "../interface/IVault.sol";
import "hardhat/console.sol";

contract AlphaStrategyAvalanche is OwnableUpgradeable {

    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address public treasury;
    address public rewardManager;
    address public multisigWallet;

    mapping(address => uint256) public userXJoeDebt;

    uint256 public accXJoePerShare;
    uint256 public lastPendingXJoe;
    uint256 public curPendingXJoe;

    uint256 keepFee;
    uint256 keepFeeMax;

    uint256 keepReward;
    uint256 keepRewardMax;

    address public vault;
    address public underlying;
    address public masterChef;

    address public joe;
    address public xJoe;

    uint256 public poolIdSecond;

    bool public sell;
    uint256 public sellFloor;

    uint256 public poolId;

    constructor() public {
    }

    function initializeAlphaStrategy(
        address _multisigWallet,
        address _rewardManager,
        address _underlying,
        address _vault,
    
        address _masterChef,
        uint256 _poolId,
    
        uint _poolIdSecond
    ) public initializer {
        underlying = _underlying;
        vault = _vault;
        sell = true;

        masterChef = _masterChef;
        poolId = _poolId;

        poolIdSecond = _poolIdSecond;

        rewardManager = _rewardManager;

        __Ownable_init();

        address _lpt;
        (_lpt,,,,) = IMasterChef(_masterChef).poolInfo(poolId);
        require(_lpt == underlying, "Pool Info does not match underlying");

        joe = address(0x6e84a6216eA6dACC71eE8E6b0a5B7322EEbC0fDd);
        xJoe = address(0x57319d41F71E81F3c65F2a47CA4e001EbAFd4F33);

        treasury = address(0x3791eD906660767e7D36885bCFef028e0E0403d3);

        keepFee = 10;
        keepFeeMax = 100;

        keepReward = 15;
        keepRewardMax = 100;

        multisigWallet = _multisigWallet;
    }

    // keep fee functions
    function setKeepFee(uint256 _fee, uint256 _feeMax) external onlyMultisigOrOwner {
        require(_feeMax > 0, "Treasury feeMax should be bigger than zero");
        require(_fee < _feeMax, "Treasury fee can't be bigger than feeMax");
        keepFee = _fee;
        keepFeeMax = _feeMax;
    }

    // keep reward functions
    function setKeepReward(uint256 _fee, uint256 _feeMax) external onlyMultisigOrOwner {
        require(_feeMax > 0, "Reward feeMax should be bigger than zero");
        require(_fee < _feeMax, "Reward fee can't be bigger than feeMax");
        keepReward = _fee;
        keepRewardMax = _feeMax;
    }

    // Salvage functions
    function unsalvagableTokens(address token) public view returns (bool) {
        return (token == joe || token == underlying);
    }

    /**
    * Salvages a token.
    */
    function salvage(address recipient, address token, uint256 amount) public onlyMultisigOrOwner {
        // To make sure that governance cannot come in and take away the coins
        require(!unsalvagableTokens(token), "token is defined as not salvagable");
        IERC20(token).safeTransfer(recipient, amount);
    }


    modifier onlyVault() {
        require(msg.sender == vault, "Not a vault");
        _;
    }

    modifier onlyMultisig() {
        require(msg.sender == multisigWallet , "The sender has to be the multisig wallet");
        _;
    }

    modifier onlyMultisigOrOwner() {
        require(msg.sender == multisigWallet || msg.sender == owner() , "The sender has to be the multisig wallet or owner");
        _;
    }

    function setMultisig(address _wallet) public onlyMultisig {
        multisigWallet = _wallet;
    }

    function updateAccPerShare(address user) public onlyVault {
        updateAccXJoePerShare(user);
    }

    function updateAccXJoePerShare(address user) internal {
        curPendingXJoe = pendingXJoe();

        if (lastPendingXJoe > 0 && curPendingXJoe < lastPendingXJoe) {
            curPendingXJoe = 0;
            lastPendingXJoe = 0;
            accXJoePerShare = 0;
            userXJoeDebt[user] = 0;
            return;
        }

        uint256 totalSupply = IERC20(vault).totalSupply();

        if (totalSupply == 0) {
            accXJoePerShare = 0;
            return;
        }

        uint256 addedReward = curPendingXJoe.sub(lastPendingXJoe);
        accXJoePerShare = accXJoePerShare.add(
            (addedReward.mul(1e36)).div(totalSupply)
        );
    }

    function updateUserRewardDebts(address user) public onlyVault {
        userXJoeDebt[user] = IERC20(vault).balanceOf(user)
            .mul(accXJoePerShare)
            .div(1e36);
    }

    function pendingXJoe() public view returns (uint256) {
        uint256 xJoeBalance = IERC20(xJoe).balanceOf(address(this));
        return masterChefBalance(poolIdSecond).add(xJoeBalance);
    }

    function pendingRewardOfUser(address user) external view returns (uint256) {
        return (pendingXJoeOfUser(user));
    }

    function pendingXJoeOfUser(address user) public view returns (uint256) {
        uint256 totalSupply = IERC20(vault).totalSupply();
        uint256 userBalance = IERC20(vault).balanceOf(user);
        if (totalSupply == 0) return 0;

        // pending xJoe
        uint256 allPendingXJoe = pendingXJoe();

        if (allPendingXJoe < lastPendingXJoe) return 0;

        uint256 addedReward = allPendingXJoe.sub(lastPendingXJoe);

        uint256 newAccXJoePerShare = accXJoePerShare.add(
            (addedReward.mul(1e36)).div(totalSupply)
        );

        uint256 _pendingXJoe = userBalance.mul(newAccXJoePerShare).div(1e36).sub(
            userXJoeDebt[user]
        );

        return _pendingXJoe;
    }

    function getPendingShare(address user, uint256 perShare, uint256 debt) internal returns (uint256) {
        uint256 current = IERC20(vault).balanceOf(user)
            .mul(perShare)
            .div(1e36);

        if(current < debt){
            return 0;
        }

        return current
            .sub(debt);
    }

    function withdrawReward(address user) public onlyVault {
        // withdraw pending xJoe
        uint256 _pendingXJoe = getPendingShare(user, accXJoePerShare, userXJoeDebt[user]);

        uint256 _xJoeBalance = IERC20(xJoe).balanceOf(address(this));

        if(_xJoeBalance < _pendingXJoe){
            uint256 needToWithdraw = _pendingXJoe.sub(_xJoeBalance);
            uint256 toWithdraw = Math.min(masterChefBalance(poolIdSecond), needToWithdraw);

            IMasterChef(masterChef).withdraw(poolIdSecond, toWithdraw);

            _xJoeBalance = IERC20(xJoe).balanceOf(address(this));
        }

        if (_xJoeBalance < _pendingXJoe) {
            _pendingXJoe = _xJoeBalance;
        }

        if(_pendingXJoe > 0 && curPendingXJoe > _pendingXJoe){
            // send reward to user
            IERC20(xJoe).safeTransfer(user, _pendingXJoe);
            lastPendingXJoe = curPendingXJoe.sub(_pendingXJoe);
        }
    }

    function deposit(uint256 pid, uint256 bal) internal {
        IMasterChef(masterChef).deposit(pid, bal);
    }
    
    function withdrawAllToVault() public onlyVault {
        if (address(masterChef) != address(0)) {
            exitJoeRewardPool();
        }
        IERC20(underlying).safeTransfer(vault, IERC20(underlying).balanceOf(address(this)));
    }

    function withdrawToVault(uint256 amount) public onlyVault {
        uint256 entireBalance = IERC20(underlying).balanceOf(address(this));

        if(amount > entireBalance){
            uint256 needToWithdraw = amount.sub(entireBalance);
            uint256 toWithdraw = Math.min(masterChefBalance(poolId), needToWithdraw);
            IMasterChef(masterChef).withdraw(poolId, toWithdraw);
        }

        IERC20(underlying).safeTransfer(vault, amount);
    }

    function investedUnderlyingBalance() external view returns (uint256) {
        if (masterChef == address(0)) {
            return IERC20(underlying).balanceOf(address(this));
        }
        return masterChefBalance(poolId).add(IERC20(underlying).balanceOf(address(this)));
    }

    function masterChefBalance(uint256 pid) internal view returns (uint256 amount) {
        (amount,) = IMasterChef(masterChef).userInfo(pid, address(this));
    }

    function exitJoeRewardPool() internal {
        uint256 bal = masterChefBalance(poolId);
        if (bal != 0) {
            IMasterChef(masterChef).withdraw(poolId, bal);
        }
    }

    function claimJoeRewardPool() internal {
        uint256 balance = masterChefBalance(poolIdSecond);

        if (balance != 0) {
            deposit(poolIdSecond, 0);
        }
    }

    function enterJoeRewardPool() internal {
        uint256 entireBalance = IERC20(underlying).balanceOf(address(this));

        IERC20(underlying).safeApprove(masterChef, 0);
        IERC20(underlying).safeApprove(masterChef, entireBalance);

        deposit(poolId, entireBalance);
    }

    function enterXJoeRewardPool() internal {
        uint256 entireBalance = IERC20(xJoe).balanceOf(address(this));

        IERC20(xJoe).safeApprove(masterChef, 0);
        IERC20(xJoe).safeApprove(masterChef, entireBalance);

        deposit(poolIdSecond, entireBalance);
    }
    
    function stakeJoeFarm() external {
        enterJoeRewardPool();
    }

    function stakeXJoe() external {
        claimJoeRewardPool();

        uint256 joeRewardBalance = IERC20(joe).balanceOf(address(this));
        if (!sell || joeRewardBalance < sellFloor) {
            // Profits can be disabled for possible simplified and rapid exit
            // emit ProfitsNotCollected(sell, JoeRewardBalance < sellFloor);
            return;
        }

        if (joeRewardBalance == 0) {
            return;
        }

        IERC20(joe).safeApprove(xJoe, 0);
        IERC20(joe).safeApprove(xJoe, joeRewardBalance);

        uint256 balanceBefore = IERC20(xJoe).balanceOf(address(this));

        SushiBar(xJoe).enter(joeRewardBalance);

        uint256 balanceAfter = IERC20(xJoe).balanceOf(address(this));
        uint256 added = balanceAfter.sub(balanceBefore);

        if (added > 0) {
            uint256 fee = added.mul(keepFee).div(keepFeeMax);
            IERC20(xJoe).safeTransfer(treasury, fee);

            uint256 feeReward = added.mul(keepReward).div(keepRewardMax);
            IERC20(xJoe).safeTransfer(rewardManager, feeReward);
        }
    }

    function stakeExternalRewards() external {
        enterXJoeRewardPool();
    }

    function setOnxTreasuryFundAddress(address _address) public onlyMultisigOrOwner {
        treasury = _address;
    }

    function setRewardManagerAddress(address _address) public onlyMultisigOrOwner {
        rewardManager = _address;
    }
}