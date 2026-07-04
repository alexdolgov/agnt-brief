// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "../libraries/math/SafeMath.sol";
import "../libraries/token/IERC20.sol";
import "../libraries/token/SafeERC20.sol";
import "../libraries/utils/ReentrancyGuard.sol";
import "./interfaces/IVester.sol";
import "./interfaces/IRewardTracker.sol";
import "./interfaces/INewVester.sol";
import "../tokens/interfaces/IMintable.sol";
import "../access/Governable.sol";

contract NewVester is INewVester, IERC20, ReentrancyGuard, Governable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    string public name;
    string public symbol;
    uint8 public decimals = 18;

    uint256 public vestingDuration;

    address public esToken;
    address public pairToken;
    address public claimableToken;

    address public override rewardTracker;
    address public oldVester;

    uint256 public override totalSupply;
    uint256 public pairSupply;

    mapping(address => uint256) public balances;
    mapping(address => uint256) public override pairAmounts;
    mapping(address => uint256) public override cumulativeClaimAmounts;
    mapping(address => uint256) public cumulativeRewardDeductions;
    mapping(address => uint256) public override claimedAmounts;
    mapping(address => uint256) public lastVestingTimes;

    event Claim(address receiver, uint256 amount);
    event Deposit(address account, uint256 amount);
    event Withdraw(address account, uint256 claimedAmount, uint256 balance);
    event WithdrawToken(address indexed account, address indexed token, uint256 withdrawAmount);
    event PairTransfer(address indexed from, address indexed to, uint256 value);

    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _vestingDuration,
        address _esToken,
        address _pairToken,
        address _claimableToken,
        address _rewardTracker,
        address _oldVester
    ) public {
        require(_vestingDuration > 0, "invalid vesting duration");
        require(_esToken != address(0), "invalid deposit token");
        require(_pairToken != address(0), "invalid pair token");
        require(_claimableToken != address(0), "invalid claimable token");
        require(_esToken != _claimableToken, "invalid tokens");
        require(_rewardTracker != address(0), "invalid reward tracker");
        require(_oldVester != address(0), "invalid old vester");
        name = _name;
        symbol = _symbol;

        vestingDuration = _vestingDuration;
        esToken = _esToken;
        pairToken = _pairToken;
        claimableToken = _claimableToken;
        oldVester = _oldVester;
        rewardTracker = _rewardTracker;
    }

    function deposit(uint256 _amount) external nonReentrant {
        _deposit(msg.sender, _amount);
    }

    function claim() external nonReentrant returns (uint256) {
        return _claim(msg.sender, msg.sender);
    }

    function setCumulativeRewardDeductions(address[] calldata _accounts, uint256[] calldata _amounts) external onlyGov {
        for (uint256 i; i < _accounts.length; i++) {
            cumulativeRewardDeductions[_accounts[i]] = _amounts[i];
        }

    }

    // to help users who accidentally send their tokens to this contract
    function withdrawToken(
        address _token,
        address _account,
        uint256 _amount
    ) external onlyGov {
        IERC20(_token).safeTransfer(_account, _amount);

        if (_token == esToken) {
            uint256 depositBalance = IERC20(esToken).balanceOf(address(this));
            require(totalSupply + _amount <= depositBalance , "Not allowed to withdraw users' funds");
        }
        if (_token == claimableToken && claimableToken == pairToken) {
            uint256 claimAndPairBalance = IERC20(claimableToken).balanceOf(address(this));
            require(totalSupply + pairSupply + _amount <= claimAndPairBalance , "Not allowed to withdraw users' funds");
        }else {
            if (_token == pairToken) {
                uint256 pairBalance = IERC20(pairToken).balanceOf(address(this));
                require(pairSupply +  _amount <= pairBalance , "Not allowed to withdraw users' funds");
            }

            if (_token == claimableToken) {
                uint256 claimBalance = IERC20(claimableToken).balanceOf(address(this));
                require(totalSupply + _amount <= claimBalance , "Not allowed to withdraw users' funds");
            }

        }


        IERC20(_token).safeTransfer(_account, _amount);
        emit WithdrawToken(_account, _token ,_amount);

    }

    function withdraw() external nonReentrant {
        address account = msg.sender;
        address _receiver = account;
        _claim(account, _receiver);

        uint256 claimedAmount = cumulativeClaimAmounts[account];
        uint256 balance = balances[account];
        uint256 totalVested = balance.add(claimedAmount);
        require(totalVested > 0, "Vester: vested amount is zero");


        uint256 pairAmount = pairAmounts[account];
        _burnPair(account, pairAmount);
        IERC20(pairToken).safeTransfer(_receiver, pairAmount);


        IERC20(esToken).safeTransfer(_receiver, balance);
        _burn(account, balance);


        cumulativeRewardDeductions[account] = cumulativeRewardDeductions[account].add(claimedAmount);

        delete cumulativeClaimAmounts[account];
        delete claimedAmounts[account];
        delete lastVestingTimes[account];

        emit Withdraw(account, claimedAmount, balance);
    }

    function claimable(address _account) public view override returns (uint256) {
        uint256 amount = cumulativeClaimAmounts[_account].sub(claimedAmounts[_account]);
        uint256 nextClaimable = _getNextClaimableAmount(_account);
        return amount.add(nextClaimable);
    }

    function getMaxVestableAmount(address _account) public view override returns (uint256) {
        uint256 transferredCumulativeReward = IVester(oldVester).transferredCumulativeRewards(_account);
        uint256 bonusReward = IVester(oldVester).bonusRewards(_account);
        uint256 cumulativeReward = IRewardTracker(rewardTracker).cumulativeRewards(_account);
        uint256 maxVestableAmount = cumulativeReward.add(transferredCumulativeReward).add(bonusReward);

        uint256 cumulativeRewardDeduction = cumulativeRewardDeductions[_account];

        if (maxVestableAmount < cumulativeRewardDeduction) {
            return 0;
        }

        return maxVestableAmount.sub(cumulativeRewardDeduction);
    }

    function getCombinedAverageStakedAmount(address _account) public view override returns (uint256) {
        uint256 cumulativeReward = IRewardTracker(rewardTracker).cumulativeRewards(_account);
        uint256 transferredCumulativeReward = IVester(oldVester).transferredCumulativeRewards(_account);
        uint256 totalCumulativeReward = cumulativeReward.add(transferredCumulativeReward);
        if (totalCumulativeReward == 0) {
            return 0;
        }

        uint256 averageStakedAmount = IRewardTracker(rewardTracker).averageStakedAmounts(_account);
        uint256 transferredAverageStakedAmount = IVester(oldVester).transferredAverageStakedAmounts(_account);

        return averageStakedAmount.mul(cumulativeReward).div(totalCumulativeReward).add(transferredAverageStakedAmount.mul(transferredCumulativeReward).div(totalCumulativeReward));
    }



    function getPairAmount(address _account, uint256 _esAmount) public view returns (uint256) {

        uint256 combinedAverageStakedAmount = getCombinedAverageStakedAmount(_account);
        if (combinedAverageStakedAmount == 0) {
            return 0;
        }

        uint256 maxVestableAmount = getMaxVestableAmount(_account);
        if (maxVestableAmount == 0) {
            return 0;
        }

        return _esAmount.mul(combinedAverageStakedAmount).div(maxVestableAmount);
    }

    function getTotalVested(address _account) public view override returns (uint256) {
        return balances[_account].add(cumulativeClaimAmounts[_account]);
    }

    function balanceOf(address _account) public view override returns (uint256) {
        return balances[_account];
    }

    // empty implementation, tokens are non-transferrable
    function transfer(
        address, /* recipient */
        uint256 /* amount */
    ) public override returns (bool) {
        revert("Vester: non-transferrable");
    }

    // empty implementation, tokens are non-transferrable
    function allowance(
        address, /* owner */
        address /* spender */
    ) public view virtual override returns (uint256) {
        return 0;
    }

    // empty implementation, tokens are non-transferrable
    function approve(
        address, /* spender */
        uint256 /* amount */
    ) public virtual override returns (bool) {
        revert("Vester: non-transferrable");
    }

    // empty implementation, tokens are non-transferrable
    function transferFrom(
        address, /* sender */
        address, /* recipient */
        uint256 /* amount */
    ) public virtual override returns (bool) {
        revert("Vester: non-transferrable");
    }

    function getVestedAmount(address _account) public view override returns (uint256) {
        uint256 balance = balances[_account];
        uint256 cumulativeClaimAmount = cumulativeClaimAmounts[_account];
        return balance.add(cumulativeClaimAmount);
    }

    function _mint(address _account, uint256 _amount) private {
        require(_account != address(0), "Vester: mint to the zero address");

        totalSupply = totalSupply.add(_amount);
        balances[_account] = balances[_account].add(_amount);

        emit Transfer(address(0), _account, _amount);
    }

    function _mintPair(address _account, uint256 _amount) private {
        require(_account != address(0), "Vester: mint to the zero address");

        pairSupply = pairSupply.add(_amount);
        pairAmounts[_account] = pairAmounts[_account].add(_amount);

        emit PairTransfer(address(0), _account, _amount);
    }

    function _burn(address _account, uint256 _amount) private {
        require(_account != address(0), "Vester: burn from the zero address");

        balances[_account] = balances[_account].sub(_amount, "Vester: burn amount exceeds balance");
        totalSupply = totalSupply.sub(_amount);

        emit Transfer(_account, address(0), _amount);
    }

    function _burnPair(address _account, uint256 _amount) private {
        require(_account != address(0), "Vester: burn from the zero address");

        pairAmounts[_account] = pairAmounts[_account].sub(_amount, "Vester: burn amount exceeds balance");
        pairSupply = pairSupply.sub(_amount);

        emit PairTransfer(_account, address(0), _amount);
    }

    function _deposit(address _account, uint256 _amount) private {
        require(_amount > 0, "Vester: invalid _amount");

        _updateVesting(_account);

        IERC20(esToken).safeTransferFrom(_account, address(this), _amount);

        _mint(_account, _amount);


        uint256 pairAmount = pairAmounts[_account];
        uint256 nextPairAmount = getPairAmount(_account, balances[_account]);
        if (nextPairAmount > pairAmount) {
            uint256 pairAmountDiff = nextPairAmount.sub(pairAmount);
            IERC20(pairToken).safeTransferFrom(_account, address(this), pairAmountDiff);
            _mintPair(_account, pairAmountDiff);
        }

        uint256 maxAmount = getMaxVestableAmount(_account);
        uint256 currentTotalVested = INewVester(oldVester).getTotalVested(_account);
        require(getTotalVested(_account).add(currentTotalVested) <= maxAmount, "Vester: max vestable amount exceeded");

        emit Deposit(_account, _amount);
    }

    function _updateVesting(address _account) private {
        uint256 amount = _getNextClaimableAmount(_account);
        lastVestingTimes[_account] = block.timestamp;

        if (amount == 0) {
            return;
        }

        // transfer claimableAmount from balances to cumulativeClaimAmounts
        _burn(_account, amount);
        cumulativeClaimAmounts[_account] = cumulativeClaimAmounts[_account].add(amount);

        IMintable(esToken).burn(address(this), amount); 
    }

    function _getNextClaimableAmount(address _account) private view returns (uint256) {
        uint256 timeDiff = block.timestamp.sub(lastVestingTimes[_account]);

        uint256 balance = balances[_account];
        if (balance == 0) {
            return 0;
        }

        uint256 vestedAmount = getVestedAmount(_account);
        uint256 claimableAmount = vestedAmount.mul(timeDiff).div(vestingDuration);

        if (claimableAmount < balance) {
            return claimableAmount;
        }

        return balance;
    }

    function _claim(address _account, address _receiver) private returns (uint256) {
        _updateVesting(_account);
        uint256 amount = claimable(_account);
        claimedAmounts[_account] = claimedAmounts[_account].add(amount);
        IERC20(claimableToken).safeTransfer(_receiver, amount);
        emit Claim(_account, amount);
        return amount;
    }
}
