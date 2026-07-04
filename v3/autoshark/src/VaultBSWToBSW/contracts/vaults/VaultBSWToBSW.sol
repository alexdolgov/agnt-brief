// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";
import "@openzeppelin/contracts/math/Math.sol";

import "../interfaces/IStrategy.sol";
import "../interfaces/IMasterChef.sol";
import "../interfaces/IJawsMinter.sol";
import "./VaultController.sol";
import {PoolConstant} from "../library/PoolConstant.sol";
import "./JawsVaultReferral.sol";
import "./SimpleVaultZap.sol";
import "hardhat/console.sol";

contract VaultBSWToBSW is VaultController, IStrategy, JawsVaultReferral, SimpleVaultZap {
    using SafeBEP20 for IBEP20;
    using SafeMath for uint256;

    /* ========== CONSTANTS ============= */

    address private constant JAWS_BNB = 0x0CC7984B1D6cb4c709A84e012c6d9CD4886e143d;
    IBEP20 private constant BSW =
        IBEP20(0x965F527D9159dCe6288a2219DB51fc6Eef120dD1);
    IMasterChef private constant BSW_MASTER_CHEF =
        IMasterChef(0xDbc1A13490deeF9c3C12b44FE77b503c1B061739);

    uint256 public constant override pid = 0;
    PoolConstant.PoolTypes public constant override poolType =
        PoolConstant.PoolTypes.pantherStake;

    uint256 private constant DUST = 1000;

    /* ========== STATE VARIABLES ========== */

    uint256 public totalShares;
    mapping(address => uint256) private _shares;
    mapping(address => uint256) private _principal;
    mapping(address => uint256) private _depositedAt;

    /* ========== INITIALIZER ========== */

    function initialize() external initializer {
        __VaultController_init(BSW);
        BSW.safeApprove(address(BSW_MASTER_CHEF), uint256(~0));

        setMinter(0x342afF01fe4781FC15eE6977C20cC55Ad8da3121);
    }

    /* ========== VIEW FUNCTIONS ========== */

    function totalSupply() external view override returns (uint256) {
        return totalShares;
    }

    function balance() public view override returns (uint256 amount) {
        (amount, ) = BSW_MASTER_CHEF.userInfo(pid, address(this));
    }

    function balanceOf(address account) public view override returns (uint256) {
        if (totalShares == 0) return 0;
        return balance().mul(sharesOf(account)).div(totalShares);
    }

    function withdrawableBalanceOf(address account)
        public
        view
        override
        returns (uint256)
    {
        return balanceOf(account);
    }

    function sharesOf(address account) public view override returns (uint256) {
        return _shares[account];
    }

    function principalOf(address account)
        public
        view
        override
        returns (uint256)
    {
        return _principal[account];
    }

    function earned(address account) public view override returns (uint256) {
        if (balanceOf(account) >= principalOf(account) + DUST) {
            return balanceOf(account).sub(principalOf(account));
        } else {
            return 0;
        }
    }

    function priceShare() external view override returns (uint256) {
        if (totalShares == 0) return 1e18;
        return balance().mul(1e18).div(totalShares);
    }

    function depositedAt(address account)
        external
        view
        override
        returns (uint256)
    {
        return _depositedAt[account];
    }

    function rewardsToken() external view override returns (address) {
        return address(_stakingToken);
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function deposit(uint256 _amount, address _referrer) public override {
        _deposit(_amount, msg.sender, _referrer);

        if (isWhitelist(msg.sender) == false) {
            _principal[msg.sender] = _principal[msg.sender].add(_amount);
            _depositedAt[msg.sender] = block.timestamp;
        }
    }

    function depositAll(address _referrer) external override {
        deposit(BSW.balanceOf(msg.sender), _referrer);
    }

    function withdrawAll() external override {
        uint256 amount = balanceOf(msg.sender);
        uint256 principal = principalOf(msg.sender);
        uint256 depositTimestamp = _depositedAt[msg.sender];

        totalShares = totalShares.sub(_shares[msg.sender]);
        delete _shares[msg.sender];
        delete _principal[msg.sender];
        delete _depositedAt[msg.sender];

        uint256 correctedAmount = _withdrawTokenWithCorrection(amount);

        uint256 profit = correctedAmount > principal ? correctedAmount.sub(principal) : 0;
        uint256 withdrawalFee =
            canMint() ? _minter.withdrawalFee(principal, depositTimestamp) : 0;
        uint256 performanceFee = canMint() ? _minter.performanceFee(profit) : 0;

        if (withdrawalFee.add(performanceFee) > DUST) {
            uint jawsBNBAmount = zapToFlip(address(BSW), withdrawalFee.add(performanceFee), JAWS_BNB);
            __approveTokenIfNeeded(JAWS_BNB);
            uint mintedShark = _minter.mintForWithBoost(JAWS_BNB, 0, jawsBNBAmount, msg.sender, depositTimestamp, 200);
            payReferralCommission(msg.sender, mintedShark);

            if (performanceFee > 0) {
                emit ProfitPaid(msg.sender, profit, performanceFee);
            }
            correctedAmount = correctedAmount.sub(withdrawalFee).sub(performanceFee);
        }

        BSW.safeTransfer(msg.sender, correctedAmount);
        emit Withdrawn(msg.sender, correctedAmount, withdrawalFee);

        _harvest();
    }

    function harvest() external override {
        uint256 cakeHarvested = _withdrawStakingToken(0);
        _harvest(cakeHarvested);
    }

    function withdraw(uint256 shares) external override onlyWhitelisted {
        uint256 amount = balance().mul(shares).div(totalShares);
        totalShares = totalShares.sub(shares);
        _shares[msg.sender] = _shares[msg.sender].sub(shares);

        uint256 cakeHarvested = _withdrawStakingToken(amount);
        BSW.safeTransfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount, 0);

        _harvest(cakeHarvested);
    }

    // @dev underlying only + withdrawal fee + no perf fee
    function withdrawUnderlying(uint256 _amount) external {
        uint256 amount = Math.min(_amount, _principal[msg.sender]);
        uint256 shares =
            Math.min(
                amount.mul(totalShares).div(balance()),
                _shares[msg.sender]
            );
        totalShares = totalShares.sub(shares);
        _shares[msg.sender] = _shares[msg.sender].sub(shares);
        _principal[msg.sender] = _principal[msg.sender].sub(amount);

        uint correctedAmount = _withdrawTokenWithCorrection(amount);
        uint256 depositTimestamp = _depositedAt[msg.sender];
        uint256 withdrawalFee =
            canMint() ? _minter.withdrawalFee(correctedAmount, depositTimestamp) : 0;
        if (withdrawalFee > DUST) {
            uint jawsBNBAmount = zapToFlip(address(BSW), withdrawalFee, JAWS_BNB);
            __approveTokenIfNeeded(JAWS_BNB);
            uint mintedShark = _minter.mintForWithBoost(JAWS_BNB, jawsBNBAmount, 0, msg.sender, depositTimestamp, 200);
            payReferralCommission(msg.sender, mintedShark);

            correctedAmount = correctedAmount.sub(withdrawalFee);
        }

        BSW.safeTransfer(msg.sender, correctedAmount);
        emit Withdrawn(msg.sender, correctedAmount, withdrawalFee);

        _harvest();
    }

    function getReward() external override {
        uint256 amount = earned(msg.sender);
        uint256 shares =
            Math.min(
                amount.mul(totalShares).div(balance()),
                _shares[msg.sender]
            );
        totalShares = totalShares.sub(shares);
        _shares[msg.sender] = _shares[msg.sender].sub(shares);
        _cleanupIfDustShares();

        uint256 correctedAmount = _withdrawTokenWithCorrection(amount);
        uint256 depositTimestamp = _depositedAt[msg.sender];
        uint256 performanceFee = canMint() ? _minter.performanceFee(correctedAmount) : 0;
        if (performanceFee > DUST) {
            uint jawsBNBAmount = zapToFlip(address(BSW), performanceFee, JAWS_BNB);
            __approveTokenIfNeeded(JAWS_BNB);
            uint mintedShark = _minter.mintForWithBoost(JAWS_BNB, 0, jawsBNBAmount, msg.sender, depositTimestamp, 200);
            payReferralCommission(msg.sender, mintedShark);

            amount = correctedAmount.sub(performanceFee);
        }

        BSW.safeTransfer(msg.sender, amount);
        emit ProfitPaid(msg.sender, amount, performanceFee);

        _harvest();
    }

    /* ========== PRIVATE FUNCTIONS ========== */

    function _depositStakingToken(uint256 amount)
        private
        returns (uint256 cakeHarvested)
    {
        uint256 before = BSW.balanceOf(address(this));
        BSW_MASTER_CHEF.enterStaking(amount);
        cakeHarvested = BSW.balanceOf(address(this)).add(amount).sub(before);
    }

    function _withdrawStakingToken(uint256 amount)
        private
        returns (uint256 cakeHarvested)
    {
        uint256 before = BSW.balanceOf(address(this));
        BSW_MASTER_CHEF.leaveStaking(amount);
        cakeHarvested = BSW.balanceOf(address(this)).sub(amount).sub(before);
    }

    function _withdrawTokenWithCorrection(uint amount) private returns(uint) {
        uint bswBalance = BSW.balanceOf(address(this));
        if (bswBalance < amount) {
            BSW_MASTER_CHEF.leaveStaking(amount.sub(bswBalance));
        }
        // Returns vault+withdrawn OR returns amount user wants to take out
        return Math.min(BSW.balanceOf(address(this)).sub(bswBalance), amount);
    }

    function _harvest(uint cakeAmount) private {
        if (cakeAmount > 0) {
            emit Harvested(cakeAmount);
            BSW_MASTER_CHEF.enterStaking(cakeAmount);
        }
    }

    function _harvest() private {
        uint cakeAmount = BSW.balanceOf(address(this));
        if (cakeAmount > 0) {
            emit Harvested(cakeAmount);
            BSW_MASTER_CHEF.enterStaking(cakeAmount);
        }
    }

    function _deposit(uint256 _amount, address _to, address _referrer) private notPaused {
        uint256 _pool = balance();
        BSW.safeTransferFrom(msg.sender, address(this), _amount);
        uint256 shares = 0;
        if (totalShares == 0) {
            shares = _amount;
        } else {
            shares = (_amount.mul(totalShares)).div(_pool);
        }

        if (shares > 0 && address(jawsReferral) != address(0) && _referrer != address(0) && _referrer != msg.sender) {
            jawsReferral.recordReferral(msg.sender, _referrer);
        }

        totalShares = totalShares.add(shares);
        _shares[_to] = _shares[_to].add(shares);

        uint256 cakeHarvested = _depositStakingToken(_amount);
        emit Deposited(msg.sender, _amount);

        _harvest(cakeHarvested);
    }

    function _cleanupIfDustShares() private {
        uint256 shares = _shares[msg.sender];
        if (shares > 0 && shares < DUST) {
            totalShares = totalShares.sub(shares);
            delete _shares[msg.sender];
        }
    }

    // Pay referral commission to the referrer who referred this user, based on profit
    function payReferralCommission(address _user, uint256 _pending) internal {
        if (address(jawsReferral) != address(0) && referralCommissionRate > 0) {
            address referrer = jawsReferral.getReferrer(_user);
            uint256 commissionAmount = _pending.mul(referralCommissionRate).div(10000);

            if (referrer != address(0) && commissionAmount > 0) {
                _minter.mintV1(commissionAmount, _user);
                _minter.mintV1(commissionAmount, referrer);
                
                jawsReferral.recordReferralCommission(referrer, commissionAmount);
                jawsReferral.recordReferralCommission(_user, commissionAmount);
                emit ReferralCommissionPaid(_user, referrer, commissionAmount);
                emit ReferralCommissionPaid(referrer, _user, commissionAmount);
            }
        }
    }

    function __approveTokenIfNeeded(address token) internal {
        if (IBEP20(token).allowance(address(this), address(_minter)) == 0) {
            IBEP20(token).safeApprove(address(_minter), uint(~0));
        }
    }

    /* ========== SALVAGE PURPOSE ONLY ========== */

    // @dev _stakingToken(BSW) must not remain balance in this contract. So dev should be able to salvage staking token transferred by mistake.
    function recoverToken(address _token, uint256 amount)
        external
        virtual
        override
        onlyOwner
    {
        IBEP20(_token).safeTransfer(owner(), amount);

        emit Recovered(_token, amount);
    }
}
