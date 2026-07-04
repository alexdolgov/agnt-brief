// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12;

import "../interfaces/IBEP20.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import "../interfaces/IApePair.sol";
import "../interfaces/IMasterApe.sol";
import "../interfaces/IPriceCalculator.sol";
import "../interfaces/ISpaceMinter.sol";

contract StrategyHelperV2 is Ownable {
    using SafeMath for uint256;

    IBEP20 private constant WBNB = IBEP20(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);
    IBEP20 private constant CAKE = IBEP20(0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82);
    IBEP20 private constant BANANA = IBEP20(0x603c7f932ED1fc6575303D8Fb018fDCBb0f39a95);
    IBEP20 private constant BUSD = IBEP20(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);

    IMasterApe private constant pancake_masterchef = IMasterApe(0x73feaa1eE314F8c655E354234017bE2193C9E24E);
    IMasterApe private constant ape_chef = IMasterApe(0x5c8D727b265DBAfaba67E050f2f739cAeEB4A6F9);

    IPriceCalculator private constant priceCalculator = IPriceCalculator(0x5D6086f8aae9DaEBAC5674E8F3b867D5743171D3);

    mapping(address => address) public tokenMasterChef;
    mapping(address => bool) public isFlip;

    constructor() public {
        tokenMasterChef[address(CAKE)] = address(pancake_masterchef);
        tokenMasterChef[address(BANANA)] = address(ape_chef);
    }

    function setTokenMasterChef(address token, address masterchef) external onlyOwner {
        tokenMasterChef[token] = masterchef;
    }

    function setIsFlip(address token, bool isFlipToken) external onlyOwner {
        isFlip[token] = isFlipToken;
    }

    function tokenPriceInBNB(address _token) public view returns (uint256) {
        (uint256 priceInBnb, uint256 priceInUsd) = priceCalculator.valueOfAsset(_token, 1e18);
        return priceInBnb;
    }

    function cakePriceInBNB() public view returns (uint256) {
        (uint256 priceInBnb, uint256 priceInUsd) = priceCalculator.valueOfAsset(address(CAKE), 1e18);
        return priceInBnb;
    }

    function bananaPriceInBnb() public view returns (uint256) {
        (uint256 priceInBnb, uint256 priceInUsd) = priceCalculator.valueOfAsset(address(BANANA), 1e18);
        return priceInBnb;
    }

    function bnbPriceInUSD() public view returns (uint256) {
        (uint256 priceInBnb, uint256 priceInUsd) = priceCalculator.valueOfAsset(address(WBNB), 1e18);
        return priceInUsd;
    }

    function rewardsTokenPerYearOfPool(uint256 pid, address masterchef) public view returns (uint256) {
        IMasterApe master = IMasterApe(masterchef);
        (, uint256 allocPoint, , ) = master.poolInfo(pid);
        return master.cakePerBlock().mul(blockPerYear()).mul(allocPoint).div(master.totalAllocPoint());
    }

    function bananaPerYearOfPool(uint256 pid) public view returns (uint256) {
        (, uint256 allocPoint, , ) = ape_chef.poolInfo(pid);
        return ape_chef.cakePerBlock().mul(blockPerYear()).mul(allocPoint).div(ape_chef.totalAllocPoint());
    }

    function blockPerYear() public pure returns (uint256) {
        // 86400 / 3 * 365
        return 10512000;
    }

    function profitOf(
        ISpaceMinter minter,
        address flip,
        uint256 amount
    )
        external
        view
        returns (
            uint256 _usd,
            uint256 _bunny,
            uint256 _bnb
        )
    {
        _usd = tvl(flip, amount);
        if (address(minter) == address(0)) {
            _bunny = 0;
        } else {
            uint256 performanceFee = minter.performanceFee(_usd);
            _usd = _usd.sub(performanceFee);
            uint256 bnbAmount = performanceFee.mul(1e18).div(bnbPriceInUSD());
            _bunny = minter.amountSpaceToMint(bnbAmount);
        }
        _bnb = 0;
    }

    function _apy(
        uint256 pid,
        address masterchef,
        address _rewards_token
    ) private view returns (uint256) {
        IMasterApe master = IMasterApe(masterchef);
        (address token, , , ) = master.poolInfo(pid);
        uint256 poolSize = tvl(token, IBEP20(token).balanceOf(address(master))).mul(1e18).div(bnbPriceInUSD());
        return tokenPriceInBNB(_rewards_token).mul(rewardsTokenPerYearOfPool(pid, masterchef)).div(poolSize);
    }

    function apy(address _rewardsToken, uint256 pid)
        public
        view
        returns (
            uint256 _usd,
            uint256 _bunny,
            uint256 _bnb
        )
    {
        _usd = compoundingAPY(pid, 1 days, _rewardsToken);
        _bunny = 0;
        _bnb = 0;
    }

    function tvl(address _flip, uint256 amount) public view returns (uint256) {
        if (!isFlip[_flip]) {
            return tokenPriceInBNB(_flip).mul(bnbPriceInUSD()).mul(amount).div(1e36);
        }
        address _token0 = IApePair(_flip).token0();
        address _token1 = IApePair(_flip).token1();
        if (_token0 == address(WBNB) || _token1 == address(WBNB)) {
            uint256 bnb = WBNB.balanceOf(address(_flip)).mul(amount).div(IBEP20(_flip).totalSupply());
            uint256 price = bnbPriceInUSD();
            return bnb.mul(price).div(1e18).mul(2);
        }

        uint256 balanceToken0 = IBEP20(_token0).balanceOf(_flip);
        uint256 price = tokenPriceInBNB(_token0);
        return balanceToken0.mul(price).div(1e18).mul(bnbPriceInUSD()).div(1e18).mul(2);
    }

    function tvlInBNB(address _flip, uint256 amount) public view returns (uint256) {
        if (_flip == address(CAKE)) {
            return cakePriceInBNB().mul(amount).div(1e18);
        }
        address _token0 = IApePair(_flip).token0();
        address _token1 = IApePair(_flip).token1();
        if (_token0 == address(WBNB) || _token1 == address(WBNB)) {
            uint256 bnb = WBNB.balanceOf(address(_flip)).mul(amount).div(IBEP20(_flip).totalSupply());
            return bnb.mul(2);
        }

        uint256 balanceToken0 = IBEP20(_token0).balanceOf(_flip);
        uint256 price = tokenPriceInBNB(_token0);
        return balanceToken0.mul(price).div(1e18).mul(2);
    }

    function compoundingAPY(
        uint256 pid,
        uint256 compoundUnit,
        address _rewardsToken
    ) public view returns (uint256) {
        require(tokenMasterChef[_rewardsToken] != address(0), "StrategyHelper::MasterChef not set for rewards Token");
        uint256 __apy = _apy(pid, tokenMasterChef[_rewardsToken], _rewardsToken);
        uint256 compoundTimes = 365 days / compoundUnit;
        uint256 unitAPY = 1e18 + (__apy / compoundTimes);
        uint256 result = 1e18;

        for (uint256 i = 0; i < compoundTimes; i++) {
            result = (result * unitAPY) / 1e18;
        }

        return result - 1e18;
    }
}
