// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "../factories/interfaces/IVaultFactory.sol";
import "../interfaces/IPoolFlex.sol";
import "../interfaces/IBusinessDayRegistry.sol";
import "./interfaces/IWithdrawDepositControllerFlex.sol";
import "./interfaces/IPoolControllerFlex.sol";
import "../libraries/PoolLibFlex.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "../upgrades/BeaconImplementation.sol";

/**
 * @title A Pool's withdraw controller.
 * @dev Deployed as a beacon proxy contract.
 */

contract WithdrawDepositControllerFlex is
    IWithdrawDepositControllerFlex,
    BeaconImplementation
{
    using SafeMath for uint256;
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 public constant RAY = 10 ** 27;

    /**
     * @dev A reference to the pool for this withdraw state
     */
    IPoolFlex private _pool;

    IVault public _feeVault;

    IVault public _borrowerVault;
    address public _borrowerWalletAddr;

    mapping(uint256 => IDailyWithdrawTotals) private _dailyWithdrawTotals;
    IPoolLenderWithdrawEvent[] private _withdrawEvents;
    mapping(address => IPoolLenderTotals) private _lenderTotals;
    IPoolWithdrawTotal private _poolWithdrawTotals;

    IPoolLenderDepositEvent[] private _depositEvents;
    mapping(uint256 => IDailyDepositTotals) private _dailyDepositTotals;
    IPoolDepositsTotal private _poolDepositsTotals;
    uint256 private requestNumber;
    mapping(uint256 => bool) private eventIdIsDue;

    /**
     * @dev Modifier that checks that the caller is a pool lender
     */
    modifier onlyPool() {
        require(address(_pool) == msg.sender, "WithdrawController: Not Pool");
        _;
    }

    modifier onlyNotPaused() {
        require(
            !_pool.serviceConfiguration().paused(),
            "Pool: Protocol paused"
        );
        _;
    }

    function version() public pure returns (uint16) {
        return 256 * 1 + 1;
    }

    /**
     * @dev Initializer for a Pool's withdraw state
     */
    function initialize(
        address poolAddr_,
        address vaultFactory,
        address borrowerWalletAddr_
    ) public initializer {
        _pool = IPoolFlex(poolAddr_);

        _feeVault = IVault(
            IVaultFactory(vaultFactory).createVault(
                address(this),
                IVaultType.FeeVault
            )
        );

        _borrowerWalletAddr = borrowerWalletAddr_;

        _borrowerVault = IVault(
            IVaultFactory(vaultFactory).createVault(
                address(this),
                IVaultType.BorrowerVault
            )
        );
    }

    function lenderTotals(
        address lender
    ) external view returns (IPoolLenderTotals memory) {
        return _lenderTotals[lender];
    }

    function poolAddr() external view override returns (address) {
        return address(_pool);
    }

    // back compatible
    function pool() external view override returns (address) {
        return address(_pool);
    }

    function borrowerWalletAddr() external view override returns (address) {
        return address(_borrowerWalletAddr);
    }

    function borrowerWallet() external view override returns (address) {
        return address(_borrowerWalletAddr);
    }

    function feeVaultAddr() external view override returns (address) {
        return address(_feeVault);
    }

    function borrowerVaultAddr() external view override returns (address) {
        return address(_borrowerVault);
    }

    // back compatible
    function borrowerVault() external view override returns (address) {
        return address(_borrowerVault);
    }

    function drawDownToBorrowerWallet(
        uint256 amount
    ) external onlyPool onlyNotPaused {
        address liquidityAsset = _pool.liquidityAssetAddr();

        require(
            amount <= IERC20(liquidityAsset).balanceOf(address(_borrowerVault)),
            "Insufficient balance in vault"
        );

        _borrowerVault.withdrawERC20ToBorrowerWallet(liquidityAsset, amount);
    }

    function deposit(
        address lender,
        uint256 assets,
        uint256 exchangeRate,
        uint256 _dailyInterestRate
    )
        external
        onlyPool
        returns (
            uint256 inflows,
            uint256 shares,
            uint256 transferInDayTimestamp
        )
    {
        IBusinessDayRegistry businessRegisry = IBusinessDayRegistry(
            _pool.businessDayRegistry()
        );
        inflows = 0;
        uint8 numberOfDays;
        (numberOfDays, transferInDayTimestamp) = businessRegisry
            .businessDaysToCalendarDays(
                uint64(block.timestamp),
                _pool.closeOfDepositTime(),
                _pool.transferInDays()
            );

        uint256 projectedExchangeRate = exchangeRate;
        for (uint8 i = 0; i < numberOfDays; i++) {
            projectedExchangeRate = projectedExchangeRate
                .mul(_dailyInterestRate + 1e18)
                .div(1e18);
        }

        shares = assets.mul(1e18).div(projectedExchangeRate);
        if (numberOfDays != 0) {
            _depositEvents.push(
                IPoolLenderDepositEvent({
                    lender: lender,
                    mintedShares: shares,
                    depositedAssets: assets,
                    transferInDayTimestamp: transferInDayTimestamp
                })
            );
        }

        IPoolLenderTotals memory lenderTotals_ = _lenderTotals[lender];

        if (numberOfDays != 0) {
            lenderTotals_.sharesTransitioningIn =
                lenderTotals_.sharesTransitioningIn +
                shares;
            lenderTotals_.assetsTransitioningIn =
                lenderTotals_.assetsTransitioningIn +
                assets;
        }

        lenderTotals_.assetsDeposited = lenderTotals_.assetsDeposited + assets;

        _lenderTotals[lender] = lenderTotals_;

        if (numberOfDays != 0) {
            _poolDepositsTotals.mintedShares += shares;
            _poolDepositsTotals.depositedAssets += assets;
            IDailyDepositTotals memory dailyDepositTotal = _dailyDepositTotals[
                transferInDayTimestamp
            ];
            dailyDepositTotal.mintedShares += shares;
            dailyDepositTotal.depositedAssets += assets;
            dailyDepositTotal.transferInDayTimestamp = transferInDayTimestamp;

            _dailyDepositTotals[transferInDayTimestamp] = dailyDepositTotal;
        }

        if (numberOfDays == 0) {
            inflows = assets;
        }
    }

    function dailyInterestAccural(
        uint256 currentDay
    ) external override onlyPool returns (uint256 inflows) {
        IDailyDepositTotals memory _dailyDepositTotal = _dailyDepositTotals[
            currentDay
        ];

        IDailyWithdrawTotals memory _dailyWithdrawTotal = _dailyWithdrawTotals[
            currentDay
        ];

        if (_dailyWithdrawTotal.requestedAssets > 0) {
            for (uint i = _withdrawEvents.length; i >= 1; i--) {
                uint index = i - 1;
                IPoolLenderWithdrawEvent storage ev = _withdrawEvents[index];

                if (
                    eventIdIsDue[ev.eventId] == false &&
                    ev.transferOutDayTimestamp == currentDay
                ) {
                    eventIdIsDue[ev.eventId] = true;
                    _lenderTotals[ev.lender].sharesDueForWithdraws += ev
                        .requestedShares;
                    _lenderTotals[ev.lender].assetsDueForWithdraws += ev
                        .requestedAssets;
                }
            }
        }

        if (_dailyDepositTotal.depositedAssets > 0) {
            _poolDepositsTotals.mintedShares -= _dailyDepositTotal.mintedShares;
            _poolDepositsTotals.depositedAssets -= _dailyDepositTotal
                .depositedAssets;

            for (uint i = _depositEvents.length; i >= 1; i--) {
                uint index = i - 1;
                IPoolLenderDepositEvent memory ev = _depositEvents[index];

                if (ev.transferInDayTimestamp == currentDay) {
                    uint256 shareAtCurrentExchangeRate = PoolLibFlex.roundDiv(
                        ev.depositedAssets * 1e18,
                        _pool.exchangeRate()
                    );
                    if (ev.mintedShares < shareAtCurrentExchangeRate) {
                        _pool.topOffSharesDueToExchangeRateDecrease(
                            ev.lender,
                            shareAtCurrentExchangeRate - ev.mintedShares
                        );
                    }

                    _lenderTotals[ev.lender].sharesTransitioningIn -= ev
                        .mintedShares;
                    _lenderTotals[ev.lender].assetsTransitioningIn -= ev
                        .depositedAssets;

                    for (uint j = index; j < _depositEvents.length - 1; j++) {
                        _depositEvents[j] = _depositEvents[j + 1];
                    }
                    _depositEvents.pop();
                }
            }

            return _dailyDepositTotal.depositedAssets;
        }

        return 0;
    }

    /*//////////////////////////////////////////////////////////////
                            Balance Views
    //////////////////////////////////////////////////////////////*/

    /**
     * @inheritdoc IWithdrawDepositControllerFlex
     */
    function requestedSharesOf(
        address owner
    ) external view returns (uint256 shares) {
        shares = _lenderTotals[owner].requestedShares;
    }

    function requestedAssetsOf(
        address owner
    ) external view returns (uint256 assets) {
        assets = _lenderTotals[owner].requestedAssets;
    }

    /**
     * @inheritdoc IWithdrawDepositControllerFlex
     */
    function totalRequestedShares() external view returns (uint256 shares) {
        shares = _poolWithdrawTotals.requestedShares;
    }

    function totalRequestedAssets() external view returns (uint256 assets) {
        assets = _poolWithdrawTotals.requestedAssets;
    }

    function totalAssetsTransitioningIn()
        external
        view
        returns (uint256 assets)
    {
        assets = _poolDepositsTotals.depositedAssets;
    }

    function totalSharesTransitioningIn()
        external
        view
        returns (uint256 shares)
    {
        shares = _poolDepositsTotals.mintedShares;
    }

    /*//////////////////////////////////////////////////////////////
                            Max Methods
    //////////////////////////////////////////////////////////////*/

    /**
     * @inheritdoc IWithdrawDepositControllerFlex
     */
    function maxRedeemRequest(
        address lender
    ) external view returns (uint256 maxShares) {
        maxShares =
            _pool.balanceOf(lender) -
            _lenderTotals[lender].requestedShares -
            _lenderTotals[lender].sharesTransitioningIn;
    }

    /*//////////////////////////////////////////////////////////////
                            Request Methods
    //////////////////////////////////////////////////////////////*/
    function generateWithdrawEventId() internal returns (uint256) {
        requestNumber = requestNumber + 1;

        return
            uint256(
                keccak256(
                    abi.encodePacked(block.timestamp, msg.sender, requestNumber)
                )
            );
    }

    function performRequest(
        address lender,
        uint256 shares,
        uint256 assets
    ) external onlyPool {
        require(
            this.maxRedeemRequest(lender) >= shares,
            "Pool: InsufficientBalance"
        );
        require(shares > 0, "Pool: Zero Shares");
        IBusinessDayRegistry businessRegisry = IBusinessDayRegistry(
            _pool.businessDayRegistry()
        );
        (uint8 numberOfDays, uint256 transferOutDayTimestamp) = businessRegisry
            .businessDaysToCalendarDays(
                uint64(block.timestamp),
                _pool.closeOfWithdrawTime(),
                _pool.transferOutDays()
            );

        IPoolLenderTotals memory _lenderTotal = _lenderTotals[lender];

        _lenderTotal.requestedShares = _lenderTotal.requestedShares + shares;
        _poolWithdrawTotals.requestedShares =
            _poolWithdrawTotals.requestedShares +
            shares;

        _lenderTotal.requestedAssets = _lenderTotal.requestedAssets + assets;
        _poolWithdrawTotals.requestedAssets =
            _poolWithdrawTotals.requestedAssets +
            assets;
        uint256 eventId = generateWithdrawEventId();
        if (numberOfDays == 0) {
            _lenderTotal.sharesDueForWithdraws += shares;
            _lenderTotal.assetsDueForWithdraws += assets;

            eventIdIsDue[eventId] = true;
        }
        _lenderTotals[lender] = _lenderTotal;

        _withdrawEvents.push(
            IPoolLenderWithdrawEvent({
                lender: lender,
                requestedShares: shares,
                requestedAssets: assets,
                transferOutDayTimestamp: transferOutDayTimestamp,
                requestTimestamp: uint64(block.timestamp),
                eventId: eventId
            })
        );

        IDailyWithdrawTotals memory dailyWithdrawTotal = _dailyWithdrawTotals[
            transferOutDayTimestamp
        ];

        dailyWithdrawTotal.requestedShares =
            dailyWithdrawTotal.requestedShares +
            shares;

        dailyWithdrawTotal.requestedAssets =
            dailyWithdrawTotal.requestedAssets +
            assets;
        dailyWithdrawTotal.transferOutDayTimestamp = transferOutDayTimestamp;
        _dailyWithdrawTotals[transferOutDayTimestamp] = dailyWithdrawTotal;
    }

    /*//////////////////////////////////////////////////////////////
                            Withdraw / Redeem
    //////////////////////////////////////////////////////////////*/

    function min(uint256 a, uint256 b) private pure returns (uint256) {
        return a <= b ? a : b;
    }

    function totalAssetsDueForWithdraws() public view returns (uint256 assets) {
        assets = 0;
        for (uint i = 0; i < _withdrawEvents.length; i++) {
            IPoolLenderWithdrawEvent memory ev = _withdrawEvents[i];

            if (ev.transferOutDayTimestamp <= block.timestamp) {
                assets += ev.requestedAssets;
            }
        }
    }

    function findEventAndRemove(
        uint256 eventId
    ) internal returns (IPoolLenderWithdrawEvent memory ev) {
        bool isFound = false;

        for (uint i = 0; i < _withdrawEvents.length; i++) {
            if (_withdrawEvents[i].eventId == eventId) {
                ev = _withdrawEvents[i];
                isFound = true;
            }
            if (isFound && i < _withdrawEvents.length - 1) {
                _withdrawEvents[i] = _withdrawEvents[i + 1];
            }
        }
        if (isFound) {
            delete eventIdIsDue[eventId];
            _withdrawEvents.pop();
            return ev;
        } else {
            revert("Element not found");
        }
    }

    function withdrawEvents()
        public
        view
        returns (IPoolLenderWithdrawEvent[] memory)
    {
        return _withdrawEvents;
    }

    function releaseWithdrawal(
        uint256 eventId
    ) public onlyPool returns (IPoolLenderWithdrawEvent memory ev) {
        bool eventIsDueForId = eventIdIsDue[eventId];
        ev = findEventAndRemove(eventId);

        _dailyWithdrawTotals[ev.transferOutDayTimestamp].requestedAssets -= ev
            .requestedAssets;
        _dailyWithdrawTotals[ev.transferOutDayTimestamp].requestedShares -= ev
            .requestedShares;

        _poolWithdrawTotals.requestedAssets -= ev.requestedAssets;

        _poolWithdrawTotals.requestedShares -= ev.requestedShares;

        _lenderTotals[ev.lender].requestedAssets -= ev.requestedAssets;

        _lenderTotals[ev.lender].requestedShares -= ev.requestedShares;
        _lenderTotals[ev.lender].assetsWithdrawn += ev.requestedAssets;

        if (eventIsDueForId) {
            _lenderTotals[ev.lender].sharesDueForWithdraws -= ev
                .requestedShares;
            _lenderTotals[ev.lender].assetsDueForWithdraws -= ev
                .requestedAssets;
        }
    }

    function repayLoans(uint256 assetsToReturnToPool) public onlyPool {
        _borrowerVault.repayLoan(
            _pool.liquidityAssetAddr(),
            assetsToReturnToPool
        );
    }

    function tokenTransfer(
        address from,
        address to,
        uint256 assetAmount
    ) public onlyPool {
        _lenderTotals[from].assetsWithdrawn += assetAmount;
        _lenderTotals[to].assetsDeposited += assetAmount;
    }
}
