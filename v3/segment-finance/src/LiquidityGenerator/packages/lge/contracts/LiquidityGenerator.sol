//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import './interfaces/IERC20.sol';
import './interfaces/IOwnedDistributor.sol';


import { IThenaVoterV3 } from './thena/IThenaVoterV3.sol';
import { IThenaGaugeV2 } from './thena/IThenaGaugeV2.sol';
import { IThenaRouterV2 } from './thena/IThenaRouterV2.sol';
import { IThenaPairFactory } from './thena/IThenaPairFactory.sol';

import './libraries/SafeMath.sol';
import './libraries/SafeToken.sol';

import 'hardhat/console.sol';

contract LiquidityGenerator {
    using SafeMath for uint256;
    using SafeToken for address;

    struct ConstuctorParams {
        address admin_;
        address sef_;
        address usd_;
        address the_;
        address router0_;
        address voter_;
        address reservesManager_;
        address distributor_;
        address bonusDistributor_;
        uint256 periodBegin_;
        uint256 periodDuration_;
        uint256 bonusDuration_;
    }

    uint256 public constant lockDuration = 6 * 30 days; //6 * 30 * 24 * 60 * 60; // 6 months

    address public immutable admin;
    address public immutable sef;
    address public immutable usd;
    uint256 public immutable usdDecimals;
    address public immutable the;
    address public immutable router0;
    address public immutable voter;
    address public immutable distributor;
    address public immutable bonusDistributor;
    uint256 public immutable periodBegin;
    uint256 public immutable periodEnd;
    uint256 public immutable bonusEnd;
    uint256 public unlockTimestamp;
    bool public finalized = false;
    bool public delivered = false;
    address public reservesManager;

    // Generated Thena addresses
    address public immutable pair0;
    address public gauge;

    event Finalized(uint256 amountSEF, uint256 amountUSD);
    event Deposit(
        address indexed sender,
        uint256 amount,
        uint256 distributorTotalShares,
        uint256 bonusDistributorTotalShares,
        uint256 newShares,
        uint256 newBonusShares
    );
    event PostponeUnlockTimestamp(
        uint256 prevUnlockTimestamp,
        uint256 unlockTimestamp
    );
    event Delivered(uint256 amountPair0);
    event ThenaRewardClaimed(uint256 amountThena);

    constructor(ConstuctorParams memory params_) {
        require(
            params_.periodDuration_ > 0,
            'LiquidityGenerator: INVALID_PERIOD_DURATION'
        );
        require(
            params_.bonusDuration_ > 0 &&
                params_.bonusDuration_ <= params_.periodDuration_,
            'LiquidityGenerator: INVALID_BONUS_DURATION'
        );
        admin = params_.admin_;
        sef = params_.sef_;
        usd = params_.usd_;
        usdDecimals = IERC20(params_.usd_).decimals();
        the = params_.the_;
        router0 = params_.router0_;
        voter = params_.voter_;
        reservesManager = params_.reservesManager_;
        distributor = params_.distributor_;
        bonusDistributor = params_.bonusDistributor_;
        periodBegin = params_.periodBegin_;
        periodEnd = params_.periodBegin_.add(params_.periodDuration_);
        bonusEnd = params_.periodBegin_.add(params_.bonusDuration_);

        address _pair0 = _createPair(
            params_.router0_,
            params_.sef_,
            params_.usd_
        );

        pair0 = _pair0;
    }

    function distributorTotalShares()
        public
        view
        returns (uint256 totalShares)
    {
        return IOwnedDistributor(distributor).totalShares();
    }

    function bonusDistributorTotalShares()
        public
        view
        returns (uint256 totalShares)
    {
        return IOwnedDistributor(bonusDistributor).totalShares();
    }

    function distributorRecipients(address account)
        public
        view
        returns (
            uint256 shares,
            uint256 lastShareIndex,
            uint256 credit
        )
    {
        return IOwnedDistributor(distributor).recipients(account);
    }

    function bonusDistributorRecipients(address account)
        public
        view
        returns (
            uint256 shares,
            uint256 lastShareIndex,
            uint256 credit
        )
    {
        return IOwnedDistributor(bonusDistributor).recipients(account);
    }

    function setReserveManager(address reserveManager_) external {
        require(msg.sender == admin, 'LiquidityGenerator: FORBIDDEN');
        require(
            reserveManager_ != address(0),
            'LiquidityGenerator: INVALID_ADDRESS'
        );
        reservesManager = reserveManager_;
    }

    function postponeUnlockTimestamp(uint256 newUnlockTimestamp) public {
        require(msg.sender == admin, 'LiquidityGenerator: UNAUTHORIZED');
        require(
            newUnlockTimestamp > unlockTimestamp,
            'LiquidityGenerator: INVALID_UNLOCK_TIMESTAMP'
        );
        uint256 prevUnlockTimestamp = unlockTimestamp;
        unlockTimestamp = newUnlockTimestamp;
        emit PostponeUnlockTimestamp(prevUnlockTimestamp, unlockTimestamp);
    }

    function deliverLiquidityToReservesManager() public {
        require(msg.sender == admin, 'LiquidityGenerator: UNAUTHORIZED');
        require(!delivered, 'LiquidityGenerator: ALREADY_DELIVERED');
        require(finalized, 'LiquidityGenerator: NOT_FINALIZED');
        uint256 blockTimestamp = getBlockTimestamp();
        require(
            blockTimestamp >= unlockTimestamp,
            'LiquidityGenerator: STILL_LOCKED'
        );
        IThenaGaugeV2(gauge).withdrawAll();
        uint256 _amountPair0 = pair0.myBalance();
        pair0.safeTransfer(reservesManager, _amountPair0);
        delivered = true;
        emit Delivered(_amountPair0);
    }

    function claimThenaRewards() public {
        require(msg.sender == admin, 'LiquidityGenerator: UNAUTHORIZED');
        require(finalized, 'LiquidityGenerator: NOT_FINALIZED');

        IThenaGaugeV2(gauge).getReward(address(this));

        uint256 _amountThena = the.myBalance();
        the.safeTransfer(reservesManager, _amountThena);
        emit ThenaRewardClaimed(_amountThena);
    }

    function finalize() public {
        require(!finalized, 'LiquidityGenerator: FINALIZED');
        uint256 blockTimestamp = getBlockTimestamp();
        require(blockTimestamp >= periodEnd, 'LiquidityGenerator: TOO_SOON');

        uint256 _amountSEF = sef.myBalance();
        uint256 _amountUSD = usd.myBalance();

        sef.safeApprove(router0, _amountSEF);
        usd.safeApprove(router0, _amountUSD);
        IThenaRouterV2(router0).addLiquidity(
            sef,
            usd,
            false,
            _amountSEF,
            _amountUSD,
            _amountSEF,
            _amountUSD,
            address(this),
            blockTimestamp
        );

        unlockTimestamp = blockTimestamp.add(lockDuration);
        finalized = true;
        emit Finalized(_amountSEF, _amountUSD);
    }

    function finalizeGauge() external {
        require(finalized, 'Lge: NOT_FINALIZED');

        uint256 amountPair0 = pair0.myBalance();

        gauge = _ensureGauge(voter, pair0);
        pair0.safeApprove(gauge, amountPair0);
        IThenaGaugeV2(gauge).deposit(amountPair0);
    }

    function deposit(uint256 amountUSD) external payable {
        uint256 blockTimestamp = getBlockTimestamp();
        require(blockTimestamp >= periodBegin, 'LiquidityGenerator: TOO_SOON');
        require(blockTimestamp < periodEnd, 'LiquidityGenerator: TOO_LATE');
        require(amountUSD >= 10 * 10 ** usdDecimals, 'LiquidityGenerator: INVALID_VALUE'); // minimum 10 USD

        // Pull usd to this contract
        usd.safeTransferFrom(msg.sender, address(this), amountUSD);

        (uint256 _prevSharesBonus, , ) = IOwnedDistributor(bonusDistributor)
            .recipients(msg.sender);
        uint256 _newSharesBonus = _prevSharesBonus;
        if (blockTimestamp < bonusEnd) {
            _newSharesBonus = _prevSharesBonus.add(amountUSD);
            IOwnedDistributor(bonusDistributor).editRecipient(
                msg.sender,
                _newSharesBonus
            );
        }
        (uint256 _prevShares, , ) = IOwnedDistributor(distributor).recipients(
            msg.sender
        );
        uint256 _newShares = _prevShares.add(amountUSD);
        IOwnedDistributor(distributor).editRecipient(msg.sender, _newShares);
        emit Deposit(
            msg.sender,
            amountUSD,
            distributorTotalShares(),
            bonusDistributorTotalShares(),
            _newShares,
            _newSharesBonus
        );
    }

    receive() external payable {
        revert('LiquidityGenerator: BAD_CALL');
    }

    function getBlockTimestamp() public view virtual returns (uint256) {
        return block.timestamp;
    }

    function _createPair(
        address router_,
        address sef_,
        address usd_
    ) internal returns (address) {
        address _thePairFactory = IThenaRouterV2(router_).factory();

        address _pair = IThenaPairFactory(_thePairFactory).getPair(
            sef_,
            usd_,
            false
        );
        if (_pair != address(0)) {
            return _pair;
        }
        _pair = IThenaPairFactory(_thePairFactory).createPair(
            sef,
            usd,
            false
        );
        return _pair;
    }

    function _ensureGauge(address voter_, address pair0_)
        internal
        returns (address)
    {
        address _gauge = IThenaVoterV3(voter_).gauges(pair0_);
        if (_gauge != address(0)) return _gauge;

        (_gauge, ,) = IThenaVoterV3(voter_).createGauge(pair0_, 0);

        return _gauge;
    }
}
