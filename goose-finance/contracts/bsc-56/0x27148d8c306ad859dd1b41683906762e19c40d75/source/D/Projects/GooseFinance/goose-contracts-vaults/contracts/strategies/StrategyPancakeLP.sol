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

contract StrategyPancakeLP is Ownable, ReentrancyGuard, Pausable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    uint256 public lastEarnTimestamp = 0;
    uint256 public lastEarnBlock = 0;
    uint256 public wantLockedTotal = 0;
    uint256 public sharesTotal = 0;

    address public vaultChef;
    address constant public router = address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F);
    address constant public pancakeChef = address(0x73feaa1eE314F8c655E354234017bE2193C9E24E);
    uint256 immutable public pid; // pid of pancake pool
    address immutable public pairAddress;
    address immutable public token0Address;
    address immutable public token1Address;
    address constant public earnedAddress = address(0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82);
    address constant public busdAddress = address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
    address constant public wbnbAddress = address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);

    //Router Paths
    address[] public earnedToToken0Path;
    address[] public earnedToToken1Path;
    address[] public token0ToEarnedPath;
    address[] public token1ToEarnedPath;

    address[] public busdToToken0Path;
    address[] public busdToToken1Path;
    address[] public token0ToBusdPath;
    address[] public token1ToBusdPath;

    address[] public earnedToBusdPath = [earnedAddress, wbnbAddress, busdAddress];

    uint256 public constant entranceFeeFactor = 9990; // < 0.1% entrance fee - goes to pool + prevents front-running
    uint256 public constant entranceFeeFactorMax = 10000;

    IFeeDistributor public feeDistributor;
    address public adminAddress;

    event UpdateFeeDistributor(address indexed user, address indexed distributor);
    event Pause(address indexed user);
    event UnPause(address indexed user);

    constructor(
        address _pairAddress,
        uint256 _pid,
        address _vaultChef,
        address _feeDistributor,
        address _adminAddress,
        address[] memory _earnedToToken0Path,
        address[] memory _earnedToToken1Path,
        address[] memory _busdToToken0Path,
        address[] memory _busdToToken1Path
    ) public {
        pairAddress = _pairAddress;
        address _token0Address = IPancakePair(_pairAddress).token0();
        token0Address = _token0Address;
        address _token1Address = IPancakePair(_pairAddress).token1();
        token1Address = _token1Address;

        pid = _pid;
        vaultChef = _vaultChef;
        feeDistributor = IFeeDistributor(_feeDistributor);
        adminAddress = _adminAddress;

        if (_token0Address != earnedAddress) {
            validatePath(_earnedToToken0Path, earnedAddress, _token0Address);
        }
        if (_token1Address != earnedAddress) {
            validatePath(_earnedToToken1Path, earnedAddress, _token1Address);
        }
        if (_token0Address != busdAddress) {
            validatePath(_busdToToken0Path, busdAddress, _token0Address);
        }
        if (_token1Address != busdAddress) {
            validatePath(_busdToToken1Path, busdAddress, _token1Address);
        }

        setRouterPath(earnedToToken0Path, _earnedToToken0Path, false);
        setRouterPath(earnedToToken1Path, _earnedToToken1Path, false);
        setRouterPath(token0ToEarnedPath, _earnedToToken0Path, true);
        setRouterPath(token1ToEarnedPath, _earnedToToken1Path, true);

        setRouterPath(busdToToken0Path, _busdToToken0Path, false);
        setRouterPath(busdToToken1Path, _busdToToken1Path, false);
        setRouterPath(token0ToBusdPath, _busdToToken0Path, true);
        setRouterPath(token1ToBusdPath, _busdToToken1Path, true);
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
        IERC20(pairAddress).safeTransferFrom(address(msg.sender), address(this), _wantAmt);
        return _deposit(_userAddress, _wantAmt);
    }

    function depositBUSD(address _userAddress, uint256 busdAmount) public onlyOwner whenNotPaused returns (uint256){
        IERC20(busdAddress).safeTransferFrom(address(msg.sender), address(this), busdAmount);
        uint256 _wantAmt = _addLiquidity(busdAddress, busdAmount, busdToToken0Path, busdToToken1Path);
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
        uint256 wantAmt = IERC20(pairAddress).balanceOf(address(this));
        if(wantAmt == 0) return;

        wantLockedTotal = wantLockedTotal.add(wantAmt);
        IERC20(pairAddress).safeIncreaseAllowance(pancakeChef, wantAmt);
        IMasterChef(pancakeChef).deposit(pid, wantAmt);
    }

    function withdraw(address _userAddress, uint256 _wantAmt) public onlyOwner nonReentrant returns (uint256){
        (uint256 sharesRemoved, uint256 withdrawnAmount) = _withdraw(_wantAmt);
        IERC20(pairAddress).safeTransfer(vaultChef, withdrawnAmount);
        return sharesRemoved;
    }

    function withdrawBUSD(address _userAddress, uint256 shares) public onlyOwner nonReentrant returns (uint256, uint256){
        uint256 _wantAmt = shares.mul(wantLockedTotal).div(sharesTotal);
        (uint256 sharesRemoved, uint256 withdrawnAmount) = _withdraw(_wantAmt);

        uint256 busdAmountBefore = IERC20(busdAddress).balanceOf(address(this));

        (uint256 amount0, uint256 amount1) = RouterHelper.removeLiquidity(pairAddress, withdrawnAmount);

        if (amount0 > 0 && token0Address != busdAddress) {
            RouterHelper.swapTokens(amount0, token0Address, busdAddress, token0ToBusdPath);
        }

        if (amount1 > 0 && token1Address != busdAddress) {
            RouterHelper.swapTokens(amount1, token1Address, busdAddress, token1ToBusdPath);
        }

        uint256 busdAmountAfter = IERC20(busdAddress).balanceOf(address(this));
        uint256 busdGained = busdAmountAfter.sub(busdAmountBefore);

        IERC20(busdAddress).safeTransfer(vaultChef, busdGained);

        return (sharesRemoved, busdGained);
    }

    function _withdraw(uint256 _wantAmt) internal returns (uint256, uint256){
        require(_wantAmt > 0, "_wantAmt <= 0");

        IMasterChef(pancakeChef).withdraw(pid, _wantAmt);

        uint256 wantAmt = IERC20(pairAddress).balanceOf(address(this));
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
        IMasterChef(pancakeChef).deposit(pid, 0);

        //Fees
        uint256 earnedAmount = IERC20(earnedAddress).balanceOf(address(this));
        uint256 feeAmount = feeDistributor.calculateFees(earnedAmount);
        if (feeAmount > 0) {
            IERC20(earnedAddress).safeIncreaseAllowance(address(feeDistributor), feeAmount);
            bool feeSuccess = feeDistributor.transferFees(earnedAddress, feeAmount);
            require(feeSuccess, "FEE DISTRIBUTION FAILED");
        }

        // Converts reward tokens into want tokens
        addLiquidity();

        lastEarnBlock = block.number;
        lastEarnTimestamp = block.timestamp;

        _farm();
    }

    function addLiquidity() internal returns (uint256){
        uint256 earnedAmount = IERC20(earnedAddress).balanceOf(address(this));
        return _addLiquidity(earnedAddress, earnedAmount, earnedToToken0Path, earnedToToken1Path);
    }

    function _addLiquidity(address inputToken, uint256 inputAmount, address[] memory to0Path, address[] memory to1Path) internal returns (uint256){
        uint256 halfAmount = inputAmount.div(2);

        uint256 token0Amt = halfAmount;
        if (inputToken != token0Address) {
            // Swap half earned to token0
            token0Amt = RouterHelper.swapTokens(halfAmount, inputToken, token0Address, to0Path);
        }

        uint256 token1Amt = halfAmount;
        if (inputToken != token1Address) {
            // Swap half earned to token1
            token1Amt = RouterHelper.swapTokens(halfAmount, inputToken, token1Address, to1Path);
        }

        // Get want tokens, ie. add liquidity
        if (token0Amt > 0 && token1Amt > 0) {
            (uint256 amount0, uint256 amount1, uint256 liquidity) =
            RouterHelper.addLiquidity(token0Address, token1Address, token0Amt, token1Amt);
            return liquidity;
        }
        return 0;
    }

    function convertDustToEarned() public whenNotPaused {
        // Converts dust tokens into earned tokens, which will be reinvested on the next earn().

        // Converts token0 dust (if any) to earned tokens
        uint256 token0Amt = IERC20(token0Address).balanceOf(address(this));
        if (token0Address != earnedAddress && token0Amt > 0) {
            RouterHelper.swapTokens(token0Amt, token0Address, earnedAddress, token0ToEarnedPath);
        }

        // Converts token1 dust (if any) to earned tokens
        uint256 token1Amt = IERC20(token1Address).balanceOf(address(this));
        if (token1Address != earnedAddress && token1Amt > 0) {
            RouterHelper.swapTokens(token1Amt, token1Address, earnedAddress, token1ToEarnedPath);
        }
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
        if (wantAmount == 0) return 0;
        uint256 unit = 1e18;

        (uint reserve0, uint reserve1,) = IPancakePair(pairAddress).getReserves();
        uint256 totalSupply = IPancakePair(pairAddress).totalSupply();

        uint256 total0 = unit.mul(reserve0).div(totalSupply);
        uint256 total1 = unit.mul(reserve1).div(totalSupply);

        uint256 value0 = total0;
        if (token0Address != busdAddress) {
            value0 = quoteValue(total0, token0ToBusdPath);
        }

        uint256 value1 = total1;
        if (token1Address != busdAddress) {
            value1 = quoteValue(total1, token1ToBusdPath);
        }
        uint256 totalUnitValue = value0.add(value1);

        return totalUnitValue.mul(wantAmount).div(unit);
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
        (,uint256 allocPoint,,) = IMasterChef(pancakeChef).poolInfo(pid);
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
        return IERC20(pairAddress).balanceOf(pancakeChef);
    }
}
