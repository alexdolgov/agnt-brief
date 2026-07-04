// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import '@openzeppelin/contracts/math/Math.sol';
import '@openzeppelin/contracts/math/SafeMath.sol';
import '@openzeppelin/contracts/utils/Pausable.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/utils/ReentrancyGuard.sol';
import '@openzeppelin/contracts/utils/Address.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/SafeERC20.sol';

import '../libs/RouterHelper.sol';
import '../libs/PancakeLibrary.sol';
import '../interfaces/IGooseMasterChef.sol';
import '../interfaces/IPancakeRouter02.sol';

interface IWrapper {
    function deposit(uint256 amount) external returns (bool);

    function withdraw(uint256 amount) external returns (bool);
}

contract StrategyGooseEgg is Ownable, ReentrancyGuard, Pausable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    uint256 public lastEarnTimestamp = 0;
    uint256 public lastEarnBlock = 0;
    uint256 public wantLockedTotal = 0;
    uint256 public sharesTotal = 0;

    address public vaultChef;
    address constant public router = address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F);
    address constant public gooseChef = address(0xe70E9185F5ea7Ba3C5d63705784D8563017f2E57);
    uint256 immutable public pid; // pid of pancake pool

    address constant public wrappedEggAddress = address(0xB8157e2506238b06f2d1f3030593f3d620B90a16);
    address constant public eggAddress = address(0xF952Fc3ca7325Cc27D15885d37117676d25BfdA6);
    address constant public busdAddress = address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);

    address[] public busdToEggPath = [busdAddress, eggAddress];
    address[] public eggToBusdPath = [eggAddress, busdAddress];

    uint256 public constant entranceFeeFactor = 9990; // < 0.1% entrance fee - goes to pool + prevents front-running
    uint256 public constant entranceFeeFactorMax = 10000;

    address public adminAddress;

    event Pause(address indexed user);
    event UnPause(address indexed user);

    constructor(
        uint256 _pid,
        address _vaultChef,
        address _adminAddress
    ) public {
        pid = _pid;
        vaultChef = _vaultChef;
        adminAddress = _adminAddress;
    }

    function deposit(address _userAddress, uint256 _wantAmt) public onlyOwner whenNotPaused returns (uint256){
        IERC20(eggAddress).safeTransferFrom(address(msg.sender), address(this), _wantAmt);
        return _deposit(_userAddress, _wantAmt);
    }

    function depositBUSD(address _userAddress, uint256 busdAmount) public onlyOwner whenNotPaused returns (uint256){
        IERC20(busdAddress).safeTransferFrom(address(msg.sender), address(this), busdAmount);
        uint256 _wantAmt = RouterHelper.swapTokens(busdAmount, busdAddress, eggAddress, busdToEggPath);
        return _deposit(_userAddress, _wantAmt);
    }

    function _deposit(address _userAddress, uint256 _wantAmt) internal returns (uint256){
        uint256 sharesAdded = _wantAmt;
        if (wantLockedTotal > 0) {
            sharesAdded = _wantAmt
            .mul(sharesTotal)
            .mul(entranceFeeFactor)
            .div(wantLockedTotal)
            .div(entranceFeeFactorMax);
        }
        sharesTotal = sharesTotal.add(sharesAdded);

        _farm();

        return sharesAdded;
    }

    function farm() public nonReentrant {
        _farm();
    }

    function _farm() internal {
        uint256 wantAmt = IERC20(eggAddress).balanceOf(address(this));
        if (wantAmt == 0) return;

        wrapEgg(wantAmt);
        wantLockedTotal = wantLockedTotal.add(wantAmt);
        IERC20(wrappedEggAddress).safeIncreaseAllowance(gooseChef, wantAmt);
        IGooseMasterChef(gooseChef).deposit(pid, wantAmt);
    }

    function wrapEgg(uint256 amount) private {
        IERC20(eggAddress).safeIncreaseAllowance(wrappedEggAddress, amount);
        bool wrapSuccess = IWrapper(wrappedEggAddress).deposit(amount);
        require(wrapSuccess, "WRAP FAILED");
    }

    function unwrapEgg(uint256 amount) private {
        bool unwrapSuccess = IWrapper(wrappedEggAddress).withdraw(amount);
        require(unwrapSuccess, "UNWRAP FAILED");
    }

    function withdraw(address _userAddress, uint256 _wantAmt) public onlyOwner nonReentrant returns (uint256){
        (uint256 sharesRemoved, uint256 withdrawnAmount) = _withdraw(_wantAmt);
        IERC20(eggAddress).safeTransfer(vaultChef, withdrawnAmount);
        return sharesRemoved;
    }

    function withdrawBUSD(address _userAddress, uint256 shares) public onlyOwner nonReentrant returns (uint256, uint256){
        uint256 _wantAmt = shares.mul(wantLockedTotal).div(sharesTotal);
        (uint256 sharesRemoved, uint256 withdrawnAmount) = _withdraw(_wantAmt);

        uint256 busdGained = RouterHelper.swapTokens(withdrawnAmount, eggAddress, busdAddress, eggToBusdPath);

        IERC20(busdAddress).safeTransfer(vaultChef, busdGained);

        return (sharesRemoved, busdGained);
    }

    function _withdraw(uint256 _wantAmt) internal returns (uint256, uint256){
        require(_wantAmt > 0, "_wantAmt <= 0");

        IGooseMasterChef(gooseChef).withdraw(pid, _wantAmt);

        uint256 wantAmt = IERC20(wrappedEggAddress).balanceOf(address(this));
        if (_wantAmt > wantAmt) {
            _wantAmt = wantAmt;
        }

        if (wantLockedTotal < _wantAmt) {
            _wantAmt = wantLockedTotal;
        }

        unwrapEgg(_wantAmt);

        uint256 sharesRemoved = _wantAmt.mul(sharesTotal).div(wantLockedTotal);
        if (sharesRemoved > sharesTotal) {
            sharesRemoved = sharesTotal;
        }
        sharesTotal = sharesTotal.sub(sharesRemoved);
        wantLockedTotal = wantLockedTotal.sub(_wantAmt);

        return (sharesRemoved, _wantAmt);
    }

    // 1. Harvest farm tokens
    // 2. Deposits want tokens
    function earn() public whenNotPaused onlyOwner {
        IGooseMasterChef(gooseChef).deposit(pid, 0);
        lastEarnBlock = block.number;
        lastEarnTimestamp = block.timestamp;
        _farm();
    }

    modifier onlyAdmin() {
        require(msg.sender == adminAddress, "UNAUTHORIZED");
        _;
    }

    function pause() external onlyAdmin {
        _pause();
        emit Pause(msg.sender);
    }

    function unpause() external onlyAdmin {
        _unpause();
        emit UnPause(msg.sender);
    }

    function tvl() external view returns (uint256) {
        return wantTokenValue(1e18).mul(wantLockedTotal).div(1e18);
    }

    function wantTokenValue(uint256 wantAmount) public view returns (uint256) {
        return quoteValue(wantAmount, eggToBusdPath);
    }

    function originTVL() public view returns (uint256) {
        return wantTokenValue(1e18).mul(originStakedTotal()).div(1e18);
    }

    function quoteValue(uint256 amountsIn, address[] memory tradePath) private view returns (uint256){
        if (amountsIn == 0) return 0;

        address factory = IPancakeRouter02(router).factory();
        uint[] memory amounts = PancakeLibrary.getAmountsOut(factory, amountsIn, tradePath);
        return amounts[amounts.length - 1];
    }

    function rewardTokenValue(uint256 rewardAmount) public view returns (uint256) {
        return wantTokenValue(rewardAmount);
    }

    function originRewardsPerBlock() public view returns (uint256){
        (,uint256 allocPoint,,,) = IGooseMasterChef(gooseChef).poolInfo(0);
        uint256 totalAllocPoint = IGooseMasterChef(gooseChef).totalAllocPoint();
        uint256 rewardsPerBlock = IGooseMasterChef(gooseChef).eggPerBlock();

        return rewardsPerBlock.mul(allocPoint).div(totalAllocPoint);
    }

    //Precision = 1e4
    function originAPR(uint256 blocks) public view returns (uint256){
        uint256 valuePerBlock = rewardTokenValue(originRewardsPerBlock());
        return valuePerBlock.mul(blocks).mul(1e4).div(originTVL());
    }

    function originStakedTotal() public view returns (uint256){
        return IERC20(wrappedEggAddress).balanceOf(gooseChef);
    }
}
