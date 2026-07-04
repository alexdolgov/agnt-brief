// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import './SafeBEP20.sol';
import './IBEP20.sol';
import './SafeMath.sol';
import './Address.sol';
import './Ownable.sol';
import './HowlsCastle.sol';
import './ReentrancyGuard.sol';

contract CalcifireVault is Ownable, ReentrancyGuard {
    using SafeBEP20 for IBEP20;
    using SafeMath for uint256;
    using Address for address;

    struct UserInfo {
        uint256 shares; // number of shares for a user
        uint256 lastDepositedTime; // keeps track of deposited time for potential penalty
        uint256 calcifireAtLastUserAction; // keeps track of Calcifire deposited at the last user action
        uint256 lastUserActionTime; // keeps track of the last user action time
        uint256 noFeesRewardsTime; // timestamp that user can claim rewards with no fees
    }

    // The CALCIFIRE TOKEN
    IBEP20 public constant CALCIFIRE = IBEP20(0x6b65266bD93E5A79B733d377a846d440304a5A08);
    HowlsCastle public immutable masterchef;

    mapping(address => UserInfo) public userInfo;

    uint256 public totalShares;
    uint256 public lastHarvestedTime;
    address public feeAddress;

    uint256 public withdrawFee = 0;
    uint256 public constant MAX_WITHDRAW_FEE = 1000; // 10%
    uint256 public withdrawFeePeriod = 120 hours; // 5 days
    uint256 public constant MAX_WITHDRAW_FEE_PERIOD = 240 hours; // 10 days

    event Deposit(address indexed sender, uint256 amount, uint256 shares, uint256 lastDepositedTime);
    event Withdraw(address indexed sender, uint256 amount, uint256 shares);
    event Harvest(address indexed sender);
    event SetFeeAddress(address feeAddress);
    event SetWithdrawFee(uint256 withdrawFee);
    event SetWithdrawFeePeriod(uint256 withdrawFeePeriod);

    /**
     * @notice Constructor
     * @param _masterchef: MasterChef contract
     * @param _owner: address of the owner
     * @param _feeAddress: address of the feeAddress (collects fees)
     */
    constructor(
        HowlsCastle _masterchef,
        address _owner,
        address _feeAddress
    ) public {
        masterchef = _masterchef;
        feeAddress = _feeAddress;

        transferOwnership(_owner);
    }

    /**
     * @notice Deposits funds into the Calcifire Vault
     * @param _amount: number of tokens to deposit (in CALCIFIRE)
     */
    function deposit(uint256 _amount) external nonReentrant {
        require(_amount > 0, "CalcifireVault: Nothing to deposit");

        uint256 pool = underlyingTokenBalance();
        CALCIFIRE.safeTransferFrom(msg.sender, address(this), _amount);
        uint256 currentShares = 0;
        if (totalShares != 0) {
            currentShares = (_amount.mul(totalShares)).div(pool);
        } else {
            currentShares = _amount;
        }
        UserInfo storage user = userInfo[msg.sender];

        user.shares = user.shares.add(currentShares);
        user.lastDepositedTime = block.timestamp;
        user.noFeesRewardsTime = user.lastDepositedTime.add(withdrawFeePeriod);

        totalShares = totalShares.add(currentShares);

        user.calcifireAtLastUserAction = user.shares.mul(underlyingTokenBalance()).div(totalShares);
        user.lastUserActionTime = block.timestamp;

        _earn();

        emit Deposit(msg.sender, _amount, currentShares, block.timestamp);
    }

    /**
     * @notice Reinvests CALCIFIRE tokens into MasterChef and claiming rewards
     */
    function harvest() external {
        masterchef.withdraw(1, 0);

        _earn();

        emit Harvest(msg.sender);
    }

    /**
     * @notice Withdraws funds from the Calcifire Vault
     * @param _shares: Number of shares to withdraw
     */
    function withdraw(uint256 _shares) public nonReentrant {
        UserInfo storage user = userInfo[msg.sender];

        require(
            _shares > 0,
            "CalcifireVault: Nothing to withdraw"
        );
        require(
            _shares <= user.shares,
            "CalcifireVault: Withdraw amount exceeds balance"
        );

        uint256 currentAmount = (underlyingTokenBalance().mul(_shares)).div(totalShares);
        user.shares = user.shares.sub(_shares);
        totalShares = totalShares.sub(_shares);

        uint256 bal = available();
        if (bal < currentAmount) {
            uint256 balWithdraw = currentAmount.sub(bal);
            masterchef.withdraw(1, balWithdraw);
            uint256 balAfter = available();
            uint256 diff = balAfter.sub(bal);
            if (diff < balWithdraw) {
                currentAmount = bal.add(diff);
            }
        }

        if (
            withdrawFee > 0 &&
            block.timestamp < user.lastDepositedTime.add(withdrawFeePeriod)
        ) {
            uint256 currentWithdrawFee = currentAmount.mul(withdrawFee).div(10000);
            CALCIFIRE.safeTransfer(feeAddress, currentWithdrawFee);
            currentAmount = currentAmount.sub(currentWithdrawFee);
        }

        if (user.shares > 0) {
            user.calcifireAtLastUserAction = user.shares.mul(underlyingTokenBalance()).div(totalShares);
        } else {
            user.calcifireAtLastUserAction = 0;
        }

        user.lastUserActionTime = block.timestamp;

        CALCIFIRE.safeTransfer(msg.sender, currentAmount);

        emit Withdraw(msg.sender, currentAmount, _shares);
    }

    /**
     * @notice Withdraws all funds for a user
     */
    function withdrawAll() external {
        withdraw(userInfo[msg.sender].shares);
    }

    /**
     * @notice Custom logic for how much the vault allows to be borrowed
     * @dev The contract puts 100% of the tokens to work.
     */
    function available() public view returns (uint256) {
        return CALCIFIRE.balanceOf(address(this));
    }

    /**
     * @notice Calculates the total underlying tokens
     * @dev It includes tokens held by the contract and held in MasterChef
     */
    function underlyingTokenBalance() public view returns (uint256) {
        (uint256 amount,,,,,) = masterchef.userInfo(1, address(this));

        return CALCIFIRE.balanceOf(address(this)).add(amount);
    }

    /**
     * @notice Deposits tokens into MasterChef to earn staking rewards
     */
    function _earn() internal {

        uint256 balance = available();

        if (balance > 0) {
            if (CALCIFIRE.allowance(address(this), address(masterchef)) < balance) {
                CALCIFIRE.safeApprove(address(masterchef), uint(- 1));
            }

            masterchef.deposit(1, balance, false, address(0));
        }
    }

    // time till next claim with no fees
    function claimRewardsTimestamp(address userAddr) public view returns (uint256) {
        UserInfo storage user = userInfo[userAddr];
        uint256 remainingClaimTime = 0;

        if (block.timestamp >= user.noFeesRewardsTime)
        {
          remainingClaimTime = 0;
        }
        else
        {
          remainingClaimTime = user.noFeesRewardsTime.sub(block.timestamp);
        }

        return remainingClaimTime;
    }

    /**
     * @notice Sets fee address
     * @dev Only callable by the contract owner.
     */
    function setFeeAddress(address _feeAddress) external onlyOwner {
        require(_feeAddress != address(0), "CalcifireVault: Cannot be zero address");

        feeAddress = _feeAddress;

        emit SetFeeAddress(feeAddress);
    }

    /**
     * @notice Sets withdraw fee
     * @dev Only callable by the contract owner.
     */
    function setWithdrawFee(uint256 _withdrawFee) external onlyOwner {
        require(
            _withdrawFee <= MAX_WITHDRAW_FEE,
            "CalcifireVault: withdrawFee cannot be more than MAX_WITHDRAW_FEE"
        );

        withdrawFee = _withdrawFee;

        emit SetWithdrawFee(withdrawFee);
    }
    /**
     * @notice Sets withdraw fee period
     * @dev Only callable by the contract owner.
     */
    function setWithdrawFeePeriod(uint256 _withdrawFeePeriod) external onlyOwner {
        require(
            _withdrawFeePeriod <= MAX_WITHDRAW_FEE_PERIOD,
            "withdrawFeePeriod cannot be more than MAX_WITHDRAW_FEE_PERIOD"
        );
        withdrawFeePeriod = _withdrawFeePeriod;

        emit SetWithdrawFeePeriod(withdrawFeePeriod);
    }

    /**
     * @notice Calculates the total pending rewards that can be restaked
     * @return Returns total pending Calcifire rewards
     */
    function calculateTotalPendingCalcifireRewards() external view returns (uint256) {
        uint256 amount = masterchef.pendingCalcifireTotal(1, address(this));
        amount = amount.add(available());

        return amount;
    }

    /**
     * @notice Calculates the price per share
     */
    function getPricePerFullShare() external view returns (uint256) {
        return totalShares == 0 ? 1e18 : underlyingTokenBalance().mul(1e18).div(totalShares);
    }
}
