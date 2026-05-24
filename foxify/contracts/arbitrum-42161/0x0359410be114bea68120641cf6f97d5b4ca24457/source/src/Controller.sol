// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import {Constants} from "./lib/Constants.sol";
import {Errors} from "./lib/Errors.sol";

import {IController} from "./interfaces/IController.sol";
import {IVault} from "./interfaces/IVault.sol";
import {IERC20Mintable} from "./interfaces/IERC20Mintable.sol";
import {AccessControlUpgradeable} from
    "openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol";

contract Controller is AccessControlUpgradeable, IController {
    uint256 public constant BASIS_POINTS = 10_000;

    /// @dev pointer to the Vault contract
    IVault private _vault;

    /// @notice address of the fee vault
    address public _treasury;

    /// @notice current epoch
    /// @notice a new epoch starts when the bot closes all positions
    uint256 public _epoch;

    /// @notice timestamp at which the current epoch started at
    uint256 public _epochStartedAt;

    /// @notice timestamp at which the most recent deposit was made
    uint256 public _lastDepositAt;

    /// @notice timestamp at which the previous epoch started at
    uint256 public _previousEpochStartedAt;

    /// @notice global deposit limit, denominated in assets
    uint256 public _depositLimit;

    /// @notice global withdraw limit, denominated in assets, ensures all requested LP tokens can be successfully redeemed
    uint256 public _withdrawLimit;

    /// @notice snapshot of AUM at the end of the previous epoch
    uint256 public _totalAssetsSnapshot;

    /// @notice global redeem limit, denominated in shares
    uint256 public _redeemLimit;

    /// @notice total reedems requested in this epoch, denominated in shares
    uint256 public _totalRedeemRequests;

    /// @notice snapshot of total shares at the end of the previous epoch
    uint256 public _totalSupplySnapshot;

    /// @notice deposit fee, denominated in basis points, paid to `_treasury` on deposit
    uint256 public _depositFeeBp;

    /// @notice withdraw fee, denominated in basis points, paid to `_treasury` on withdraw
    uint256 public _withdrawFeeBp;

    /// @notice gains fee, denominated in basis points, paid to `_treasury` if the LP provider's average entry LP token price is lower than LP token price at redeem
    uint256 public _gainsFeeBp;

    /// @notice redeem amounts requested by users per epoch, denominated in shares
    mapping(address => mapping(uint256 => uint256)) public _redeemRequests;

    /// @notice tracks user epoch status to prevent double redeem
    mapping(address => mapping(uint256 => uint8)) public _epochFinalized;

    /// @notice time-weigthed average shares per user in the current and previous epochs
    /// @notice collateral-weigthed average LP token price per user in the current and previous epochs
    /// @notice block numbers at which users most recently deposited to the `_vault`
    /// @notice total shares per user in the previous epoch
    mapping(address => LiquidityProviderParams) public _lpParams;

    /// @notice time-weigthed average total supply in the current and previous epochs
    EpochStats public _twaTotalSupply;

    /// @notice total deposits in the current and previous epochs, denominated in assets
    EpochStats public _totalDeposits;

    function initialize(
        address vaultAddress,
        address treasuryAddress,
        address ownerAddress,
        uint256 depositFeeBp,
        uint256 withdrawFeeBp,
        uint256 gainsFeeBp,
        uint256 depositLimit,
        uint256 redeemLimit
    ) external initializer {
        _vault = IVault(vaultAddress);
        _treasury = treasuryAddress;

        _grantRole(DEFAULT_ADMIN_ROLE, ownerAddress);
        _setRoleAdmin(Constants.BOT_ROLE, DEFAULT_ADMIN_ROLE);

        _depositLimit = depositLimit;
        _redeemLimit = redeemLimit;

        _depositFeeBp = depositFeeBp;
        _withdrawFeeBp = withdrawFeeBp;
        _gainsFeeBp = gainsFeeBp;
    }

    /// @notice set `_depositFeeBp`, `_withdrawFeeBp` and `_gainsFeeBp`, access restricted to `DEFAULT_ADMIN_ROLE`
    /// @param depositFeeBp the new `_depositFeeBp`
    /// @param withdrawFeeBp the new `_withdrawFeeBp`
    /// @param gainsFeeBp the new `_gainsFeeBp`
    function setFees(uint256 depositFeeBp, uint256 withdrawFeeBp, uint256 gainsFeeBp)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        _depositFeeBp = depositFeeBp;
        _withdrawFeeBp = withdrawFeeBp;
        _gainsFeeBp = gainsFeeBp;
    }

    /// @notice set `_depositLimit` and `_redeemLimit`, access restricted to `DEFAULT_ADMIN_ROLE`
    /// @param depositLimit the new `_depositLimit`
    /// @param redeemLimit the new `_redeemLimit`
    function setLimits(uint256 depositLimit, uint256 redeemLimit) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _depositLimit = depositLimit;
        _redeemLimit = redeemLimit;
    }

    /// @notice set the `_treasury` address aka the fee recipient, access restricted to `DEFAULT_ADMIN_ROLE`
    /// @param treasury the new fee recipient
    function setTreasury(address treasury) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _treasury = treasury;
    }

    /// @notice deposit to the Vault
    /// @notice this function is permissionless
    /// @notice on deposit the Controller applies the `_depositFee` on the principal
    /// @notice user's `_lpParams` are updated to reflect the changes in assets deposited and shares purchased
    /// @notice shares are time-weighted
    /// @notice average entry price is share-weighted
    /// @notice shares and price trackers reset every epoch
    /// @notice on every first deposit in an epoch, `_lpParams` for the previous epoch are finalized
    /// @param assets amount of assets to deposit
    /// @param minShares minimum expected amount of shares to receive
    function deposit(uint256 assets, uint256 minShares) external {
        if (_epoch < 1) revert Errors.FunctionalityDisabled();

        uint256 depositFeeBp = _depositFeeBp * assets / BASIS_POINTS;
        assets -= _depositFeeBp;
        uint256 oldBalance = _vault.balanceOf(_msgSender());
        uint256 oldTotalSupply = _vault.totalSupply();
        uint256 shares = _vault.previewDeposit(assets);

        if (shares < minShares) revert Errors.InsufficinentBalance();

        IERC20Mintable(_vault.asset()).transferFrom(_msgSender(), address(this), assets);
        IERC20Mintable(_vault.asset()).transferFrom(_msgSender(), _treasury, depositFeeBp);

        uint256 twaStart = _epochStartedAt > _lastDepositAt ? _epochStartedAt : _lastDepositAt;

        if (shares > 0) {
            _twaTotalSupply.currentEpoch += (block.number - twaStart) * oldTotalSupply;
        }

        if (assets > 0) {
            IERC20Mintable(_vault.asset()).approve(address(_vault), assets);
            _vault.deposit(assets, minShares, _msgSender());
        }

        _totalDeposits.currentEpoch += assets;
        LiquidityProviderParams storage lpParams = _lpParams[_msgSender()];

        bool firstDepositInEpoch = _epochStartedAt > lpParams.latestDepositBlockNumber;
        twaStart = firstDepositInEpoch ? _epochStartedAt : lpParams.latestDepositBlockNumber;

        if (firstDepositInEpoch) {
            uint256 epochNumber = _epoch > 0 ? _epoch - 1 : 0;

            if (
                lpParams.latestDepositBlockNumber > 0 && epochNumber > 1
                    && _epochFinalized[_msgSender()][epochNumber] == 0
            ) {
                if (lpParams.latestDepositBlockNumber < _previousEpochStartedAt) {
                    lpParams.twtShares.previousEpoch = (twaStart - _previousEpochStartedAt) * oldBalance;
                } else {
                    lpParams.twtShares.previousEpoch += (twaStart - lpParams.latestDepositBlockNumber) * oldBalance;
                }

                lpParams.totalSharesInPreviousEpoch = oldBalance;
                lpParams.swaPrice.previousEpoch = lpParams.swaPrice.currentEpoch;
                _epochFinalized[_msgSender()][epochNumber] = 1;
            }

            lpParams.twtShares.currentEpoch = (block.number - twaStart) * oldBalance;
            lpParams.swaPrice.currentEpoch = _vault.previewRedeemParametrized(
                oldBalance, _totalSupplySnapshot, _totalSupplySnapshot
            ) + _vault.previewRedeem(shares);
        } else {
            lpParams.twtShares.currentEpoch += (block.number - twaStart) * oldBalance;
            lpParams.swaPrice.currentEpoch += _vault.previewRedeem(shares);
        }

        if (shares > 0) {
            _lastDepositAt = block.number;
            lpParams.latestDepositBlockNumber = block.number;
        }
    }

    /// @notice make an LP token redeem request
    /// @notice this function is permissionless but there is no incentive to call it unless you're an LP token holder
    /// @notice enforces the `_redeemLimit`
    /// @notice redeem requests can be only executed in the epoch following the epoch the requests were place in, otherwise the requested amount is rolled over and trackers are reset
    /// @param shares requested redeem amount
    function requestRedeem(uint256 shares) external {
        uint256 epoch = _epoch + 1;
        LiquidityProviderParams storage lpParams = _lpParams[_msgSender()];
        lpParams.twtShares.previousEpoch = lpParams.twtShares.currentEpoch;

        _totalRedeemRequests -= _redeemRequests[_msgSender()][epoch];

        if (shares > 0 && shares > _vault.maxRedeem(_msgSender())) {
            revert Errors.ExcessiveAmountRequested();
        }

        _redeemRequests[_msgSender()][epoch] = shares;
        _totalRedeemRequests += shares;
    }

    /// @notice redeem the requested amount
    /// @notice this function is permissionless but there is no incentive to call it unless you're an LP token holder
    /// @notice only the requests placed in the previous epoch can be redeemed
    /// @param receiver beneficiary
    /// @return assets amount of assets received
    function redeem(address receiver) public returns (uint256 assets) {
        uint256 shares = _redeemRequests[_msgSender()][_epoch];
        uint256 epochNumber = _epoch == 0 ? 0 : _epoch - 1;
        uint256 balance = _vault.balanceOf(_msgSender());

        if (_epochFinalized[_msgSender()][epochNumber] == 0) {
            LiquidityProviderParams storage lpParams = _lpParams[_msgSender()];
            bool userDepositRolledOver = _previousEpochStartedAt > lpParams.latestDepositBlockNumber;

            uint256 twaStart = userDepositRolledOver ? _previousEpochStartedAt : lpParams.latestDepositBlockNumber;

            if (lpParams.latestDepositBlockNumber < _previousEpochStartedAt) {
                lpParams.twtShares.previousEpoch = (_epochStartedAt - twaStart) * balance;
            } else {
                lpParams.twtShares.previousEpoch += (_epochStartedAt - twaStart) * balance;
            }

            lpParams.totalSharesInPreviousEpoch = balance;
            lpParams.swaPrice.previousEpoch = lpParams.swaPrice.currentEpoch;
            _epochFinalized[_msgSender()][epochNumber] = 1;
        }

        assets = _vault.redeem(shares, receiver, _msgSender());

        delete _redeemRequests[_msgSender()][_epoch];

        if (_vault.balanceOf(_msgSender()) == 0) {
            delete  _lpParams[_msgSender()];
        }
    }

    /// @notice withdraw assets, access restricted to `BOT_ROLE`
    /// @param assets amount of assets to withdraw
    /// @param recipient beneficiary
    function botWithdraw(uint256 assets, address recipient) external onlyRole(Constants.BOT_ROLE) {
        if (!(IERC20Mintable(_vault.asset()).balanceOf(address(_vault)) - assets > _withdrawLimit)) {
            revert Errors.ExcessiveAmountRequested();
        }
        _vault.rawWithdraw(assets, recipient);
    }

    /// @notice update PnL, access restricted to `BOT_ROLE`
    /// @param assets amount to increase or decrease the PnL by
    /// @param isPositive sign of the `assets` amount, `+` if `isPositive` is `true`
    function botUpdatePnl(uint256 assets, bool isPositive) external onlyRole(Constants.BOT_ROLE) {
        if (isPositive) IERC20Mintable(_vault.mUSDC()).mint(address(_vault), assets);
        else IERC20Mintable(_vault.mUSDC()).burn(address(_vault), assets);
    }

    /// @notice close and epoch and start the new one, access restricted to `BOT_ROLE`
    /// @notice an epoch cannot be closed only when the bot deposits enough assets to cover all redeem requests placed in this epoch
    /// @param assets redeems requested in this epoch
    function botDepositAndStartEpoch(uint256 assets) external onlyRole(Constants.BOT_ROLE) {
        _withdrawLimit = _vault.previewRedeem(_totalRedeemRequests);
        _totalSupplySnapshot = _vault.totalSupply();

        if (assets < _withdrawLimit) revert Errors.InsufficinentAmount();

        _vault.rawDeposit(_msgSender(), address(_vault), assets);

        _totalAssetsSnapshot = _vault.totalAssets();

        ++_epoch;
        _previousEpochStartedAt = _epochStartedAt;
        _epochStartedAt = block.number;

        _totalDeposits.previousEpoch = _totalDeposits.currentEpoch;
        _totalDeposits.currentEpoch =
            _withdrawLimit > _totalDeposits.currentEpoch ? 0 : _totalDeposits.currentEpoch - _withdrawLimit;
        _twaTotalSupply.previousEpoch =
            _twaTotalSupply.currentEpoch + (_epochStartedAt - _lastDepositAt) * _twaTotalSupply.currentEpoch;
        _twaTotalSupply.currentEpoch = 0;
        _totalRedeemRequests = 0;
    }

    /// @notice get the address of the `_vault` contract
    /// @return address ofthe `_vault` contract
    function vault() external view returns (address) {
        return address(_vault);
    }

    /// @notice get user's time-weighted total shares in the current and previous epochs
    /// @param owner user address
    /// @return twtSharesInPreviousEpoch time-weighted total shares in the previous epoch
    /// @return twtSharesInCurrentEpoch time-weighted total shares in the current epoch
    function twtShares(address owner)
        public
        view
        returns (uint256 twtSharesInPreviousEpoch, uint256 twtSharesInCurrentEpoch)
    {
        LiquidityProviderParams storage lpParams = _lpParams[owner];
        twtSharesInPreviousEpoch = lpParams.twtShares.previousEpoch;
        twtSharesInCurrentEpoch = lpParams.twtShares.currentEpoch;
    }

    /// @notice get user's total shares in the previous epoch
    /// @param owner user address
    /// @return totalSharesInPreviousEpoch_ total shares in the previous epoch
    function totalSharesInPreviousEpoch(address owner) public view returns (uint256 totalSharesInPreviousEpoch_) {
        LiquidityProviderParams storage lpParams = _lpParams[owner];
        totalSharesInPreviousEpoch_ = lpParams.totalSharesInPreviousEpoch;
    }

    /// @notice get user's share-weighted average entry price in the current and previous epochs
    /// @param owner user address
    /// @return swaPriceInPreviousEpoch share-weighted average entry price in the previous epoch
    /// @return swaPriceInCurrentEpoch share-weighted average entry price in the current epoch
    function swaPrice(address owner)
        public
        view
        returns (uint256 swaPriceInPreviousEpoch, uint256 swaPriceInCurrentEpoch)
    {
        LiquidityProviderParams storage lpParams = _lpParams[owner];
        swaPriceInPreviousEpoch = lpParams.swaPrice.previousEpoch;
        swaPriceInCurrentEpoch = lpParams.swaPrice.currentEpoch;
    }

    /// @notice get the timestamp at which the user most recently made a deposit
    /// @param owner user address
    /// @return timestamp of the most recent deposit
    function latestDepositBlockNumber(address owner) public view returns (uint256) {
        LiquidityProviderParams storage lpParams = _lpParams[owner];

        return lpParams.latestDepositBlockNumber;
    }

    /// @notice set the address of the `_vault`, access restricted to `DEFAULT_ADMIN_ROLE`
    /// @param vaultAddress address of the new `_vault`
    function setVault(address vaultAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _vault = IVault(vaultAddress);
    }
}
