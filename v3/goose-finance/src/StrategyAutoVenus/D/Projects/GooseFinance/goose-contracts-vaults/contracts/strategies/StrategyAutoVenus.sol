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
import '../interfaces/IAutoChef.sol';
import '../interfaces/IFeeDistributor.sol';
import '../interfaces/IPancakeRouter02.sol';
import '../interfaces/IAutoStrategy.sol';

contract StrategyAutoVenus is Ownable, ReentrancyGuard, Pausable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    uint256 public lastEarnTimestamp = 0;
    uint256 public lastEarnBlock = 0;
    uint256 public wantLockedTotal = 0;
    uint256 public sharesTotal = 0;

    address public vaultChef;
    address constant public router = address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F);
    address constant public autoChef = address(0x0895196562C7868C5Be92459FaE7f877ED450452);
    uint256 immutable public pid; // pid of pool
    address immutable public wantAddress;
    address constant public earnedAddress = address(0xa184088a740c695E156F91f5cC086a06bb78b827);
    address constant public busdAddress = address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
    address constant public wbnbAddress = address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);

    //Router Paths
    address[] public earnedToWantPath;
    address[] public busdToWantPath;
    address[] public wantToBusdPath;

    address[] public earnedToBusdPath = [earnedAddress, wbnbAddress, busdAddress];

    IFeeDistributor public feeDistributor;
    address public adminAddress;

    event UpdateFeeDistributor(address indexed user, address indexed distributor);
    event Pause(address indexed user);
    event UnPause(address indexed user);

    constructor(
        address _wantAddress,
        uint256 _pid,
        address _vaultChef,
        address _feeDistributor,
        address _adminAddress,
        address[] memory _earnedToWantPath,
        address[] memory _busdToWantPath
    ) public {
        wantAddress = _wantAddress;
        pid = _pid;
        vaultChef = _vaultChef;
        feeDistributor = IFeeDistributor(_feeDistributor);
        adminAddress = _adminAddress;

        if (_wantAddress != earnedAddress) {
            validatePath(_earnedToWantPath, earnedAddress, _wantAddress);
        }
        if (_wantAddress != busdAddress) {
            validatePath(_busdToWantPath, busdAddress, _wantAddress);
        }

        setRouterPath(earnedToWantPath, _earnedToWantPath, false);

        setRouterPath(busdToWantPath, _busdToWantPath, false);
        setRouterPath(wantToBusdPath, _busdToWantPath, true);
    }

    function validatePath(address[] memory path, address from, address to) private pure {
        address head = path[0];
        address tail = path[path.length - 1];
        require(head == from, "INVALID PATH HEAD");
        require(tail == to, "INVALID PATH TAIL");
    }

    function setRouterPath(address[] storage path, address[] memory _path, bool inverse) private {
        uint256 length = _path.length;
        require(path.length == 0, "ALREADY EXIST");
        if (inverse) {
            for (uint256 i = 0; i < length; i++) {
                path.push(_path[length - 1 - i]);
            }
        } else {
            for (uint256 i = 0; i < length; i++) {
                path.push(_path[i]);
            }
        }
    }

    function deposit(address _userAddress, uint256 _wantAmt) public onlyOwner whenNotPaused returns (uint256){
        IERC20(wantAddress).safeTransferFrom(address(msg.sender), address(this), _wantAmt);
        return _deposit(_userAddress, _wantAmt);
    }

    function depositBUSD(address _userAddress, uint256 busdAmount) public onlyOwner whenNotPaused returns (uint256){
        IERC20(busdAddress).safeTransferFrom(address(msg.sender), address(this), busdAmount);
        uint256 _wantAmt = RouterHelper.swapTokens(busdAmount, busdAddress, wantAddress, busdToWantPath);
        return _deposit(_userAddress, _wantAmt);
    }

    function _deposit(address _userAddress, uint256 _wantAmt) internal returns (uint256){
        uint256 wantLockedTotalBefore = wantLockedTotal;
        uint256 stakedAmount = _farm();
        uint256 sharesAdded = stakedAmount;
        if (wantLockedTotalBefore > 0) {
            sharesAdded = stakedAmount
            .mul(sharesTotal)
            .div(wantLockedTotalBefore);
        }
        sharesTotal = sharesTotal.add(sharesAdded);

        return sharesAdded;
    }

    function farm() public nonReentrant {
        _farm();
    }

    function _farm() internal returns (uint256) {
        uint256 stakedInAutoBefore = IAutoChef(autoChef).stakedWantTokens(pid, address(this));
        uint256 wantAmt = IERC20(wantAddress).balanceOf(address(this));
        IERC20(wantAddress).safeIncreaseAllowance(autoChef, wantAmt);
        IAutoChef(autoChef).deposit(pid, wantAmt);
        uint256 stakedInAutoAfter = IAutoChef(autoChef).stakedWantTokens(pid, address(this));
        uint256 stakedAmount = stakedInAutoAfter.sub(stakedInAutoBefore); //Handling for AUTOFarm Entrance Fees
        wantLockedTotal = wantLockedTotal.add(stakedAmount);
        return stakedAmount;
    }

    function withdraw(address _userAddress, uint256 _wantAmt) public onlyOwner nonReentrant returns (uint256){
        (uint256 sharesRemoved, uint256 withdrawnAmount) = _withdraw(_wantAmt);
        IERC20(wantAddress).safeTransfer(vaultChef, withdrawnAmount);
        return sharesRemoved;
    }

    function withdrawBUSD(address _userAddress, uint256 shares) public onlyOwner nonReentrant returns (uint256, uint256){
        uint256 _wantAmt = shares.mul(wantLockedTotal).div(sharesTotal);
        (uint256 sharesRemoved, uint256 withdrawnAmount) = _withdraw(_wantAmt);
        uint256 busdGained = RouterHelper.swapTokens(withdrawnAmount, wantAddress, busdAddress, wantToBusdPath);
        IERC20(busdAddress).safeTransfer(vaultChef, busdGained);
        return (sharesRemoved, busdGained);
    }

    function _withdraw(uint256 _wantAmt) internal returns (uint256, uint256){
        require(_wantAmt > 0, "_wantAmt <= 0");

        IAutoChef(autoChef).withdraw(pid, _wantAmt);

        uint256 wantAmt = IERC20(wantAddress).balanceOf(address(this));
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

    function earn() public whenNotPaused {
        IAutoChef(autoChef).deposit(pid, 0);

        //Fees
        uint256 earnedAmount = IERC20(earnedAddress).balanceOf(address(this));
        uint256 feeAmount = feeDistributor.calculateFees(earnedAmount);
        if (feeAmount > 0) {
            IERC20(earnedAddress).safeIncreaseAllowance(address(feeDistributor), feeAmount);
            bool feeSuccess = feeDistributor.transferFees(earnedAddress, feeAmount);
            require(feeSuccess, "FEE DISTRIBUTION FAILED");
        }

        // Converts reward tokens into want tokens
        convertEarnedToWant();

        lastEarnBlock = block.number;
        lastEarnTimestamp = block.timestamp;

        _farm();
    }

    function convertEarnedToWant() internal {
        uint256 earnedAmount = IERC20(earnedAddress).balanceOf(address(this));
        RouterHelper.swapTokens(earnedAmount, earnedAddress, wantAddress, earnedToWantPath);
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

    function updateFeeDistributor(address _feeDistributor) external onlyAdmin {
        feeDistributor = IFeeDistributor(_feeDistributor);
        emit UpdateFeeDistributor(msg.sender, _feeDistributor);
    }

    function tvl() external view returns (uint256) {
        return wantTokenValue(wantLockedTotal);
    }

    function wantTokenValue(uint256 wantAmount) public view returns (uint256) {
        return quoteValue(wantAmount, wantToBusdPath);
    }

    function originTVL() public view returns (uint256) {
        return wantTokenValue(originStakedTotal());
    }

    function quoteValue(uint256 amountsIn, address[] memory tradePath) private view returns (uint256){
        if (amountsIn == 0) return 0;

        address factory = IPancakeRouter02(router).factory();
        uint[] memory amounts = PancakeLibrary.getAmountsOut(factory, amountsIn, tradePath);
        return amounts[amounts.length - 1];
    }

    function rewardTokenValue(uint256 rewardAmount) public view returns (uint256) {
        return quoteValue(rewardAmount, earnedToBusdPath);
    }

    function originRewardsPerBlock() public view returns (uint256){
        (,uint256 allocPoint,,,) = IAutoChef(autoChef).poolInfo(pid);
        uint256 totalAllocPoint = IAutoChef(autoChef).totalAllocPoint();
        uint256 rewardsPerBlock = IAutoChef(autoChef).AUTOPerBlock();

        return rewardsPerBlock.mul(allocPoint).div(totalAllocPoint);
    }

    //This does not include the Venus APY
    function originAPR(uint256 blocks) public view returns (uint256){
        uint256 rewards = blocks.mul(originRewardsPerBlock());
        uint256 value = rewardTokenValue(rewards);
        return value.mul(1e18).div(originTVL());
    }

    function originStakedTotal() public view returns (uint256){
        (,,,, address autoStrat) = IAutoChef(autoChef).poolInfo(pid);
        return IAutoStrategy(autoStrat).wantLockedTotal();
    }
}
