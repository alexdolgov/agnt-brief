// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}


/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
 
contract Ownable {
    address public owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() {
        owner = msg.sender;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(msg.sender == owner, "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public onlyOwner {
        emit OwnershipTransferred(owner, address(0));
        owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     */
    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
}

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract StakedTokenWrapper {
    uint256 public totalSupply;

    mapping(address => uint256) private _balances;
    IERC20 public stakedToken;
    
    event Staked(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }

    string constant _transferErrorMessage = "staked token transfer failed";
    
    function stakeFor(address forWhom, uint128 amount) public payable virtual {
        IERC20 st = stakedToken;
        if(st == IERC20(address(0))) { //eth
            unchecked {
                totalSupply += msg.value;
                _balances[forWhom] += msg.value;
            }
        }
        else {
            require(msg.value == 0, "non-zero eth");
            require(amount > 0, "Cannot stake 0");
            require(st.transferFrom(msg.sender, address(this), amount), _transferErrorMessage);
            unchecked { 
                totalSupply += amount;
                _balances[forWhom] += amount;
            }
        }
        emit Staked(forWhom, amount);
    }

    function withdraw(uint128 amount) public virtual {
        require(amount <= _balances[msg.sender], "withdraw: balance is lower");
        unchecked {
            _balances[msg.sender] -= amount;
            totalSupply = totalSupply-amount;
        }
        IERC20 st = stakedToken;
        if(st == IERC20(address(0))) { //eth
            (bool success, ) = msg.sender.call{value: amount}("");
            require(success, "eth transfer failure");
        }
        else {
            require(stakedToken.transfer(msg.sender, amount), _transferErrorMessage);
        }
        emit Withdrawn(msg.sender, amount);
    }
}

contract NyanRewards is StakedTokenWrapper, Ownable {
    IERC20 public rewardToken;
    uint256 public rewardRate;
    uint64 public periodFinish;
    uint64 public lastUpdateTime;
    uint128 public rewardPerTokenStored;
    struct UserRewards {
        uint128 userRewardPerTokenPaid;
        uint128 rewards;
    }
    mapping(address => UserRewards) public userRewards;

    event RewardAdded(uint256 reward);
    event RewardPaid(address indexed user, uint256 reward);

    constructor(IERC20 _rewardToken, IERC20 _stakedToken) {
        rewardToken = _rewardToken;
        stakedToken = _stakedToken;
    }

    modifier updateReward(address account) {
        uint128 _rewardPerTokenStored = rewardPerToken();
        lastUpdateTime = lastTimeRewardApplicable();
        rewardPerTokenStored = _rewardPerTokenStored;
        userRewards[account].rewards = earned(account);
        userRewards[account].userRewardPerTokenPaid = _rewardPerTokenStored;
        _;
    }

    function lastTimeRewardApplicable() public view returns (uint64) {
        uint64 blockTimestamp = uint64(block.timestamp);
        return blockTimestamp < periodFinish ? blockTimestamp : periodFinish;
    }

    function rewardPerToken() public view returns (uint128) {
        uint256 totalStakedSupply = totalSupply;
        if (totalStakedSupply == 0) {
            return rewardPerTokenStored;
        }
        unchecked {
            uint256 rewardDuration = lastTimeRewardApplicable()-lastUpdateTime;
            return uint128(rewardPerTokenStored + rewardDuration*rewardRate*1e18/totalStakedSupply);
        }
    }

    function earned(address account) public view returns (uint128) {
        unchecked { 
            return uint128(balanceOf(account)*(rewardPerToken()-userRewards[account].userRewardPerTokenPaid)/1e18 + userRewards[account].rewards);
        }
    }

    function stake(uint128 amount) external payable {
        stakeFor(msg.sender, amount);
    }

    function stakeFor(address forWhom, uint128 amount) public payable override updateReward(forWhom) {
        super.stakeFor(forWhom, amount);
    }

    function withdraw(uint128 amount) public override updateReward(msg.sender) {
        super.withdraw(amount);
    }

    function exit() external {
        getReward();
        withdraw(uint128(balanceOf(msg.sender)));
    }

    function getReward() public updateReward(msg.sender) {
        uint256 reward = earned(msg.sender);
        if (reward > 0) {
            userRewards[msg.sender].rewards = 0;
            require(rewardToken.transfer(msg.sender, reward), "reward transfer failed");
            emit RewardPaid(msg.sender, reward);
        }
    }

    function setRewardParams(uint128 reward, uint64 duration) external onlyOwner {
        unchecked {
            require(reward > 0);
            rewardPerTokenStored = rewardPerToken();
            uint64 blockTimestamp = uint64(block.timestamp);
            uint256 maxRewardSupply = rewardToken.balanceOf(address(this));
            if(rewardToken == stakedToken)
                maxRewardSupply -= totalSupply;
            uint256 leftover = 0;
            if (blockTimestamp >= periodFinish) {
                rewardRate = reward/duration;
            } else {
                uint256 remaining = periodFinish-blockTimestamp;
                leftover = remaining*rewardRate;
                rewardRate = (reward+leftover)/duration;
            }
            require(reward+leftover <= maxRewardSupply, "not enough tokens");
            lastUpdateTime = blockTimestamp;
            periodFinish = blockTimestamp+duration;
            emit RewardAdded(reward);
        }
    }

    function withdrawReward() external onlyOwner {
        uint256 rewardSupply = rewardToken.balanceOf(address(this));
        //ensure funds staked by users can't be transferred out
        if(rewardToken == stakedToken)
                rewardSupply -= totalSupply;
        require(rewardToken.transfer(msg.sender, rewardSupply));
        rewardRate = 0;
        periodFinish = uint64(block.timestamp);
    }
}

/*
   ____            __   __        __   _
  / __/__ __ ___  / /_ / /  ___  / /_ (_)__ __
 _\ \ / // // _ \/ __// _ \/ -_)/ __// / \ \ /
/___/ \_, //_//_/\__//_//_/\__/ \__//_/ /_\_\
     /___/

* Synthetix: YFIRewards.sol
*
* Docs: https://docs.synthetix.io/
*
*
* MIT License
* ===========
*
* Copyright (c) 2020 Synthetix
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
*/

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}


/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.zeppelin.solutions/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20 is Context, IERC20, IERC20Metadata {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * The default value of {decimals} is 18. To select a different value for
     * {decimals} you should overload it.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the value {ERC20} uses, unless this function is
     * overridden;
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `recipient` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        _approve(_msgSender(), spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * Requirements:
     *
     * - `sender` and `recipient` cannot be the zero address.
     * - `sender` must have a balance of at least `amount`.
     * - the caller must have allowance for ``sender``'s tokens of at least
     * `amount`.
     */
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public virtual override returns (bool) {
        _transfer(sender, recipient, amount);

        uint256 currentAllowance = _allowances[sender][_msgSender()];
        require(currentAllowance >= amount, "ERC20: transfer amount exceeds allowance");
        unchecked {
            _approve(sender, _msgSender(), currentAllowance - amount);
        }

        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        _approve(_msgSender(), spender, _allowances[_msgSender()][spender] + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        uint256 currentAllowance = _allowances[_msgSender()][spender];
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(_msgSender(), spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `sender` to `recipient`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `sender` cannot be the zero address.
     * - `recipient` cannot be the zero address.
     * - `sender` must have a balance of at least `amount`.
     */
    function _transfer(
        address sender,
        address recipient,
        uint256 amount
    ) internal virtual {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(sender, recipient, amount);

        uint256 senderBalance = _balances[sender];
        require(senderBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[sender] = senderBalance - amount;
        }
        _balances[recipient] += amount;

        emit Transfer(sender, recipient, amount);

        _afterTokenTransfer(sender, recipient, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        _balances[account] += amount;
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
        }
        _totalSupply -= amount;

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}
}

interface IStrategy {
    function getName() external returns(string memory);
    function getUnderlying() external returns(address);
    function deposit(uint amount) external;
    function reinvest() external;
    function withdraw(uint amount) external;
}

contract CarbonStrategy is ERC20, IStrategy {
  
  address private _admin;

  uint public totalDeposits;

  IERC20 public arbi;
  IERC20 public nyanToken;
  NyanRewards public stakingContract;

  uint public MIN_TOKENS_TO_REINVEST = 20;
  uint public REINVEST_REWARD_BIPS = 200;
  uint public ADMIN_FEE_BIPS = 50;
  uint constant private BIPS_DIVISOR = 10000;

  event Deposit(address account, uint amount);
  event Withdraw(address account, uint amount);
  event Reinvest(uint newTotalDeposits, uint newTotalSupply);
  event Recovered(address token, uint amount);
  event UpdateAdminFee(uint oldValue, uint newValue);
  event UpdateReinvestReward(uint oldValue, uint newValue);
  event UpdateMinTokensToReinvest(uint oldValue, uint newValue);

  constructor(
    address _nyanToken, 
    address _stakingContract
  ) ERC20("CARBON Stake Shares", "CARBON-SHARES"){
    _admin = msg.sender;
    nyanToken = IERC20(_nyanToken);
    stakingContract = NyanRewards(_stakingContract);
    uint256 ts = nyanToken.totalSupply();
    nyanToken.approve(_stakingContract, ts);
  }
  
  function reapproveStaking() public {
    uint256 ts = nyanToken.totalSupply();
    nyanToken.approve(address(stakingContract), ts);
  }
  
  function getName() external override view returns(string memory) {
      return name();
  }
  
  function getUnderlying() external override view returns(address) {
      return address(nyanToken);
  }
  
  function updateAdmin(address newAdmin) public onlyAdmin {
      _admin = newAdmin;
  }
  
  function setArbi(address arbiAddress) public onlyAdmin {
      require(address(arbi) == 0x0000000000000000000000000000000000000000, "arbi already set");
      arbi = IERC20(arbiAddress);
  }
  
  modifier onlyAdmin() {
      require(msg.sender == _admin, "onlyadmin");
      _;
  }
  
  function admin() public view returns (address payable) {
      return payable(_admin);
  }

  /**
    * @dev Throws if called by smart contract
    */
  modifier onlyEOA() {
      require(tx.origin == msg.sender, "onlyEOA");
      _;
  }

  /**
   * @notice Deposit LP tokens to receive Snowball tokens
   * @param amount Amount of LP tokens to deposit
   */
  function deposit(uint amount) override external {
    _deposit(amount);
  }


  function _deposit(uint amount) internal {
    require(totalDeposits >= totalSupply(), "deposit failed");
    require(nyanToken.transferFrom(msg.sender, address(this), amount), "transferFrom failed");
    _stakeTokens(amount);
    _mint(msg.sender, getSharesPerToken(amount));
    totalDeposits = totalDeposits + amount;
    emit Deposit(msg.sender, amount);
  }

  /**
   * @notice Withdraw LP tokens by redeeming Snowball tokens
   * @param amount Amount of Snowball tokens to redeem
   */
  function withdraw(uint amount) override external {
    uint lpTokenAmount = getTokensPerShare(amount);
    if (lpTokenAmount > 0) {
      _withdrawStakedTokens(lpTokenAmount);
      require(nyanToken.transfer(msg.sender, lpTokenAmount), "transfer failed");
      _burn(msg.sender, amount);
      totalDeposits = totalDeposits - lpTokenAmount;
      emit Withdraw(msg.sender, lpTokenAmount);
    }
  }

  /**
   * @notice Calculate Shares per staked NYAN token
   * @dev If contract is empty, use 1:1 ratio
   * @dev Could return zero shares for very low amounts of LP tokens
   * @param amount LP tokens
   * @return share tokens
   */
  function getSharesPerToken(uint amount) public view returns (uint) {
    if (totalSupply() * totalDeposits == 0) {
      return amount;
    }
    return (amount * totalSupply()) / totalDeposits;
  }

  /**
   * @notice Calculate nyan tokens for a given amount of share tokens
   * @param amount NYAN tokens
   * @return share tokens
   */
  function getTokensPerShare(uint amount) public view returns (uint) {
    if (totalSupply() * totalDeposits == 0) {
      return 0;
    }
    return (amount * totalDeposits) / totalSupply();
  }

  /**
   * @notice Reward token balance that can be reinvested
   * @dev Staking rewards accurue to contract on each deposit/withdrawal
   * @return Unclaimed rewards, plus contract balance
   */
  function checkReward() public view returns (uint) {
    return stakingContract.earned(address(this));
    //uint contractBalance = rewardToken.balanceOf(address(this));
    //return pendingReward + contractBalance;
  }

  /**
   * @notice Estimate reinvest reward for caller
   * @return Estimated rewards tokens earned for calling `reinvest()`
   */
  function estimateReinvestReward() external view returns (uint) {
    uint unclaimedRewards = checkReward();
    if (unclaimedRewards >= MIN_TOKENS_TO_REINVEST) {
      return (unclaimedRewards * REINVEST_REWARD_BIPS) / BIPS_DIVISOR;
    }
    return 0;
  }

  /**
   * @notice Reinvest rewards from staking contract to LP tokens
   */
  function reinvest() override external onlyEOA {
    uint unclaimedRewards = checkReward();
    require(unclaimedRewards >= MIN_TOKENS_TO_REINVEST, "MIN_TOKENS_TO_REINVEST");
    
    if (address(arbi) != 0x0000000000000000000000000000000000000000) {
        require(arbi.balanceOf(msg.sender) >= 69000000000000000000, "insufficent ARBI balance");
    }
    
    stakingContract.getReward();
    uint adminFee = (unclaimedRewards * ADMIN_FEE_BIPS) / BIPS_DIVISOR;
    if (adminFee > 0) {
      require(nyanToken.transfer(admin(), adminFee), "admin fee transfer failed");
    }

    uint reinvestFee = (unclaimedRewards * REINVEST_REWARD_BIPS) / BIPS_DIVISOR;
    if (reinvestFee > 0) {
      require(nyanToken.transfer(msg.sender, reinvestFee), "reinvest fee transfer failed");
    }
    
    uint256 restaking = nyanToken.balanceOf(address(this));
    _stakeTokens(restaking);

    totalDeposits = totalDeposits + restaking;

    emit Reinvest(totalDeposits, totalSupply());
  }

  /**
   * @notice Stakes tokens in Staking Contract
   * @param amount tokens to stake
   */
  function _stakeTokens(uint amount) internal {
    require(amount > 0, "amount too low");
    stakingContract.stake(uint128(amount));
  }

  /**
   * @notice Withdraws LP tokens from Staking Contract
   * @dev Rewards are not automatically collected from the Staking Contract
   * @param amount LP tokens to remove;
   */
  function _withdrawStakedTokens(uint amount) internal {
    require(amount > 0, "amount too low");
    stakingContract.withdraw( uint128(amount));
  }


  /**
   * @notice Update reinvest minimum threshold
   * @param newValue min threshold in wei
   */
  function updateMinTokensToReinvest(uint newValue) external onlyAdmin {
    emit UpdateMinTokensToReinvest(MIN_TOKENS_TO_REINVEST, newValue);
    MIN_TOKENS_TO_REINVEST = newValue;
  }

  /**
   * @notice Update admin fee
   * @dev Total fees cannot be greater than BIPS_DIVISOR (5% max)
   * @param newValue specified in BIPS
   */
  function updateAdminFee(uint newValue) external onlyAdmin {
    require(newValue + REINVEST_REWARD_BIPS <= BIPS_DIVISOR / 20, "admin fee too high");
    emit UpdateAdminFee(ADMIN_FEE_BIPS, newValue);
    ADMIN_FEE_BIPS = newValue;
  }

  /**
   * @notice Update reinvest reward
   * @dev Total fees cannot be greater than BIPS_DIVISOR (5% max)
   * @param newValue specified in BIPS
   */
  function updateReinvestReward(uint newValue) external onlyAdmin {
    require(newValue + ADMIN_FEE_BIPS <= BIPS_DIVISOR / 20, "reinvest reward too high");
    emit UpdateReinvestReward(REINVEST_REWARD_BIPS, newValue);
    REINVEST_REWARD_BIPS = newValue;
  }

  /**
   * @notice Recover ETH from contract (there should never be any in this contract)
   * @param amount amount
   */
  function recoverETH(uint amount) external onlyAdmin {
    require(amount > 0, 'amount too low');
    admin().transfer(amount);
    emit Recovered(address(0), amount);
  }
}