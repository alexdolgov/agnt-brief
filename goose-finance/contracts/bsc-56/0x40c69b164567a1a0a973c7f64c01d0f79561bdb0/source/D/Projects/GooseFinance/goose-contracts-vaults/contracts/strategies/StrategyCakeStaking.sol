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
import '../interfaces/IMasterChef.sol';
import '../interfaces/IFeeDistributor.sol';
import '../interfaces/IPancakeRouter02.sol';
import '../interfaces/IPancakePair.sol';

contract StrategyCakeStaking is Ownable, ReentrancyGuard, Pausable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    uint256 public lastEarnTimestamp = 0;
    uint256 public lastEarnBlock = 0;
    uint256 public wantLockedTotal = 0;
    uint256 public sharesTotal = 0;

    address public vaultChef;
    address constant public router = address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F);
    address constant public pancakeChef = address(0x73feaa1eE314F8c655E354234017bE2193C9E24E);

    address constant public cakeAddress = address(0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82);
    address constant public busdAddress = address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
    address constant public wbnbAddress = address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);

    address[] public busdToCakePath = [busdAddress, wbnbAddress, cakeAddress];
    address[] public cakeToBusdPath = [cakeAddress, wbnbAddress, busdAddress];

    uint256 public constant entranceFeeFactor = 9990; // < 0.1% entrance fee - goes to pool + prevents front-running
    uint256 public constant entranceFeeFactorMax = 10000;

    IFeeDistributor public feeDistributor;
    address public adminAddress;

    event Pause(address indexed user);
    event UnPause(address indexed user);

    constructor(
        address _vaultChef,
        address _adminAddress,
        address _feeDistributor
    ) public {
        vaultChef = _vaultChef;
        adminAddress = _adminAddress;
        feeDistributor = IFeeDistributor(_feeDistributor);
    }

    function deposit(address _userAddress, uint256 _wantAmt) public onlyOwner whenNotPaused returns (uint256){
        IERC20(cakeAddress).safeTransferFrom(address(msg.sender), address(this), _wantAmt);
        return _deposit(_userAddress, _wantAmt);
    }

    function depositBUSD(address _userAddress, uint256 busdAmount) public onlyOwner whenNotPaused returns (uint256){
        IERC20(busdAddress).safeTransferFrom(address(msg.sender), address(this), busdAmount);
        uint256 _wantAmt = RouterHelper.swapTokens(busdAmount, busdAddress, cakeAddress, busdToCakePath);
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
        uint256 wantAmt = IERC20(cakeAddress).balanceOf(address(this));
        if(wantAmt == 0) return;

        wantLockedTotal = wantLockedTotal.add(wantAmt);
        IERC20(cakeAddress).safeIncreaseAllowance(pancakeChef, wantAmt);
        IMasterChef(pancakeChef).enterStaking(wantAmt);
    }

    function withdraw(address _userAddress, uint256 _wantAmt) public onlyOwner nonReentrant returns (uint256){
        (uint256 sharesRemoved, uint256 withdrawnAmount) = _withdraw(_wantAmt);
        IERC20(cakeAddress).safeTransfer(vaultChef, withdrawnAmount);
        return sharesRemoved;
    }

    function withdrawBUSD(address _userAddress, uint256 shares) public onlyOwner nonReentrant returns (uint256, uint256){
        uint256 _wantAmt = shares.mul(wantLockedTotal).div(sharesTotal);
        (uint256 sharesRemoved, uint256 withdrawnAmount) = _withdraw(_wantAmt);

        uint256 busdGained = RouterHelper.swapTokens(withdrawnAmount, cakeAddress, busdAddress, cakeToBusdPath);

        IERC20(busdAddress).safeTransfer(vaultChef, busdGained);

        return (sharesRemoved, busdGained);
    }

    function _withdraw(uint256 _wantAmt) internal returns (uint256, uint256){
        require(_wantAmt > 0, "_wantAmt <= 0");

        IMasterChef(pancakeChef).leaveStaking(_wantAmt);

        uint256 wantAmt = IERC20(cakeAddress).balanceOf(address(this));
        if (_wantAmt > wantAmt) {
            _wantAmt = wantAmt;
        }

        if (wantLockedTotal < _wantAmt) {
            _wantAmt = wantLockedTotal;
        }

        uint256 sharesRemoved = _wantAmt.mul(sharesTotal).div(wantLockedTotal);
        if (sharesRemoved > sharesTotal) {
            sharesRemoved = sharesTotal;
        }
        sharesTotal = sharesTotal.sub(sharesRemoved);
        wantLockedTotal = wantLockedTotal.sub(_wantAmt);

        return (sharesRemoved, _wantAmt);
    }

    // 1. Harvest farm tokens
    // 2. Converts farm tokens into want tokens
    // 3. Deposits want tokens

    function earn() public whenNotPaused onlyOwner {
        IMasterChef(pancakeChef).enterStaking(0);

        //Fees
        uint256 earnedAmount = IERC20(cakeAddress).balanceOf(address(this));
        uint256 feeAmount = feeDistributor.calculateFees(earnedAmount);
        if(feeAmount > 0){
            IERC20(cakeAddress).safeIncreaseAllowance(address(feeDistributor), feeAmount);
            bool feeSuccess = feeDistributor.transferFees(cakeAddress, feeAmount);
            require(feeSuccess, "FEE DISTRIBUTION FAILED");
        }

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

    function unpause() external onlyAdmin{
        _unpause();
        emit UnPause(msg.sender);
    }

    function tvl() external view returns (uint256) {
        return wantTokenValue(1e18).mul(wantLockedTotal).div(1e18);
    }

    function wantTokenValue(uint256 wantAmount) public view returns (uint256) {
        return quoteValue(wantAmount, cakeToBusdPath);
    }

    function originTVL() public view returns (uint256) {
        return wantTokenValue(1e18).mul(originStakedTotal()).div(1e18);
    }

    function quoteValue(uint256 amountsIn, address[] memory tradePath) private view returns (uint256){
        if(amountsIn == 0) return 0;

        address factory = IPancakeRouter02(router).factory();
        uint[] memory amounts = PancakeLibrary.getAmountsOut(factory, amountsIn, tradePath);
        return amounts[amounts.length - 1];
    }

    function rewardTokenValue(uint256 rewardAmount) public view returns (uint256) {
        return wantTokenValue(rewardAmount);
    }

    function originRewardsPerBlock() public view returns (uint256){
        (,uint256 allocPoint,,) = IMasterChef(pancakeChef).poolInfo(0);
        uint256 totalAllocPoint = IMasterChef(pancakeChef).totalAllocPoint();
        uint256 rewardsPerBlock = IMasterChef(pancakeChef).cakePerBlock();

        return rewardsPerBlock.mul(allocPoint).div(totalAllocPoint);
    }

    //Precision = 1e4
    function originAPR(uint256 blocks) public view returns (uint256){
        uint256 valuePerBlock = rewardTokenValue(originRewardsPerBlock());
        return valuePerBlock.mul(blocks).mul(1e4).div(originTVL());
    }

    function originStakedTotal() public view returns (uint256){
        return IERC20(cakeAddress).balanceOf(pancakeChef);
    }
}
