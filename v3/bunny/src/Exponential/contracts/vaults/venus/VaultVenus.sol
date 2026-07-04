// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

/*
  ___                      _   _
 | _ )_  _ _ _  _ _ _  _  | | | |
 | _ \ || | ' \| ' \ || | |_| |_|
 |___/\_,_|_||_|_||_\_, | (_) (_)
                    |__/

*
* MIT License
* ===========
*
* Copyright (c) 2020 BunnyFinance
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*/

import "@openzeppelin/contracts/math/Math.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import "../../library/PausableUpgradeable.sol";
import "../../library/SafeToken.sol";
import "../../library/SafeVenus.sol";

import "../../interfaces/IStrategy.sol";
import "../../interfaces/IVToken.sol";
import "../../interfaces/IVenusDistribution.sol";
import "../../interfaces/IVaultVenusBridge.sol";
import "../../interfaces/IBank.sol";
import "../VaultController.sol";
import "../../interfaces/qubit/IVaultQubit.sol";
import "../../interfaces/IVaultVenus.sol";

contract VaultVenus is VaultController, IStrategy, ReentrancyGuardUpgradeable {
    using SafeMath for uint;
    using SafeToken for address;

    /* ========== CONSTANTS ============= */

    uint public constant override pid = 9999;
    PoolConstant.PoolTypes public constant override poolType = PoolConstant.PoolTypes.Venus;

    IVenusDistribution private constant VENUS_UNITROLLER = IVenusDistribution(0xfD36E2c2a6789Db23113685031d7F16329158384);

    address private constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address private constant XVS = 0xcF6BB5389c92Bdda8a3747Ddb454cB7a64626C63;

    uint private constant COLLATERAL_RATIO_INIT = 975;
    uint private constant DUST = 1000;

    uint private constant VENUS_EXIT_BASE = 10000;

    /* ========== STATE VARIABLES ========== */

    IVToken public vToken;
    SafeVenus public safeVenus;

    uint public venusBorrow;
    uint public venusSupply;

    uint public collateralDepth;
    uint public collateralRatioFactor;

    uint public collateralRatio;
    uint public collateralRatioLimit;

    uint public reserveRatio;

    uint public totalShares;
    mapping(address => uint) private _shares;
    mapping(address => uint) private _principal;
    mapping(address => uint) private _depositedAt;

    IVaultVenusBridge private _venusBridge;

    /* ========== EVENTS ========== */

    event CollateralFactorsUpdated(uint collateralRatioFactor, uint collateralDepth);

    /* ========== INITIALIZER ========== */

    receive() external payable {}

    function initialize(address _token, address _vToken) external initializer {
        require(_token != address(0), "VaultVenus: invalid token");
        __VaultController_init(IBEP20(_token));
        __ReentrancyGuard_init();

        vToken = IVToken(_vToken);

        (, uint collateralFactorMantissa,) = VENUS_UNITROLLER.markets(_vToken);

        collateralDepth = 3;
        collateralRatioFactor = COLLATERAL_RATIO_INIT;

        collateralRatio = 0;
        collateralRatioLimit = collateralFactorMantissa.mul(collateralRatioFactor).div(1000);

        reserveRatio = 10;
    }

    /* ========== VIEW FUNCTIONS ========== */

    function totalSupply() external view override returns (uint) {
        return totalShares;
    }

    function balance() public view override returns (uint) {
        return balanceAvailable().add(venusSupply).sub(venusBorrow);
    }

    function balanceAvailable() public view returns (uint) {
        return VENUS_BRIDGE().availableOf(address(this));
    }

    function balanceReserved() public view returns (uint) {
        return Math.min(balanceAvailable(), balance().mul(reserveRatio).div(1000));
    }

    function balanceOf(address account) public view override returns (uint) {
        if (totalShares == 0) return 0;
        return balance().mul(sharesOf(account)).div(totalShares);
    }

    function withdrawableBalanceOf(address account) public view override returns (uint) {
        return balanceOf(account);
    }

    function sharesOf(address account) public view override returns (uint) {
        return _shares[account];
    }

    function principalOf(address account) override public view returns (uint) {
        return _principal[account];
    }

    function earned(address account) override public view returns (uint) {
        uint accountBalance = balanceOf(account);
        uint accountPrincipal = principalOf(account);
        if (accountBalance >= accountPrincipal + DUST) {
            return accountBalance.sub(accountPrincipal);
        } else {
            return 0;
        }
    }

    function depositedAt(address account) external view override returns (uint) {
        return _depositedAt[account];
    }

    function rewardsToken() external view override returns (address) {
        return address(_stakingToken);
    }

    function priceShare() external view override returns (uint) {
        if (totalShares == 0) return 1e18;
        return balance().mul(1e18).div(totalShares);
    }

    function getUtilizationInfo() external view returns (uint liquidity, uint utilized) {
        liquidity = balance();
        utilized = balance().sub(balanceReserved());
    }

    function VENUS_BRIDGE() public view returns (IVaultVenusBridge) {
        return address(_venusBridge) == address(0) ? IVaultVenusBridge(0x31C16d0b0625c0f969D1aBFC3aB719Cc91940e3f) : _venusBridge;
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function setMinter(address newMinter) public override onlyOwner {
        VaultController.setMinter(newMinter);
    }

    function setCollateralFactors(uint _collateralRatioFactor, uint _collateralDepth) external onlyOwner {
        require(_collateralRatioFactor < 1000, "VenusVault: invalid collateral ratio factor");

        collateralRatioFactor = _collateralRatioFactor;
        collateralDepth = _collateralDepth;
        updateVenusFactors();
        emit CollateralFactorsUpdated(_collateralRatioFactor, _collateralDepth);
    }

    function setReserveRatio(uint _reserveRatio) external onlyOwner {
        require(_reserveRatio < 1000, "VaultVenus: invalid reserve ratio");
        reserveRatio = _reserveRatio;
    }

    function setVenusBridge(address _bridge) external onlyOwner {
        require(address(_venusBridge) == address(0), "VaultVenus: already set bridge");
        _venusBridge = IVaultVenusBridge(_bridge);
    }

    function setSafeVenus(address payable _safeVenus) public onlyOwner {
        safeVenus = SafeVenus(_safeVenus);
    }

    function increaseCollateral() external onlyKeeper {
        _increaseCollateral(safeVenus.safeCompoundDepth(address(this)));
    }

    function decreaseCollateral(uint amountMin, uint supply) external payable onlyKeeper {
        updateVenusFactors();
        IVaultVenusBridge bridge = VENUS_BRIDGE();

        supply = msg.value > 0 ? msg.value : supply;
        if (address(_stakingToken) == WBNB) {
            bridge.deposit{value : supply}(address(this), supply);
        } else {
            _stakingToken.safeTransferFrom(msg.sender, address(bridge), supply);
            bridge.deposit(address(this), supply);
        }

        bridge.mint(balanceAvailable());
        _decreaseCollateral(amountMin);
        bridge.withdraw(msg.sender, supply);

        updateVenusFactors();
    }

    function migrateTo(address payable target, uint amount) external payable onlyOwner {
        amount = address(_stakingToken) == WBNB ? msg.value: amount;
        uint tokenBalance = address(_stakingToken) == WBNB ? address(this).balance : _stakingToken.balanceOf(address(this));
        require(tokenBalance >= amount, 'VenusVault: insufficient token balance');
        IVaultVenusBridge _VENUS_BRIDGE = VENUS_BRIDGE();

        if (venusSupply > 0) {
            _VENUS_BRIDGE.harvest();
            _decreaseCollateral(uint(-1));
            require(venusSupply == 0 && venusBorrow == 0, "VaultVenus: borrow and supply must be zero");
        }

        if (address(_stakingToken) == WBNB) {
            _VENUS_BRIDGE.deposit{value : amount}(address(this), amount);
        } else {
            _VENUS_BRIDGE.deposit(address(this), amount);
        }

        uint _currentBridgeAvailable = _VENUS_BRIDGE.availableOf(address(this));
        _VENUS_BRIDGE.migrateTo(target);
        uint _targetBridgeAvailable = IVaultVenusBridge(target).availableOf(address(this));

        require(_currentBridgeAvailable == _targetBridgeAvailable, 'VenusVault: not identical available');
        _venusBridge = IVaultVenusBridge(target);
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function updateVenusFactors() public {
        (venusBorrow, venusSupply) = safeVenus.venusBorrowAndSupply(address(this));
        (, uint collateralFactorMantissa,) = VENUS_UNITROLLER.markets(address(vToken));

        collateralRatio = venusBorrow == 0 ? 0 : venusBorrow.mul(1e18).div(venusSupply);
        collateralRatioLimit = collateralFactorMantissa.mul(collateralRatioFactor).div(1000);
    }

    function deposit(uint amount) public override notPaused nonReentrant {
        require(address(_stakingToken) != WBNB, 'VaultVenus: invalid asset');
        updateVenusFactors();

        uint _balance = balance();
        uint _before = balanceAvailable();
        _stakingToken.safeTransferFrom(msg.sender, address(VENUS_BRIDGE()), amount);
        VENUS_BRIDGE().deposit(address(this), amount);
        amount = balanceAvailable().sub(_before);

        uint shares = totalShares == 0 ? amount : amount.mul(totalShares).div(_balance);

        totalShares = totalShares.add(shares);
        _shares[msg.sender] = _shares[msg.sender].add(shares);
        _principal[msg.sender] = _principal[msg.sender].add(amount);
        _depositedAt[msg.sender] = block.timestamp;

        emit Deposited(msg.sender, amount);
    }

    function depositAll() external override {
        deposit(_stakingToken.balanceOf(msg.sender));
    }

    function depositBNB() public payable notPaused nonReentrant {
        require(address(_stakingToken) == WBNB, 'VaultVenus: invalid asset');
        updateVenusFactors();

        uint _balance = balance();
        uint amount = msg.value;
        VENUS_BRIDGE().deposit{value : amount}(address(this), amount);

        uint shares = totalShares == 0 ? amount : amount.mul(totalShares).div(_balance);

        totalShares = totalShares.add(shares);
        _shares[msg.sender] = _shares[msg.sender].add(shares);
        _principal[msg.sender] = _principal[msg.sender].add(amount);
        _depositedAt[msg.sender] = block.timestamp;

        emit Deposited(msg.sender, amount);
    }

    function withdrawAll() external override notPaused {
        (uint amount, uint withdrawalFee) = _getExitAmount();
        VENUS_BRIDGE().withdraw(msg.sender, amount);
        if (collateralRatio > collateralRatioLimit) {
            _decreaseCollateral(0);
        }
        emit Withdrawn(msg.sender, amount, withdrawalFee);
    }

    function withdraw(uint) external override {
        revert("N/A");
    }

    function withdrawUnderlying(uint _amount) external notPaused {
        updateVenusFactors();
        uint amount = Math.min(_amount, _principal[msg.sender]);
        uint available = balanceAvailable();
        if (available < amount) {
            _decreaseCollateral(amount);
            available = balanceAvailable();
        }

        amount = Math.min(amount, available);
        uint shares = balance() == 0 ? 0 : Math.min(amount.mul(totalShares).div(balance()), _shares[msg.sender]);

        totalShares = totalShares.sub(shares);
        _shares[msg.sender] = _shares[msg.sender].sub(shares);
        _principal[msg.sender] = _principal[msg.sender].sub(amount);

        uint depositTimestamp = _depositedAt[msg.sender];
        uint withdrawalFee = canMint() ? _minter.withdrawalFee(amount, depositTimestamp) : 0;
        if (withdrawalFee > DUST) {
            VENUS_BRIDGE().withdraw(address(this), withdrawalFee);
            if (address(_stakingToken) == WBNB) {
                _minter.mintFor{value : withdrawalFee}(address(0), withdrawalFee, 0, msg.sender, depositTimestamp);
            } else {
                _minter.mintFor(address(_stakingToken), withdrawalFee, 0, msg.sender, depositTimestamp);
            }
            amount = amount.sub(withdrawalFee);
        }

        VENUS_BRIDGE().withdraw(msg.sender, amount);
        if (collateralRatio >= collateralRatioLimit) {
            _decreaseCollateral(0);
        }
        emit Withdrawn(msg.sender, amount, withdrawalFee);
    }

    function getReward() public override nonReentrant {
        updateVenusFactors();
        uint amount = earned(msg.sender);
        uint available = balanceAvailable();
        if (available < amount) {
            _decreaseCollateral(amount);
            amount = earned(msg.sender);
            available = balanceAvailable();
        }

        amount = Math.min(amount, available);

        uint shares = balance() == 0 ? 0 : Math.min(amount.mul(totalShares).div(balance()), _shares[msg.sender]);

        totalShares = totalShares.sub(shares);
        _shares[msg.sender] = _shares[msg.sender].sub(shares);

        // cleanup dust
        if (_shares[msg.sender] > 0 && _shares[msg.sender] < DUST) {
            totalShares = totalShares.sub(_shares[msg.sender]);
            delete _shares[msg.sender];
        }

        VENUS_BRIDGE().withdraw(msg.sender, amount);
        if (collateralRatio >= collateralRatioLimit) {
            _decreaseCollateral(0);
        }
        emit ProfitPaid(msg.sender, amount, 0);
    }

    function harvest() public override notPaused onlyKeeper {
        VENUS_BRIDGE().harvest();
        uint compound = safeVenus.safeCompoundDepth(address(this));
        if (compound == 0) {
            _decreaseCollateral(uint(-1));
            compound = safeVenus.safeCompoundDepth(address(this));
        }
        _increaseCollateral(compound);
    }

    /* ========== PRIVATE FUNCTIONS ========== */

    function _hasSufficientBalance(uint amount) private view returns (bool) {
        return balanceAvailable().add(venusSupply).sub(venusBorrow) >= amount;
    }

    function _increaseCollateral(uint compound) private {
        updateVenusFactors();
        (uint mintable, uint mintableInUSD) = safeVenus.safeMintAmount(address(this));
        IVaultVenusBridge bridge = VENUS_BRIDGE();
        if (mintableInUSD > 1e18) {
            bridge.mint(mintable);
        }

        if (collateralRatio >= collateralRatioLimit) {
            _decreaseCollateral(0);
            return;
        }
        updateVenusFactors();
        uint borrowable = safeVenus.safeBorrowAmount(address(this));
        while (!paused && compound > 0 && borrowable > 1 szabo) {

            bridge.borrow(borrowable);
            updateVenusFactors();
            (mintable, mintableInUSD) = safeVenus.safeMintAmount(address(this));
            if (mintableInUSD > 1e18) {
                bridge.mint(mintable);
            }

            updateVenusFactors();
            borrowable = safeVenus.safeBorrowAmount(address(this));
            compound--;
        }
    }

    function _decreaseCollateral(uint amountMin) private {
        updateVenusFactors();

        uint marketSupply = vToken.totalSupply().mul(vToken.exchangeRateCurrent()).div(1e18);
        uint marketLiquidity = marketSupply > vToken.totalBorrowsCurrent() ? marketSupply.sub(vToken.totalBorrowsCurrent()) : 0;
        require(amountMin == uint(-1) || marketLiquidity >= amountMin, "VaultVenus: not enough market liquidity");

        if (amountMin == uint(-1) && marketLiquidity < venusSupply.sub(venusBorrow)) amountMin = marketLiquidity;

        IVaultVenusBridge bridge = VENUS_BRIDGE();
        if (amountMin != uint(- 1) && collateralRatio == 0) {
            bridge.redeemUnderlying(Math.min(venusSupply, amountMin));
            updateVenusFactors();
        } else {
            uint redeemable = safeVenus.safeRedeemAmount(address(this));
            while (venusBorrow > 0 && redeemable > 0) {
                uint redeemAmount = amountMin > 0 ? Math.min(venusSupply, Math.min(redeemable, amountMin)) : Math.min(venusSupply, redeemable);
                bridge.redeemUnderlying(redeemAmount);
                bridge.repayBorrow(Math.min(venusBorrow, balanceAvailable()));
                updateVenusFactors();

                redeemable = safeVenus.safeRedeemAmount(address(this));
                uint available = balanceAvailable().add(redeemable);
                if (collateralRatio <= collateralRatioLimit && available >= amountMin) {
                    uint remain = amountMin > balanceAvailable() ? amountMin.sub(balanceAvailable()) : 0;
                    if (remain > 0) {
                        bridge.redeemUnderlying(Math.min(remain, redeemable));
                    }
                    updateVenusFactors();
                    return;
                }
            }

            if (amountMin == uint(- 1) && venusBorrow == 0) {
                bridge.redeemAll();
                updateVenusFactors();
            }
        }
    }

    function _getExitAmount() private returns (uint, uint) {
        updateVenusFactors();
        uint amount = balanceOf(msg.sender);
        require(_hasSufficientBalance(amount), "VaultVenus: insufficient balance");
        uint principal = principalOf(msg.sender);
        uint available = balanceAvailable();
        uint depositTimestamp = _depositedAt[msg.sender];
        if (available < amount) {
            _decreaseCollateral(amount);
            amount = balanceOf(msg.sender);
            available = balanceAvailable();
        }
        amount = Math.min(amount, available);
        uint shares = _shares[msg.sender];

        totalShares = totalShares.sub(shares);
        delete _shares[msg.sender];
        delete _principal[msg.sender];
        delete _depositedAt[msg.sender];

        uint withdrawalFee = canMint() ? _minter.withdrawalFee(principal, depositTimestamp) : 0;
        if (withdrawalFee > DUST) {
            VENUS_BRIDGE().withdraw(address(this), withdrawalFee);
            if (address(_stakingToken) == WBNB) {
                _minter.mintFor{value : withdrawalFee}(address(0), withdrawalFee, 0, msg.sender, depositTimestamp);
            } else {
                _minter.mintFor(address(_stakingToken), withdrawalFee, 0, msg.sender, depositTimestamp);
            }

            amount = amount.sub(withdrawalFee);
        }
        return (amount, withdrawalFee);
    }

    /* ========== SALVAGE PURPOSE ONLY ========== */

    function recoverToken(address tokenAddress, uint tokenAmount) external override onlyOwner {
        require(tokenAddress != address(0) && tokenAddress != address(_stakingToken) &&
        tokenAddress != address(vToken) && tokenAddress != XVS, "VaultVenus: cannot recover token");

        IBEP20(tokenAddress).safeTransfer(owner(), tokenAmount);
        emit Recovered(tokenAddress, tokenAmount);
    }
}
