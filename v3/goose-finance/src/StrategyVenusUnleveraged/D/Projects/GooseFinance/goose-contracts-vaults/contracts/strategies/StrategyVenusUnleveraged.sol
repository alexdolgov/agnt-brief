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

import '../libs/RouterHelperV2.sol';
import '../interfaces/IFeeDistributor.sol';
import '../interfaces/IPancakeRouter02.sol';
import '../interfaces/IVToken.sol';
import '../interfaces/IVenusToken.sol';
import '../interfaces/IVenusBNB.sol';
import '../interfaces/IVenusUnitroller.sol';
import '../interfaces/IBEP20.sol';
import '../interfaces/IWrappedBNB.sol';

contract StrategyVenusUnleveraged is Ownable, ReentrancyGuard, Pausable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    uint256 public lastEarnTimestamp = 0;
    uint256 public lastEarnBlock = 0;
    uint256 public sharesTotal = 0;

    address public vaultChef;
    address public router = address(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    IVenusUnitroller constant public unitroller = IVenusUnitroller(0xfD36E2c2a6789Db23113685031d7F16329158384);

    address public wantAddress;
    address public vTokenAddress;

    address constant public earnedAddress = address(0xcF6BB5389c92Bdda8a3747Ddb454cB7a64626C63); //XVS
    address constant public busdAddress = address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
    address constant public wbnbAddress = address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);


    //Router Paths
    address[] public earnedToWantPath;
    address[] public busdToWantPath;
    address[] public wantToBusdPath;

    address[] public earnedToBusdPath = [earnedAddress, wbnbAddress, busdAddress];

    IFeeDistributor public feeDistributor;
    address public adminAddress;
    bool public bypassMode = false;

    event UpdateFeeDistributor(address indexed user, address indexed distributor);
    event Pause(address indexed user);
    event UnPause(address indexed user);
    event UpdateRouterAddress(address indexed user, address indexed router);
    event SetBypassMode(address indexed user, bool bypassMode);

    constructor(
        address _wantAddress,
        address _vTokenAddress,
        address _vaultChef,
        address _feeDistributor,
        address _adminAddress,
        address[] memory _earnedToWantPath,
        address[] memory _busdToWantPath
    ) public {
        wantAddress = _wantAddress;
        vTokenAddress = _vTokenAddress;

        if (_wantAddress != wbnbAddress) {
            require(IVenusToken(_vTokenAddress).underlying() == _wantAddress, "INVALID TOKENS");
        }

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

        transferOwnership(_vaultChef);

        address[] memory markets = new address[](1);
        markets[0] = _vTokenAddress;
        unitroller.enterMarkets(markets);
    }

    receive() external payable {}

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

    function updateBalance() public {
        if(!bypassMode){
            IVToken(vTokenAddress).accrueInterest();
        }
    }

    function wantLockedTotal() public view returns (uint256){
        uint256 balance = IVToken(vTokenAddress).balanceOf(address(this));
        uint256 exchangeRate = IVToken(vTokenAddress).exchangeRateStored();
        //Scaled by 1e18 according to Venus Docs
        return balance.mul(exchangeRate).div(1e18);
    }

    function deposit(address _userAddress, uint256 _wantAmt) public onlyOwner whenNotPaused returns (uint256){
        IERC20(wantAddress).safeTransferFrom(address(msg.sender), address(this), _wantAmt);
        return _deposit(_userAddress, _wantAmt);
    }

    function depositBUSD(address _userAddress, uint256 busdAmount) public onlyOwner whenNotPaused returns (uint256){
        IERC20(busdAddress).safeTransferFrom(address(msg.sender), address(this), busdAmount);
        uint256 _wantAmt = RouterHelperV2.swapTokens(router, busdAmount, busdAddress, wantAddress, busdToWantPath);
        return _deposit(_userAddress, _wantAmt);
    }

    //Shares are calculated AFTER staking to account for any entry fees from origin farm
    function _deposit(address _userAddress, uint256 _wantAmt) internal returns (uint256){
        updateBalance();

        uint256 wantLockedTotalBefore = wantLockedTotal();
        _farm();
        uint256 wantLockedTotalAfter = wantLockedTotal();

        uint256 wantLockedGained = Math.min(_wantAmt, wantLockedTotalAfter.sub(wantLockedTotalBefore));

        uint256 sharesAdded = wantLockedGained;
        if (sharesTotal > 0 && wantLockedTotalBefore > 0) {
            sharesAdded = wantLockedGained
            .mul(sharesTotal)
            .div(wantLockedTotalBefore);
        }
        sharesTotal = sharesTotal.add(sharesAdded);

        return sharesAdded;
    }

    function farm() public nonReentrant {
        _farm();
    }

    function _farm() internal {
        uint256 wantAmt = IERC20(wantAddress).balanceOf(address(this));
        if (wantAmt == 0) return;

        _mint(wantAmt);
    }

    function _mint(uint256 wantAmt) internal {
        uint errCode = 0;
        if (wantAddress == wbnbAddress) {
            _unwrapBNB(wantAmt);
            IVenusBNB(vTokenAddress).mint{value : wantAmt}();
        } else {
            IERC20(wantAddress).safeIncreaseAllowance(vTokenAddress, wantAmt);
            errCode = IVenusToken(vTokenAddress).mint(wantAmt);
        }
        require(errCode == 0, "VENUS MINT FAILED");
    }

    function _wrapBNB(uint256 bnbBal) internal {
        // BNB -> WBNB
        bnbBal = Math.min(bnbBal, address(this).balance);
        if (bnbBal > 0) {
            IWrappedBNB(wbnbAddress).deposit{value : bnbBal}();
        }
    }

    function _unwrapBNB(uint256 wbnbBal) internal {
        // WBNB -> BNB
        wbnbBal = Math.min(wbnbBal, IERC20(wantAddress).balanceOf(address(this)));
        if (wbnbBal > 0) {
            IWrappedBNB(wbnbAddress).withdraw(wbnbBal);
        }
    }

    function wrapBNB() public onlyAdmin {
        uint256 bnbBal = address(this).balance;
        _wrapBNB(bnbBal);
    }

    function withdraw(address _userAddress, uint256 _wantAmt) public onlyOwner nonReentrant returns (uint256){
        (uint256 sharesRemoved, uint256 withdrawnAmount) = _withdraw(_wantAmt);
        IERC20(wantAddress).safeTransfer(vaultChef, withdrawnAmount);
        return sharesRemoved;
    }

    function withdrawBUSD(address _userAddress, uint256 shares) public onlyOwner nonReentrant returns (uint256, uint256){
        uint256 _wantAmt = shares.mul(wantLockedTotal()).div(sharesTotal);
        (uint256 sharesRemoved, uint256 withdrawnAmount) = _withdraw(_wantAmt);
        uint256 busdGained = RouterHelperV2.swapTokens(router, withdrawnAmount, wantAddress, busdAddress, wantToBusdPath);
        IERC20(busdAddress).safeTransfer(vaultChef, busdGained);
        return (sharesRemoved, busdGained);
    }

    //Shares are calculated BEFORE unstaking to account for any exit fees from origin farm
    function _withdraw(uint256 _wantAmt) internal returns (uint256, uint256){
        require(_wantAmt > 0, "_wantAmt <= 0");

        uint256 wantLockedTotalBefore = wantLockedTotal();
        uint256 sharesRemoved = _wantAmt.mul(sharesTotal).div(wantLockedTotalBefore);
        if (sharesRemoved > sharesTotal) {
            sharesRemoved = sharesTotal;
        }

        _redeem(_wantAmt);

        uint256 wantBalance = IERC20(wantAddress).balanceOf(address(this));
        _wantAmt = Math.min(wantBalance, _wantAmt);

        sharesTotal = sharesTotal.sub(sharesRemoved);

        return (sharesRemoved, _wantAmt);
    }

    function _redeem(uint256 wantAmt) internal {
        uint errCode = 0;
        if (wantAddress == wbnbAddress) {
            errCode = IVenusBNB(vTokenAddress).redeemUnderlying(wantAmt);
            //actual received amount is less than wantAmt due to withdrawal fees
            _wrapBNB(wantAmt);
            //This will wrap the lesser of wantAmt or current balance
        } else {
            errCode = IVenusToken(vTokenAddress).redeemUnderlying(wantAmt);
        }
        require(errCode == 0, "REDEEM FAILED");
    }

    // 1. Harvest farm tokens
    // 2. Converts farm tokens into want tokens
    // 3. Deposits want tokens

    function earn() public whenNotPaused onlyOwner {
        unitroller.claimVenus(address(this));

        //Fees
        uint256 earnedAmount = IERC20(earnedAddress).balanceOf(address(this));
        if (earnedAmount > 0) {
            uint256 feeAmount = feeDistributor.calculateFees(earnedAmount);
            if (feeAmount > 0) {
                IERC20(earnedAddress).safeIncreaseAllowance(address(feeDistributor), feeAmount);
                bool feeSuccess = feeDistributor.transferFees(earnedAddress, feeAmount);
                require(feeSuccess, "FEE DISTRIBUTION FAILED");
            }

            // Converts reward tokens into want tokens
            convertEarnedToWant();
        }

        lastEarnBlock = block.number;
        lastEarnTimestamp = block.timestamp;

        _farm();
    }

    function convertEarnedToWant() internal {
        uint256 earnedAmount = IERC20(earnedAddress).balanceOf(address(this));
        RouterHelperV2.swapTokens(router, earnedAmount, earnedAddress, wantAddress, earnedToWantPath);
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

    function updateRouterAddress(address _router) external onlyAdmin {
        router = _router;
        emit UpdateRouterAddress(msg.sender, _router);
    }

    function setBypassMode(bool _bypassMode) external onlyAdmin {
        bypassMode = _bypassMode;
        emit SetBypassMode(msg.sender, _bypassMode);
    }






    function tvl() external view returns (uint256) {
        uint decimals = IBEP20(wantAddress).decimals();
        uint unit = 10 ** decimals;
        return wantTokenValue(unit).mul(wantLockedTotal()).div(unit);
    }

    function wantTokenValue(uint256 wantAmount) public view returns (uint256) {
        return quoteValue(wantAmount, wantToBusdPath);
    }

    function originTVL() public view returns (uint256) {
        uint decimals = IBEP20(wantAddress).decimals();
        uint unit = 10 ** decimals;
        return wantTokenValue(unit).mul(originStakedTotal()).div(unit);
    }

    function quoteValue(uint256 amountsIn, address[] memory tradePath) private view returns (uint256){
        if (amountsIn == 0) return 0;
        if (tradePath.length < 2) return amountsIn;

        uint[] memory amounts = IPancakeRouter02(router).getAmountsOut(amountsIn, tradePath);
        return amounts[amounts.length - 1];
    }

    function rewardTokenValue(uint256 rewardAmount) public view returns (uint256) {
        return quoteValue(rewardAmount, earnedToBusdPath);
    }

    function originRewardsPerBlock() public view returns (uint256){
        return unitroller.venusSpeeds(vTokenAddress);
    }

    //Precision = 1e4. This does not include the base farm APY
    function originAPR(uint256 blocks) public view returns (uint256){
        uint256 valuePerBlock = rewardTokenValue(originRewardsPerBlock());
        return valuePerBlock.mul(blocks).mul(1e4).div(originTVL());
    }

    function originStakedTotal() public view returns (uint256){
        IVToken vToken = IVToken(vTokenAddress);
        return vToken.getCash().add(vToken.totalBorrows()).sub(vToken.totalReserves());
    }
}
