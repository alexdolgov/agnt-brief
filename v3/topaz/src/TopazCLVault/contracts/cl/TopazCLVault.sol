// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import { ITopazCLStrategy } from "./interfaces/ITopazCLStrategy.sol";

/// @title TopazCLVault
/// @notice ERC20 share token over a Topaz concentrated-liquidity position — a
///         faithful port of Beefy's BeefyVaultConcLiq (non-upgradeable).
/// @dev Two-token vault (the underlying is an NFT over token0+token1, so this is
///      intentionally NOT ERC4626 — there is no single `asset()`). Holds no funds
///      itself: every deposit/withdraw round-trips the strategy's `beforeAction()`
///      (evacuate to idle) → token transfer → `deposit()`/`withdraw()` (re-deploy).
///      Share value is denominated in token1-equivalent units via the pool price;
///      `MINIMUM_SHARES` are burned on the first deposit to harden against the
///      inflation attack. Deposit amounts are measured as balance deltas so
///      fee-on-transfer tokens can't mis-credit shares.
contract TopazCLVault is ERC20, ERC20Permit, Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /// @notice The strategy that custodies and manages the position.
    ITopazCLStrategy public immutable strategy;

    address public immutable token0;
    address public immutable token1;

    uint256 private constant MINIMUM_SHARES = 10 ** 3;
    uint256 private constant PRECISION = 1e36;
    address private constant BURN_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    error NoShares();
    error TooMuchSlippage();
    error NotEnoughTokens();

    event Deposit(address indexed user, uint256 shares, uint256 amount0, uint256 amount1, uint256 fee0, uint256 fee1);
    event Withdraw(address indexed user, uint256 shares, uint256 amount0, uint256 amount1);

    constructor(
        address _strategy,
        string memory _name,
        string memory _symbol
    ) ERC20(_name, _symbol) ERC20Permit(_name) Ownable(msg.sender) {
        strategy = ITopazCLStrategy(_strategy);
        token0 = ITopazCLStrategy(_strategy).lpToken0();
        token1 = ITopazCLStrategy(_strategy).lpToken1();
    }

    // ============ Views ============

    function isCalm() external view returns (bool) {
        return strategy.isCalm();
    }

    function swapFee() public view returns (uint256) {
        return strategy.swapFee();
    }

    function want() external view returns (address) {
        return strategy.pool();
    }

    function wants() public view returns (address, address) {
        return (token0, token1);
    }

    function balances() public view returns (uint256 amount0, uint256 amount1) {
        return strategy.balances();
    }

    function previewWithdraw(uint256 _shares) external view returns (uint256 amount0, uint256 amount1) {
        (uint256 bal0, uint256 bal1) = balances();
        uint256 _totalSupply = totalSupply();
        amount0 = (bal0 * _shares) / _totalSupply;
        amount1 = (bal1 * _shares) / _totalSupply;
    }

    function previewDeposit(uint256 _amount0, uint256 _amount1)
        external
        view
        returns (uint256 shares, uint256 amount0, uint256 amount1, uint256 fee0, uint256 fee1)
    {
        uint256 price = strategy.price();
        (uint256 bal0, uint256 bal1) = balances();
        (amount0, amount1, fee0, fee1) = _getTokensRequired(price, _amount0, _amount1, bal0, bal1, swapFee());
        uint256 _totalSupply = totalSupply();
        shares = (amount1 - fee1) + (((amount0 - fee0) * price) / PRECISION);
        if (_totalSupply > 0) {
            uint256 token1EquivalentBalance = ((((bal0 + fee0) * price) + PRECISION - 1) / PRECISION) + (bal1 + fee1);
            shares = (shares * _totalSupply) / token1EquivalentBalance;
        } else {
            shares = shares - MINIMUM_SHARES;
        }
    }

    // ============ Deposit / Withdraw ============

    function deposit(uint256 _amount0, uint256 _amount1, uint256 _minShares) external nonReentrant {
        (address _token0, address _token1) = wants();
        strategy.beforeAction();
        (uint256 _bal0, uint256 _bal1) = balances();
        uint256 price = strategy.price();
        (uint256 amount0, uint256 amount1, uint256 fee0, uint256 fee1) = _getTokensRequired(
            price,
            _amount0,
            _amount1,
            _bal0,
            _bal1,
            swapFee()
        );
        if (amount0 > _amount0 || amount1 > _amount1) revert NotEnoughTokens();

        if (amount0 > 0) IERC20(_token0).safeTransferFrom(msg.sender, address(strategy), amount0);
        if (amount1 > 0) IERC20(_token1).safeTransferFrom(msg.sender, address(strategy), amount1);

        // Measure actual received amounts (fee-on-transfer guard).
        {
            (uint256 _after0, uint256 _after1) = balances();
            amount0 = _after0 - _bal0;
            amount1 = _after1 - _bal1;
        }

        strategy.deposit();

        uint256 shares = (amount1 - fee1) + (((amount0 - fee0) * price) / PRECISION);
        uint256 _totalSupply = totalSupply();
        if (_totalSupply > 0) {
            shares = (shares * _totalSupply) / (((((_bal0 + fee0) * price) + PRECISION - 1) / PRECISION) + (_bal1 + fee1));
        } else {
            shares = shares - MINIMUM_SHARES;
            _mint(BURN_ADDRESS, MINIMUM_SHARES);
        }

        if (shares < _minShares) revert TooMuchSlippage();
        if (shares == 0) revert NoShares();

        _mint(msg.sender, shares);
        emit Deposit(msg.sender, shares, amount0, amount1, fee0, fee1);
    }

    function withdrawAll(uint256 _minAmount0, uint256 _minAmount1) external {
        withdraw(balanceOf(msg.sender), _minAmount0, _minAmount1);
    }

    function withdraw(uint256 _shares, uint256 _minAmount0, uint256 _minAmount1) public nonReentrant {
        if (_shares == 0) revert NoShares();
        strategy.beforeAction();

        uint256 _totalSupply = totalSupply();
        _burn(msg.sender, _shares);

        (uint256 _bal0, uint256 _bal1) = balances();
        uint256 _amount0 = (_bal0 * _shares) / _totalSupply;
        uint256 _amount1 = (_bal1 * _shares) / _totalSupply;

        strategy.withdraw(_amount0, _amount1);

        if (_amount0 < _minAmount0 || _amount1 < _minAmount1 || (_amount0 == 0 && _amount1 == 0)) {
            revert TooMuchSlippage();
        }

        (address _token0, address _token1) = wants();
        if (_amount0 > 0) IERC20(_token0).safeTransfer(msg.sender, _amount0);
        if (_amount1 > 0) IERC20(_token1).safeTransfer(msg.sender, _amount1);

        emit Withdraw(msg.sender, _shares, _amount0, _amount1);
    }

    // ============ Internal share math (Beefy CLM, verbatim) ============

    /// @dev Computes how much of (_amount0, _amount1) to actually take so the
    ///      deposit matches the current vault ratio, charging a sliding swap fee
    ///      on the imbalanced portion so an imbalanced deposit can't dilute holders.
    function _getTokensRequired(
        uint256 _price,
        uint256 _amount0,
        uint256 _amount1,
        uint256 _bal0,
        uint256 _bal1,
        uint256 _swapFee
    ) private pure returns (uint256 depositAmount0, uint256 depositAmount1, uint256 feeAmount0, uint256 feeAmount1) {
        if (_bal0 == 0 && _bal1 == 0) return (_amount0, _amount1, 0, 0);
        uint256 bal0InBal1 = (_bal0 * _price) / PRECISION;

        if (_bal1 < bal0InBal1) {
            uint256 owedAmount0 = _bal1 + _amount1 > bal0InBal1
                ? ((_bal1 + _amount1 - bal0InBal1) * PRECISION) / _price
                : 0;
            if (owedAmount0 > _amount0) {
                depositAmount0 = _amount0;
                depositAmount1 = _amount1 - (((owedAmount0 - _amount0) * _price) / PRECISION);
            } else {
                depositAmount0 = owedAmount0;
                depositAmount1 = _amount1;
            }
            uint256 fill = _amount1 < (bal0InBal1 - _bal1) ? _amount1 : (bal0InBal1 - _bal1);
            uint256 slidingFee = (bal0InBal1 * PRECISION + (owedAmount0 * _price)) /
                (bal0InBal1 + _bal1 + fill + ((2 * owedAmount0 * _price) / PRECISION));
            feeAmount1 = (fill * ((_swapFee * slidingFee) / PRECISION)) / 1e18;
        } else {
            uint256 owedAmount1 = bal0InBal1 + ((_amount0 * _price) / PRECISION) > _bal1
                ? bal0InBal1 + ((_amount0 * _price) / PRECISION) - _bal1
                : 0;
            if (owedAmount1 > _amount1) {
                depositAmount0 = _amount0 - (((owedAmount1 - _amount1) * PRECISION) / _price);
                depositAmount1 = _amount1;
            } else {
                depositAmount0 = _amount0;
                depositAmount1 = owedAmount1;
            }
            uint256 fill = _amount0 < ((_bal1 - bal0InBal1) * PRECISION) / _price
                ? _amount0
                : ((_bal1 - bal0InBal1) * PRECISION) / _price;
            uint256 slidingFee = ((_bal1 + owedAmount1) * PRECISION) /
                (bal0InBal1 + _bal1 + ((fill * _price) / PRECISION) + (2 * owedAmount1));
            feeAmount0 = (fill * ((_swapFee * slidingFee) / PRECISION)) / 1e18;
        }
    }

    // ============ Admin ============

    /// @notice Recover tokens accidentally sent to the vault. The vault holds no
    ///         funds between transactions (the strategy custodies everything), so
    ///         this cannot touch deposited principal.
    function inCaseTokensGetStuck(address _token) external onlyOwner {
        uint256 amount = IERC20(_token).balanceOf(address(this));
        IERC20(_token).safeTransfer(msg.sender, amount);
    }
}
