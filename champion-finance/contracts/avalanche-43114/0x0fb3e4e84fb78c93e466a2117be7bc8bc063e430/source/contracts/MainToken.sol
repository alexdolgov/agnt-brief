// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "./lib/SafeMath.sol";

import "./lib/SafeMath8.sol";
import "./owner/Operator.sol";

contract MainToken is ERC20, Operator {
    using SafeMath8 for uint8;
    using SafeMath for uint256;

    // Initial distribution for the first 24h genesis pools
    uint256 public constant INITIAL_GENESIS_POOL_DISTRIBUTION = 18360 ether;
    uint256 public constant INITIAL_DEV_FUND_DISTRIBUTION = 1080 ether;
    uint256 public constant INITIAL_DAO_FUND_DISTRIBUTION = 2160 ether;

    // Have the rewards been distributed to the pools
    bool public rewardPoolDistributed = false;

    //address public oracle;

	uint256 private constant INITIAL_FRAGMENTS_SUPPLY = 1 ether;

    // Rebase
	uint256 private constant MAX_UINT256 = ~uint256(0);
	uint256 private constant MAX_SUPPLY = ~uint128(0);
	uint256 public TOTAL_GONS;
	uint256 private _gonsPerFragment = 10**18;

	bool public rebaseAllowed = true;
	mapping(address => uint256) private _balances;
	mapping(address => mapping(address => uint256)) private _allowances;
	mapping(address => bool) private _isExcluded;
	address[] public excluded;
	address[] public devFunds;
	address public daoFund;
	uint256 private _totalSupply = 0;

    /* =================== Events =================== */
    event LogRebase(uint256 indexed epoch, uint256 totalSupply);
    event GrantExclusion(address indexed account);
	event RevokeExclusion(address indexed account);

    /**
     * @notice Constructs the MainToken ERC-20 contract.
     */
    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {
        // Mints 1 token to contract creator for initial pool setup
        _mint(msg.sender, INITIAL_FRAGMENTS_SUPPLY);
    }

    function getDevFunds() external view returns (address[] memory)
	{
		return devFunds;
	}

	function getDaoFund() external view returns (address)
	{
		return daoFund;
	}

	function getExcluded() external view returns (address[] memory)
	{
		return excluded;
	}

    function disableRebase() external onlyOperator {
		rebaseAllowed = false;
	}
    
	function rebase(uint256 epoch, uint256 supplyDelta, bool negative) external onlyOperator returns (uint256)
	{
		require(rebaseAllowed, 'Rebase is not allowed');
		// uint256 prevRebaseSupply = rebaseSupply();
		// uint256 prevTotalSupply = _totalSupply;

		uint256 total = _rebase(supplyDelta, negative);

		emit LogRebase(epoch, total);
		return total;
	}

    	/**
	 * @dev Notifies Fragments contract about a new rebase cycle.
	 * @param supplyDelta The number of new fragment tokens to add into circulation via expansion.
	 * Return The total number of fragments after the supply adjustment.
	 */
	function _rebase(uint256 supplyDelta, bool negative) internal virtual returns (uint256) {
		// if supply delta is 0 nothing to rebase
		// if rebaseSupply is 0 nothing can be rebased
		if (supplyDelta == 0 || rebaseSupply() == 0) {
			return _totalSupply;
		}

		uint256[] memory excludedBalances = _burnExcludedAccountTokens();

		if (negative) {
			_totalSupply = _totalSupply.sub(uint256(supplyDelta));
		} else {
			_totalSupply = _totalSupply.add(uint256(supplyDelta));
		}

		if (_totalSupply > MAX_SUPPLY) {
			_totalSupply = MAX_SUPPLY;
		}

		_gonsPerFragment = TOTAL_GONS.div(_totalSupply);

		_mintExcludedAccountTokens(excludedBalances);

		return _totalSupply;
	}

    /**
	* @dev Exposes the supply available for rebasing. Essentially this is total supply minus excluded accounts
	* @return rebaseSupply The supply available for rebase
	*/
	function rebaseSupply() public view returns (uint256) {
		uint256 excludedSupply = 0;
		for (uint256 i = 0; i < excluded.length; i++) {
			excludedSupply = excludedSupply.add(balanceOf(excluded[i]));
		}
		return _totalSupply.sub(excludedSupply);
	}

    /**
	* @dev Burns all tokens from excluded accounts
	* @return excludedBalances The excluded account balances before burn
	*/
	function _burnExcludedAccountTokens() private returns (uint256[] memory excludedBalances)
	{
		excludedBalances = new uint256[](excluded.length);
		for (uint256 i = 0; i < excluded.length; i++) {
			address account = excluded[i];
			uint256 balance = balanceOf(account);
			excludedBalances[i] = balance;
			if (balance > 0) _burn(account, balance);
		}

		return excludedBalances;
	}

    /**
	* @dev Mints tokens to excluded accounts
	* @param excludedBalances The amount of tokens to mint per address
	*/
	function _mintExcludedAccountTokens(uint256[] memory excludedBalances) private
	{
		for (uint256 i = 0; i < excluded.length; i++) {
			if (excludedBalances[i] > 0)
				_mint(excluded[i], excludedBalances[i]);
		}
	}

    /**
	 * @dev Grant an exclusion from rebases
	 * @param account The account to grant exclusion
	 *
	 * Requirements:
	 *
	 * - `account` must NOT already be excluded.
	 * - can only be called by `excluderRole`
	 */
	function grantRebaseExclusion(address account) public onlyOperator
	{
        if (_isExcluded[account]) return;
		require(excluded.length <= 100, 'Too many excluded accounts');
		_isExcluded[account] = true;
		excluded.push(account);
		emit GrantExclusion(account);
	}

	/**
	 * @dev Revokes an exclusion from rebases
	 * @param account The account to revoke
	 *
	 * Requirements:
	 *
	 * - `account` must already be excluded.
	 * - can only be called by `excluderRole`
	 */
	function revokeRebaseExclusion(address account) external onlyOperator
	{
		require(_isExcluded[account], 'Account is not already excluded');
		for (uint256 i = 0; i < excluded.length; i++) {
			if (excluded[i] == account) {
				excluded[i] = excluded[excluded.length - 1];
				_isExcluded[account] = false;
				excluded.pop();
				emit RevokeExclusion(account);
				return;
			}
		}
	}

    //---OVERRIDE FUNTION---
    function totalSupply() public view override returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address who) public view override returns (uint256) {
        if (_gonsPerFragment == 0) return 0;
		return _balances[who].div(_gonsPerFragment);
    }
        
    function _mint(address account, uint256 amount) internal virtual override {
		require(account != address(0), 'ERC20: transfer to the zero address');
		require(amount > 0, "ERC20: Can't mint 0 tokens");

		TOTAL_GONS = TOTAL_GONS.add(_gonsPerFragment.mul(amount));
		_totalSupply = _totalSupply.add(amount);

		_balances[account] = _balances[account].add(
			amount.mul(_gonsPerFragment)
		);

		emit Transfer(address(0), account, amount);
	}

    function _burn(address account, uint256 amount) internal virtual override {
		require(account != address(0), 'ERC20: burn from the zero address');
		uint256 accountBalance = _balances[account];
		require(
			accountBalance >= amount.mul(_gonsPerFragment),
			'ERC20: burn amount exceeds balance'
		);
		unchecked {
			_balances[account] = _balances[account].sub(
				amount.mul(_gonsPerFragment)
			);
		}

		TOTAL_GONS = TOTAL_GONS.sub(_gonsPerFragment.mul(amount));
		_totalSupply = _totalSupply.sub(amount);

		emit Transfer(account, address(0), amount);
	}

    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    function increaseAllowance(address spender, uint256 addedValue) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, _allowances[owner][spender] + addedValue);
        return true;
    }

    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual override returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = _allowances[owner][spender];
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    function _approve(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual override {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    function _transfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 gonValue = amount.mul(_gonsPerFragment);
        uint256 fromBalance = _balances[from];
        require(fromBalance >= gonValue, "ERC20: transfer amount exceeds balance");
        _balances[from] = _balances[from].sub(gonValue);
        _balances[to] = _balances[to].add(gonValue);
        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /**
     * @notice Operator mints Token to a recipient
     * @param recipient_ The address of recipient
     * @param amount_ The amount of Token to mint to
     * @return whether the process has been done
    */
    function mint(address recipient_, uint256 amount_) external onlyOperator returns (bool) {
        uint256 balanceBefore = balanceOf(recipient_);
        _mint(recipient_, amount_);
        uint256 balanceAfter = balanceOf(recipient_);
        return balanceAfter > balanceBefore;
    }
    //---END OVERRIDE FUNTION---

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public override returns (bool) {
        _transfer(sender, recipient, amount);
        _approve(sender, _msgSender(), allowance(sender, _msgSender()).sub(amount, "ERC20: transfer amount exceeds allowance"));
        return true;
    }

    /**
     * @notice distribute to reward pool (only once)
     */
    function distributeReward(
        address _genesisPool,
        address _daoFundAddress,
        address[] calldata _devFundAddress
    ) external onlyOperator {
        require(!rewardPoolDistributed, "only can distribute once");
        require(_genesisPool != address(0), "!_genesisPool");
        require(_daoFundAddress != address(0), "!_daoFundAddress");
        rewardPoolDistributed = true;
        _mint(_genesisPool, INITIAL_GENESIS_POOL_DISTRIBUTION);
        _mint(_daoFundAddress, INITIAL_DAO_FUND_DISTRIBUTION);
		daoFund = _daoFundAddress;
		devFunds = _devFundAddress;

        uint256 totalDevFund = _devFundAddress.length;
        uint256 devFundDistribution = INITIAL_DEV_FUND_DISTRIBUTION.div(totalDevFund);
        for (uint8 entryId = 0; entryId < totalDevFund; ++entryId) {
            _mint(_devFundAddress[entryId], devFundDistribution);
        }
    }

	function isDevFund(address _address) external view returns (bool _isDevFund, uint256 length) {
	 	length = devFunds.length;
		uint8 count = 0; 
		for (uint8 entryId = 0; entryId < length; ++entryId) {
            if (devFunds[entryId] == _address) {
				count = count + 1;
			}
        }

		_isDevFund = count > 0;
	}

	function isDaoFund(address _address) external view returns (bool) {
		return _address == daoFund;
	}
}
