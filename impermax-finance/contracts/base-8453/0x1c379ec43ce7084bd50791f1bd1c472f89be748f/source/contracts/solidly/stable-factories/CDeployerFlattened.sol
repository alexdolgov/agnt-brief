// File: contracts\libraries\SafeMath.sol

pragma solidity =0.5.16;

// From https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/Math.sol
// Subject to the MIT license.

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting with custom message on overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, errorMessage);

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on underflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     * - Subtraction cannot underflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction underflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on underflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     * - Subtraction cannot underflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, errorMessage);

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers.
     * Reverts on division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers.
     * Reverts with custom message on division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}

// File: contracts\ImpermaxERC20.sol

pragma solidity =0.5.16;


// This contract is basically UniswapV2ERC20 with small modifications
// src: https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2ERC20.sol

contract ImpermaxERC20 {
	using SafeMath for uint;
	
	string public name;
	string public symbol;
	uint8 public decimals = 18;
	uint public totalSupply;
	mapping(address => uint) public balanceOf;
	mapping(address => mapping(address => uint)) public allowance;
	
	bytes32 public DOMAIN_SEPARATOR;
	mapping(address => uint) public nonces;
	
	event Transfer(address indexed from, address indexed to, uint value);
	event Approval(address indexed owner, address indexed spender, uint value);

	constructor() public {}	
	
	function _setName(string memory _name, string memory _symbol) internal {
		name = _name;
		symbol = _symbol;
		uint chainId;
		assembly {
			chainId := chainid
		}
		DOMAIN_SEPARATOR = keccak256(
			abi.encode(
				keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
				keccak256(bytes(_name)),
				keccak256(bytes("1")),
				chainId,
				address(this)
			)
		);
	}

	function _mint(address to, uint value) internal {
		totalSupply = totalSupply.add(value);
		balanceOf[to] = balanceOf[to].add(value);
		emit Transfer(address(0), to, value);
	}

	function _burn(address from, uint value) internal {
		balanceOf[from] = balanceOf[from].sub(value);
		totalSupply = totalSupply.sub(value);
		emit Transfer(from, address(0), value);
	}

	function _approve(address owner, address spender, uint value) private {
		allowance[owner][spender] = value;
		emit Approval(owner, spender, value);
	}

	function _transfer(address from, address to, uint value) internal {
		balanceOf[from] = balanceOf[from].sub(value, "Impermax: TRANSFER_TOO_HIGH");
		balanceOf[to] = balanceOf[to].add(value);
		emit Transfer(from, to, value);
	}

	function approve(address spender, uint value) external returns (bool) {
		_approve(msg.sender, spender, value);
		return true;
	}

	function transfer(address to, uint value) external returns (bool) {
		_transfer(msg.sender, to, value);
		return true;
	}

	function transferFrom(address from, address to, uint value) external returns (bool) {
		if (allowance[from][msg.sender] != uint(-1)) {
			allowance[from][msg.sender] = allowance[from][msg.sender].sub(value, "Impermax: TRANSFER_NOT_ALLOWED");
		}
		_transfer(from, to, value);
		return true;
	}
	
	function _checkSignature(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s, bytes32 typehash) internal {
		require(deadline >= block.timestamp, "Impermax: EXPIRED");
		bytes32 digest = keccak256(
			abi.encodePacked(
				'\x19\x01',
				DOMAIN_SEPARATOR,
				keccak256(abi.encode(typehash, owner, spender, value, nonces[owner]++, deadline))
			)
		);
		address recoveredAddress = ecrecover(digest, v, r, s);
		require(recoveredAddress != address(0) && recoveredAddress == owner, "Impermax: INVALID_SIGNATURE");	
	}

	// keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
	bytes32 public constant PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9;
	function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external {
		_checkSignature(owner, spender, value, deadline, v, r, s, PERMIT_TYPEHASH);
		_approve(owner, spender, value);
	}
}

// File: contracts\interfaces\IERC20.sol

pragma solidity >=0.5.0;

interface IERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
}

// File: contracts\interfaces\IPoolToken.sol

pragma solidity >=0.5.0;

interface IPoolToken {

	/*** Impermax ERC20 ***/
	
	event Transfer(address indexed from, address indexed to, uint value);
	event Approval(address indexed owner, address indexed spender, uint value);
	
	function name() external pure returns (string memory);
	function symbol() external pure returns (string memory);
	function decimals() external pure returns (uint8);
	function totalSupply() external view returns (uint);
	function balanceOf(address owner) external view returns (uint);
	function allowance(address owner, address spender) external view returns (uint);
	function approve(address spender, uint value) external returns (bool);
	function transfer(address to, uint value) external returns (bool);
	function transferFrom(address from, address to, uint value) external returns (bool);
	
	function DOMAIN_SEPARATOR() external view returns (bytes32);
	function PERMIT_TYPEHASH() external pure returns (bytes32);
	function nonces(address owner) external view returns (uint);
	function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
	
	/*** Pool Token ***/
	
	event Mint(address indexed sender, address indexed minter, uint mintAmount, uint mintTokens);
	event Redeem(address indexed sender, address indexed redeemer, uint redeemAmount, uint redeemTokens);
	event Sync(uint totalBalance);
	
	function underlying() external view returns (address);
	function factory() external view returns (address);
	function totalBalance() external view returns (uint);
	function MINIMUM_LIQUIDITY() external pure returns (uint);

	function exchangeRate() external returns (uint);
	function mint(address minter) external returns (uint mintTokens);
	function redeem(address redeemer) external returns (uint redeemAmount);
	function skim(address to) external;
	function sync() external;
	
	function _setFactory() external;
}

// File: contracts\PoolToken.sol

pragma solidity =0.5.16;





contract PoolToken is IPoolToken, ImpermaxERC20 {
   	uint internal constant initialExchangeRate = 1e18;
	address public underlying;
	address public factory;
	uint public totalBalance;
	uint public constant MINIMUM_LIQUIDITY = 1000;
	
	event Mint(address indexed sender, address indexed minter, uint mintAmount, uint mintTokens);
	event Redeem(address indexed sender, address indexed redeemer, uint redeemAmount, uint redeemTokens);
	event Sync(uint totalBalance);
	
	/*** Initialize ***/
	
	// called once by the factory
	function _setFactory() external {
		require(factory == address(0), "Impermax: FACTORY_ALREADY_SET");
		factory = msg.sender;
	}
	
	/*** PoolToken ***/
	
	function _update() internal {
		totalBalance = IERC20(underlying).balanceOf(address(this));
		emit Sync(totalBalance);
	}

	function exchangeRate() public returns (uint) 
	{
		uint _totalSupply = totalSupply; // gas savings
		uint _totalBalance = totalBalance; // gas savings
		if (_totalSupply == 0 || _totalBalance == 0) return initialExchangeRate;
		return _totalBalance.mul(1e18).div(_totalSupply);
	}
	
	// this low-level function should be called from another contract
	function mint(address minter) external nonReentrant update returns (uint mintTokens) {
		uint balance = IERC20(underlying).balanceOf(address(this));
		uint mintAmount = balance.sub(totalBalance);
		mintTokens = mintAmount.mul(1e18).div(exchangeRate());

		if(totalSupply == 0) {
			// permanently lock the first MINIMUM_LIQUIDITY tokens
			mintTokens = mintTokens.sub(MINIMUM_LIQUIDITY);
			_mint(address(0), MINIMUM_LIQUIDITY);
		}
		require(mintTokens > 0, "Impermax: MINT_AMOUNT_ZERO");
		_mint(minter, mintTokens);
		emit Mint(msg.sender, minter, mintAmount, mintTokens);
	}

	// this low-level function should be called from another contract
	function redeem(address redeemer) external nonReentrant update returns (uint redeemAmount) {
		uint redeemTokens = balanceOf[address(this)];
		redeemAmount = redeemTokens.mul(exchangeRate()).div(1e18);

		require(redeemAmount > 0, "Impermax: REDEEM_AMOUNT_ZERO");
		require(redeemAmount <= totalBalance, "Impermax: INSUFFICIENT_CASH");
		_burn(address(this), redeemTokens);
		_safeTransfer(redeemer, redeemAmount);
		emit Redeem(msg.sender, redeemer, redeemAmount, redeemTokens);		
	}

	// force real balance to match totalBalance
	function skim(address to) external nonReentrant {
		_safeTransfer(to, IERC20(underlying).balanceOf(address(this)).sub(totalBalance));
	}

	// force totalBalance to match real balance
	function sync() external nonReentrant update {}
	
	/*** Utilities ***/
	
	// same safe transfer function used by UniSwapV2 (with fixed underlying)
	bytes4 private constant SELECTOR = bytes4(keccak256(bytes("transfer(address,uint256)")));
	function _safeTransfer(address to, uint amount) internal {
		(bool success, bytes memory data) = underlying.call(abi.encodeWithSelector(SELECTOR, to, amount));
		require(success && (data.length == 0 || abi.decode(data, (bool))), "Impermax: TRANSFER_FAILED");
	}
	
	// prevents a contract from calling itself, directly or indirectly.
	bool internal _notEntered = true;
	modifier nonReentrant() {
		require(_notEntered, "Impermax: REENTERED");
		_notEntered = false;
		_;
		_notEntered = true;
	}
	
	// update totalBalance with current balance
	modifier update() {
		_;
		_update();
	}
}

// File: contracts\CStorage.sol

pragma solidity =0.5.16;


contract CStorage {
	address public borrowable0;
	address public borrowable1;
	uint public safetyMarginSqrt = 1.03923e18; // safetyMargin: 108%
	uint public mTolerance = 1e8;
	uint public liquidationIncentive = 1.02e18; //2%
	uint public liquidationFee = 0.02e18; //2%
	
	function liquidationPenalty() public view returns (uint) {
		return liquidationIncentive + liquidationFee;
	}
}

// File: contracts\interfaces\IFactory.sol

pragma solidity >=0.5.0;

interface IFactory {
	event LendingPoolInitialized(address indexed uniswapV2Pair, address indexed token0, address indexed token1,
		address collateral, address borrowable0, address borrowable1, uint lendingPoolId);
	event NewPendingAdmin(address oldPendingAdmin, address newPendingAdmin);
	event NewAdmin(address oldAdmin, address newAdmin);
	event NewReservesPendingAdmin(address oldReservesPendingAdmin, address newReservesPendingAdmin);
	event NewReservesAdmin(address oldReservesAdmin, address newReservesAdmin);
	event NewReservesManager(address oldReservesManager, address newReservesManager);
	
	function admin() external view returns (address);
	function pendingAdmin() external view returns (address);
	function reservesAdmin() external view returns (address);
	function reservesPendingAdmin() external view returns (address);
	function reservesManager() external view returns (address);

	function getLendingPool(address uniswapV2Pair) external view returns (
		bool initialized, 
		uint24 lendingPoolId, 
		address collateral, 
		address borrowable0, 
		address borrowable1
	);
	function allLendingPools(uint) external view returns (address uniswapV2Pair);
	function allLendingPoolsLength() external view returns (uint);
	
	function bDeployer() external view returns (address);
	function cDeployer() external view returns (address);

	function createCollateral(address uniswapV2Pair) external returns (address collateral);
	function createBorrowable0(address uniswapV2Pair) external returns (address borrowable0);
	function createBorrowable1(address uniswapV2Pair) external returns (address borrowable1);
	function initializeLendingPool(address uniswapV2Pair) external;

	function _setPendingAdmin(address newPendingAdmin) external;
	function _acceptAdmin() external;
	function _setReservesPendingAdmin(address newPendingAdmin) external;
	function _acceptReservesAdmin() external;
	function _setReservesManager(address newReservesManager) external;
}

// File: contracts\CSetter.sol

pragma solidity =0.5.16;




contract CSetter is PoolToken, CStorage {

    uint256 public constant SAFETY_MARGIN_SQRT_MIN = 1.00e18; //safetyMargin: 100%
    uint256 public constant SAFETY_MARGIN_SQRT_MAX = 1.224744e18; //safetyMargin: 150%
	uint public constant LIQUIDATION_INCENTIVE_MIN = 1.00e18; //100%
	uint public constant LIQUIDATION_INCENTIVE_MAX = 1.05e18; //105%
	uint public constant LIQUIDATION_FEE_MAX = 0.08e18; //8%
    uint256 public constant M_TOLERANCE_MIN = 1;
    uint256 public constant M_TOLERANCE_MAX = 1e12;

    event NewSafetyMargin(uint256 newSafetyMarginSqrt);
	event NewLiquidationIncentive(uint newLiquidationIncentive);
	event NewLiquidationFee(uint newLiquidationFee);
    event NewMTolerance(uint256 newMTolerance);
	
	// called once by the factory at the time of deployment
	function _initialize (
		string calldata _name,
		string calldata _symbol,
		address _underlying, 
		address _borrowable0, 
		address _borrowable1
	) external {
		require(msg.sender == factory, "Impermax: UNAUTHORIZED"); // sufficient check
		_setName(_name, _symbol);
		underlying = _underlying;
		borrowable0 = _borrowable0;
		borrowable1 = _borrowable1;
	}

	function _setSafetyMarginSqrt(uint newSafetyMargin) external nonReentrant {
		_checkSetting(newSafetyMargin, SAFETY_MARGIN_SQRT_MIN, SAFETY_MARGIN_SQRT_MAX);
		safetyMarginSqrt = newSafetyMargin;
		emit NewSafetyMargin(newSafetyMargin);
	}

	function _setLiquidationIncentive(uint newLiquidationIncentive) external nonReentrant {
		_checkSetting(newLiquidationIncentive, LIQUIDATION_INCENTIVE_MIN, LIQUIDATION_INCENTIVE_MAX);
		liquidationIncentive = newLiquidationIncentive;
		emit NewLiquidationIncentive(newLiquidationIncentive);
	}

	function _setLiquidationFee(uint newLiquidationFee) external nonReentrant {
		_checkSetting(newLiquidationFee, 0, LIQUIDATION_FEE_MAX);
		liquidationFee = newLiquidationFee;
		emit NewLiquidationFee(newLiquidationFee);
	}

	function _setMTolerance(uint newMTolerance) external nonReentrant {
		_checkSetting(newMTolerance, M_TOLERANCE_MIN, M_TOLERANCE_MAX);
		mTolerance = newMTolerance;
		emit NewMTolerance(newMTolerance);
	}
	
	function _checkSetting(uint parameter, uint min, uint max) internal view {
		_checkAdmin();
		require(parameter >= min, "Impermax: INVALID_SETTING");
		require(parameter <= max, "Impermax: INVALID_SETTING");
	}
	
	function _checkAdmin() internal view {
		require(msg.sender == IFactory(factory).admin(), "Impermax: UNAUTHORIZED");
	}
}

// File: contracts\interfaces\IBorrowable.sol

pragma solidity >=0.5.0;

interface IBorrowable {

	/*** Impermax ERC20 ***/
	
	event Transfer(address indexed from, address indexed to, uint value);
	event Approval(address indexed owner, address indexed spender, uint value);
	
	function name() external pure returns (string memory);
	function symbol() external pure returns (string memory);
	function decimals() external pure returns (uint8);
	function totalSupply() external view returns (uint);
	function balanceOf(address owner) external view returns (uint);
	function allowance(address owner, address spender) external view returns (uint);
	function approve(address spender, uint value) external returns (bool);
	function transfer(address to, uint value) external returns (bool);
	function transferFrom(address from, address to, uint value) external returns (bool);
	
	function DOMAIN_SEPARATOR() external view returns (bytes32);
	function PERMIT_TYPEHASH() external pure returns (bytes32);
	function nonces(address owner) external view returns (uint);
	function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
	
	/*** Pool Token ***/
	
	event Mint(address indexed sender, address indexed minter, uint mintAmount, uint mintTokens);
	event Redeem(address indexed sender, address indexed redeemer, uint redeemAmount, uint redeemTokens);
	event Sync(uint totalBalance);
	
	function underlying() external view returns (address);
	function factory() external view returns (address);
	function totalBalance() external view returns (uint);
	function MINIMUM_LIQUIDITY() external pure returns (uint);

	function exchangeRate() external returns (uint);
	function mint(address minter) external returns (uint mintTokens);
	function redeem(address redeemer) external returns (uint redeemAmount);
	function skim(address to) external;
	function sync() external;
	
	function _setFactory() external;
	
	/*** Borrowable ***/

	event BorrowApproval(address indexed owner, address indexed spender, uint value);
	event Borrow(address indexed sender, address indexed borrower, address indexed receiver, uint borrowAmount, uint repayAmount, uint accountBorrowsPrior, uint accountBorrows, uint totalBorrows);
	event Liquidate(address indexed sender, address indexed borrower, address indexed liquidator, uint seizeTokens, uint repayAmount, uint accountBorrowsPrior, uint accountBorrows, uint totalBorrows);
	
	function BORROW_FEE() external pure returns (uint);
	function collateral() external view returns (address);
	function reserveFactor() external view returns (uint);
	function exchangeRateLast() external view returns (uint);
	function borrowIndex() external view returns (uint);
	function totalBorrows() external view returns (uint);
	function borrowAllowance(address owner, address spender) external view returns (uint);
	function borrowBalance(address borrower) external view returns (uint);	
	function borrowTracker() external view returns (address);
	
	function BORROW_PERMIT_TYPEHASH() external pure returns (bytes32);
	function borrowApprove(address spender, uint256 value) external returns (bool);
	function borrowPermit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
	function borrow(address borrower, address receiver, uint borrowAmount, bytes calldata data) external;
	function liquidate(address borrower, address liquidator) external returns (uint seizeTokens);
	function trackBorrow(address borrower) external;
	
	/*** Borrowable Interest Rate Model ***/

	event AccrueInterest(uint interestAccumulated, uint borrowIndex, uint totalBorrows);
	event CalculateKink(uint kinkRate);
	event CalculateBorrowRate(uint borrowRate);
	
	function KINK_BORROW_RATE_MAX() external pure returns (uint);
	function KINK_BORROW_RATE_MIN() external pure returns (uint);
	function KINK_MULTIPLIER() external pure returns (uint);
	function borrowRate() external view returns (uint);
	function kinkBorrowRate() external view returns (uint);
	function kinkUtilizationRate() external view returns (uint);
	function adjustSpeed() external view returns (uint);
	function rateUpdateTimestamp() external view returns (uint32);
	function accrualTimestamp() external view returns (uint32);
	
	function accrueInterest() external;
	
	/*** Borrowable Setter ***/

	event NewReserveFactor(uint newReserveFactor);
	event NewKinkUtilizationRate(uint newKinkUtilizationRate);
	event NewAdjustSpeed(uint newAdjustSpeed);
	event NewBorrowTracker(address newBorrowTracker);

	function RESERVE_FACTOR_MAX() external pure returns (uint);
	function KINK_UR_MIN() external pure returns (uint);
	function KINK_UR_MAX() external pure returns (uint);
	function ADJUST_SPEED_MIN() external pure returns (uint);
	function ADJUST_SPEED_MAX() external pure returns (uint);
	
	function _initialize (
		string calldata _name, 
		string calldata _symbol,
		address _underlying, 
		address _collateral
	) external;
	function _setReserveFactor(uint newReserveFactor) external;
	function _setKinkUtilizationRate(uint newKinkUtilizationRate) external;
	function _setAdjustSpeed(uint newAdjustSpeed) external;
	function _setBorrowTracker(address newBorrowTracker) external;
}

// File: contracts\interfaces\ICollateral.sol

pragma solidity >=0.5.0;

interface ICollateral {

	/*** Impermax ERC20 ***/
	
	event Transfer(address indexed from, address indexed to, uint value);
	event Approval(address indexed owner, address indexed spender, uint value);
	
	function name() external pure returns (string memory);
	function symbol() external pure returns (string memory);
	function decimals() external pure returns (uint8);
	function totalSupply() external view returns (uint);
	function balanceOf(address owner) external view returns (uint);
	function allowance(address owner, address spender) external view returns (uint);
	function approve(address spender, uint value) external returns (bool);
	function transfer(address to, uint value) external returns (bool);
	function transferFrom(address from, address to, uint value) external returns (bool);
	
	function DOMAIN_SEPARATOR() external view returns (bytes32);
	function PERMIT_TYPEHASH() external pure returns (bytes32);
	function nonces(address owner) external view returns (uint);
	function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
	
	/*** Pool Token ***/
	
	event Mint(address indexed sender, address indexed minter, uint mintAmount, uint mintTokens);
	event Redeem(address indexed sender, address indexed redeemer, uint redeemAmount, uint redeemTokens);
	event Sync(uint totalBalance);
	
	function underlying() external view returns (address);
	function factory() external view returns (address);
	function totalBalance() external view returns (uint);
	function MINIMUM_LIQUIDITY() external pure returns (uint);

	function exchangeRate() external returns (uint);
	function mint(address minter) external returns (uint mintTokens);
	function redeem(address redeemer) external returns (uint redeemAmount);
	function skim(address to) external;
	function sync() external;
	
	function _setFactory() external;
	
	/*** Collateral ***/
	
	function borrowable0() external view returns (address);
	function borrowable1() external view returns (address);
	function safetyMarginSqrt() external view returns (uint);
	function liquidationIncentive() external view returns (uint);
	function liquidationFee() external view returns (uint);
	function liquidationPenalty() external view returns (uint);

	function getTwapReserves() external returns(uint112 twapReserve0, uint112 twapReserve1);
	function getPrices() external returns (uint price0, uint price1);
	function tokensUnlocked(address from, uint value) external returns (bool);
	function accountLiquidityAmounts(address account, uint amount0, uint amount1) external returns (uint liquidity, uint shortfall);
	function accountLiquidity(address account) external returns (uint liquidity, uint shortfall);
	function canBorrow(address account, address borrowable, uint accountBorrows) external returns (bool);
	function seize(address liquidator, address borrower, uint repayAmount) external returns (uint seizeTokens);
	function flashRedeem(address redeemer, uint redeemAmount, bytes calldata data) external;
	
	/*** Collateral Setter ***/
	
	event NewSafetyMargin(uint newSafetyMarginSqrt);
	event NewLiquidationIncentive(uint newLiquidationIncentive);
	event NewLiquidationFee(uint newLiquidationFee);

	function SAFETY_MARGIN_SQRT_MIN() external pure returns (uint);
	function SAFETY_MARGIN_SQRT_MAX() external pure returns (uint);
	function LIQUIDATION_INCENTIVE_MIN() external pure returns (uint);
	function LIQUIDATION_INCENTIVE_MAX() external pure returns (uint);
	function LIQUIDATION_FEE_MAX() external pure returns (uint);
	
	function _initialize (
		string calldata _name, 
		string calldata _symbol,
		address _underlying, 
		address _borrowable0, 
		address _borrowable1
	) external;
	function _setSafetyMarginSqrt(uint newSafetyMargin) external;
	function _setLiquidationIncentive(uint newLiquidationIncentive) external;
	function _setLiquidationFee(uint newLiquidationFee) external;
}

// File: contracts\interfaces\IImpermaxCallee.sol

pragma solidity >=0.5.0;

interface IImpermaxCallee {
    function impermaxBorrow(address sender, address borrower, uint borrowAmount, bytes calldata data) external;
    function impermaxRedeem(address sender, uint redeemAmount, bytes calldata data) external;
}

// File: contracts\interfaces\IBaseV1Pair.sol

pragma solidity >=0.5.0;

interface IBaseV1Pair {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function stable() external view returns (bool);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
	
    function token0() external view returns (address);
    function token1() external view returns (address);
    function tokens() external view returns (address, address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);

    function observationLength() external view returns (uint);
    function observations(uint) external view returns (
        uint timestamp,
        uint reserve0Cumulative,
        uint reserve1Cumulative
    );
    function currentCumulativePrices() external view returns (
        uint reserve0Cumulative,
        uint reserve1Cumulative,
        uint timestamp
    );

    function metadata() external view returns (uint, uint, uint, uint, bool, address, address);

    function feeRatio() external view returns (uint);
	
	function sync() external;
}

// File: contracts\libraries\Math.sol

pragma solidity =0.5.16;

// a library for performing various math operations
// forked from: https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/libraries/Math.sol

library Math {
    function min(uint x, uint y) internal pure returns (uint z) {
        z = x < y ? x : y;
    }

    // babylonian method (https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method)
    function sqrt(uint y) internal pure returns (uint z) {
        if (y > 3) {
            z = y;
            uint x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }
}

// File: contracts\Collateral.sol

pragma solidity =0.5.16;











contract Collateral is ICollateral, PoolToken, CStorage, CSetter {
	constructor() public {}

	/*** Collateralization Model ***/

	function getTwapReserves() public returns(uint112 twapReserve0, uint112 twapReserve1) {
		uint length = IBaseV1Pair(underlying).observationLength();
		(uint lastTimestamp, uint lastReserve0Cumulative, uint lastReserve1Cumulative) = IBaseV1Pair(underlying).observations(length-2);
		(uint reserve0Cumulative, uint reserve1Cumulative, uint timestamp) = IBaseV1Pair(underlying).currentCumulativePrices();
		uint timeElapsed = timestamp - lastTimestamp;
		twapReserve0 = safe112((reserve0Cumulative - lastReserve0Cumulative) / timeElapsed);
		twapReserve1 = safe112((reserve1Cumulative - lastReserve1Cumulative) / timeElapsed);
	}

	function getReserves() public returns (uint112 reserve0, uint112 reserve1) {
		(uint _twapReserve0, uint _twapReserve1) = getTwapReserves();

		(uint decimals0, uint decimals1,,,,,) = IBaseV1Pair(underlying).metadata();
		(uint _currReserve0, uint _currReserve1, ) = IBaseV1Pair(underlying).getReserves();
		
		uint twapK = _k(_twapReserve0, _twapReserve1, decimals0, decimals1);
		uint currK = _k(_currReserve0, _currReserve1, decimals0, decimals1);

		uint _adjustment = Math.sqrt(Math.sqrt(currK.mul(1e18).div(twapK).mul(1e18)).mul(1e18));
		reserve0 = safe112(_twapReserve0.mul(_adjustment).div(1e18));
		reserve1 = safe112(_twapReserve1.mul(_adjustment).div(1e18));

		require(reserve0 > 100 && reserve1 > 100, "Impermax: INSUFFICIENT_RESERVES");
	}

	function getPrices() public returns (uint price0, uint price1) {
		(uint reserve0, uint reserve1) = getReserves();
		uint t = IBaseV1Pair(underlying).totalSupply();
		(uint decimals0, uint decimals1,,,,,) = IBaseV1Pair(underlying).metadata();
		
		reserve0 = reserve0.mul(1e18).div(decimals0);
		reserve1 = reserve1.mul(1e18).div(decimals1);
		uint f;
		{
			uint a = reserve0.mul(reserve0).div(1e18);
			uint b = reserve1.mul(reserve1).div(1e18);
			f = a.mul(3).add(b).mul(1e18).div(b.mul(3).add(a));
		}
		price0 = t.mul(f).div(f.add(1e18)).mul(1e18).div(reserve0).mul(1e18).div(decimals0);
		price1 = t.mul(1e18).div(f.add(1e18)).mul(1e18).div(reserve1).mul(1e18).div(decimals1);
	}

	function _k(uint x, uint y, uint d0, uint d1) internal pure returns (uint) {
		uint _x = x.mul(1e18).div(d0);
		uint _y = y.mul(1e18).div(d1);
		uint _a = _x.mul(_y).div(1e18);
		uint _b = _x.mul(_x).div(1e18).add(_y.mul(_y).div(1e18));
		return _a.mul(_b).div(1e18);  // x3y+y3x >= k
	}

	function _fm(uint p1, uint m) internal pure returns (bool) {
		uint a = m.mul(m).div(1e18).mul(m).div(1e18).add(m.mul(3));
		uint b = p1.mul(3).mul(m).div(1e18).mul(m).div(1e18);
		return a > b && a.sub(b) > p1;
	}

	function _get_m(uint p1, uint a, uint b, uint _mTolerance) internal pure returns (uint m) {
		for (uint i = 0; i < 255; i++) {
			uint mid = b.sub(a).div(2);
			m = a.add(mid);
			if (mid <= _mTolerance) {
				return m;
			}
			if (_fm(p1, m)) {
				b = m;
			} else {
				a = m;
			}
		}
	}

	function _reserveRatioSwingGivenPriceSwing(ReserveInfo memory reserveInfo, uint _priceSwing, uint _mTolerance) internal pure returns (uint reserveRatioSwing) {
		if (_priceSwing == 1e18) {
			return 1e18;
		}

		uint x = reserveInfo.x;
		uint y = reserveInfo.y;

		uint a = x.mul(x).div(1e18);
		uint b = y.mul(y).div(1e18);
		uint c = a.mul(3).add(b);
		uint d = b.mul(3).add(a);
		uint p1 = y.mul(c).div(x);
		p1 = p1.mul(1e18).div(d);
		p1 = p1.mul(_priceSwing).div(1e18);

		(uint lower, uint upper) = p1 > 1e18 ? (uint(1e18), p1.mul(3)) : (p1.div(3), uint(1e18));
		reserveRatioSwing = _get_m(p1, lower, upper, _mTolerance);
		reserveRatioSwing = reserveRatioSwing.mul(x).div(y);
	}

	function _safetyMarginReserveRatioSwings(ReserveInfo memory reserveInfo, uint _safetyMarginSqrt, uint _mTolerance) internal pure returns (uint ratioSwingA, uint ratioSwingB) {
		uint _safetyMargin = _safetyMarginSqrt * _safetyMarginSqrt / 1e18;
		ratioSwingA = _reserveRatioSwingGivenPriceSwing(reserveInfo, _safetyMargin, _mTolerance);
		ratioSwingB = _reserveRatioSwingGivenPriceSwing(reserveInfo, uint(1e36).div(_safetyMargin), _mTolerance);
	}

	function _reserveDeltas(ReserveInfo memory reserveInfo, uint m) internal pure returns (uint deltaX, uint deltaY, uint priceFactor) {
		uint x = reserveInfo.x;
		uint y = reserveInfo.y;
		uint a = x.mul(x).div(1e18);
		uint b = y.mul(y).div(1e18);
		uint c = b.mul(m).div(1e18).mul(m).div(1e18);
		uint d = m.mul(a.add(c)).div(1e18);
		deltaX = Math.sqrt(Math.sqrt(a.add(b).mul(1e18).div(d).mul(1e18)).mul(1e18));
		deltaY = deltaX.mul(m).div(1e18);
		priceFactor = a.mul(3).add(c).mul(1e18).div(c.mul(3).add(a));
	}

	struct ReserveInfo {
		uint x;
		uint y;
	}

	// returns liquidity in  collateral's underlying
	function _calculateLiquidity(uint _amountCollateral, uint _amount0, uint _amount1) internal returns (uint liquidity, uint shortfall) {
		ReserveInfo memory reserveInfo;
		(uint reserve0, uint reserve1) = getReserves();
		{
			(uint decimals0, uint decimals1,,,,,) = IBaseV1Pair(underlying).metadata();
			reserveInfo.x = reserve0.mul(1e18).div(decimals0);
			reserveInfo.y = reserve1.mul(1e18).div(decimals1);
		}
		(uint ratioSwingA, uint ratioSwingB) = _safetyMarginReserveRatioSwings(reserveInfo, safetyMarginSqrt, mTolerance);
		uint totalUnderlying = IBaseV1Pair(underlying).totalSupply();
		uint collateralNeededA;
		uint amount0 = _amount0;
		uint amount1 = _amount1;
		uint amountCollateral = _amountCollateral;
		{
			(uint dx1, uint dy1, uint a1) = _reserveDeltas(reserveInfo, ratioSwingA);
			uint price0 = totalUnderlying.mul(1e18).div(reserve0);
			price0 = price0.mul(1e18).div(dx1);
			price0 = price0.mul(a1).div(a1.add(1e18));
			uint price1 = totalUnderlying.mul(1e18).div(reserve1);
			price1 = price1.mul(1e18).div(dy1);
			price1 = price1.mul(1e18).div(a1.add(1e18));
			collateralNeededA = amount0.mul(price0).div(1e18);
			collateralNeededA = collateralNeededA.add(amount1.mul(price1).div(1e18));
			collateralNeededA = collateralNeededA.mul(liquidationPenalty()).div(1e18);
		}
		uint collateralNeededB;
		{
			(uint dx2, uint dy2, uint a2) = _reserveDeltas(reserveInfo, ratioSwingB);
			uint price0 = totalUnderlying.mul(1e18).div(reserve0);
			price0 = price0.mul(1e18).div(dx2);
			price0 = price0.mul(a2).div(a2.add(1e18));
			uint price1 = totalUnderlying.mul(1e18).div(reserve1);
			price1 = price1.mul(1e18).div(dy2);
			price1 = price1.mul(1e18).div(a2.add(1e18));
			collateralNeededB = amount0.mul(price0).div(1e18);
			collateralNeededB = collateralNeededB.add(amount1.mul(price1).div(1e18));
			collateralNeededB = collateralNeededB.mul(liquidationPenalty()).div(1e18);
		}
		uint collateralNeeded = (collateralNeededA > collateralNeededB) ? collateralNeededA : collateralNeededB;
		if (amountCollateral >= collateralNeeded) {
			return (amountCollateral - collateralNeeded, 0);
		} else {
			return (0, collateralNeeded - amountCollateral);
		}
	}

	/*** ERC20 ***/

	function _transfer(address from, address to, uint value) internal {
		require(tokensUnlocked(from, value), "Impermax: INSUFFICIENT_LIQUIDITY");
		super._transfer(from, to, value);
	}

	function tokensUnlocked(address from, uint value) public returns (bool) {
		uint _balance = balanceOf[from];
		if (value > _balance) return false;
		uint finalBalance = _balance - value;
		uint amountCollateral = finalBalance.mul(exchangeRate()).div(1e18);
		uint amount0 = IBorrowable(borrowable0).borrowBalance(from);
		uint amount1 = IBorrowable(borrowable1).borrowBalance(from);
		(, uint shortfall) = _calculateLiquidity(amountCollateral, amount0, amount1);
		return shortfall == 0;
	}

	/*** Collateral ***/

	function accountLiquidityAmounts(address borrower, uint amount0, uint amount1) public returns (uint liquidity, uint shortfall) {
		if (amount0 == uint(-1)) amount0 = IBorrowable(borrowable0).borrowBalance(borrower);
		if (amount1 == uint(-1)) amount1 = IBorrowable(borrowable1).borrowBalance(borrower);
		uint amountCollateral = balanceOf[borrower].mul(exchangeRate()).div(1e18);
		return _calculateLiquidity(amountCollateral, amount0, amount1);
	}

	function accountLiquidity(address borrower) public returns (uint liquidity, uint shortfall) {
		return accountLiquidityAmounts(borrower, uint(-1), uint(-1));
	}

	function canBorrow(address borrower, address borrowable, uint accountBorrows) public returns (bool) {
		address _borrowable0 = borrowable0;
		address _borrowable1 = borrowable1;
		require(borrowable == _borrowable0 || borrowable == _borrowable1, "Impermax: INVALID_BORROWABLE" );
		uint amount0 = borrowable == _borrowable0 ? accountBorrows : uint(-1);
		uint amount1 = borrowable == _borrowable1 ? accountBorrows : uint(-1);
		(, uint shortfall) = accountLiquidityAmounts(borrower, amount0, amount1);
		return shortfall == 0;
	}

	// this function must be called from borrowable0 or borrowable1
	function seize(address liquidator, address borrower, uint repayAmount) external returns (uint seizeTokens) {
		require(msg.sender == borrowable0 || msg.sender == borrowable1, "Impermax: UNAUTHORIZED");

		(, uint shortfall) = accountLiquidity(borrower);
		require(shortfall > 0, "Impermax: INSUFFICIENT_SHORTFALL");

		uint price;
		if (msg.sender == borrowable0) (price, ) = getPrices();
		else (, price) = getPrices();

		uint collateralEquivalent = repayAmount.mul(price).div( exchangeRate() );

		seizeTokens = collateralEquivalent.mul(liquidationIncentive).div(1e18);

		balanceOf[borrower] = balanceOf[borrower].sub(seizeTokens, "Impermax: LIQUIDATING_TOO_MUCH");
		balanceOf[liquidator] = balanceOf[liquidator].add(seizeTokens);
		emit Transfer(borrower, liquidator, seizeTokens);

		if (liquidationFee > 0) {
			uint seizeFee = collateralEquivalent.mul(liquidationFee).div(1e18);
			address reservesManager = IFactory(factory).reservesManager();
			balanceOf[borrower] = balanceOf[borrower].sub(seizeFee, "Impermax: LIQUIDATING_TOO_MUCH");
			balanceOf[reservesManager] = balanceOf[reservesManager].add(seizeFee);
			emit Transfer(borrower, reservesManager, seizeFee);
		}
	}

	// this low-level function should be called from another contract
	function flashRedeem(address redeemer, uint redeemAmount, bytes calldata data) external nonReentrant update {
		require(redeemAmount <= totalBalance, "Impermax: INSUFFICIENT_CASH");

		// optimistically transfer funds
		_safeTransfer(redeemer, redeemAmount);
		if (data.length > 0) IImpermaxCallee(redeemer).impermaxRedeem(msg.sender, redeemAmount, data);

		uint redeemTokens = balanceOf[address(this)];
		uint declaredRedeemTokens = redeemAmount.mul(1e18).div( exchangeRate() ).add(1); // rounded up
		require(redeemTokens >= declaredRedeemTokens, "Impermax: INSUFFICIENT_REDEEM_TOKENS");

		_burn(address(this), redeemTokens);
		emit Redeem(msg.sender, redeemer, redeemAmount, redeemTokens);
	}

	function safe112(uint n) internal pure returns (uint112) {
		require(n < 2**112, "Impermax: SAFE112");
		return uint112(n);
	}
}

// File: contracts\interfaces\ICDeployer.sol

pragma solidity >=0.5.0;

interface ICDeployer {
	function deployCollateral(address uniswapV2Pair) external returns (address collateral);
}

// File: contracts\CDeployer.sol

pragma solidity =0.5.16;



/*
 * This contract is used by the Factory to deploy Collateral(s)
 * The bytecode would be too long to fit in the Factory
 */
 
contract CDeployerStable is ICDeployer {
	constructor () public {}
	
	function deployCollateral(address uniswapV2Pair) external returns (address collateral) {
		bytes memory bytecode = type(Collateral).creationCode;
		bytes32 salt = keccak256(abi.encodePacked(msg.sender, uniswapV2Pair));
		assembly {
			collateral := create2(0, add(bytecode, 32), mload(bytecode), salt)
		}
	}
}
