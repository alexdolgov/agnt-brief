// SPDX-License-Identifier: MIT
/*
  ___________________________________  ___
 /   _____/\__    ___/\__    ___/\   \/  / 
 \_____  \   |    |     |    |    \     /  
 /        \  |    |     |    |    /     \  
/_______  /  |____|     |____|   /___/\  \ 
        \/                             \_/ 
*/

pragma solidity >=0.8.24 <0.9.0;

import {Context} from "./abstract/Context.sol";
import {Ownable} from "./abstract/Ownable.sol";
import {IERC20Errors} from "./interface/IERC20Errors.sol";
import {IERC20TokenRebase} from "./interface/IERC20TokenRebase.sol";

/**
 * @title STTX Token
 * @dev Advanced rebase token with dynamic supply management
 * @notice Elastic supply token with configurable rebase mechanics
 */
contract STTX is Context, Ownable, IERC20TokenRebase, IERC20Errors {
    /*//////////////////////////////////////////////////////////////
                        TOKEN METADATA
    //////////////////////////////////////////////////////////////*/
    /// @notice Token name
    string private _name;
    /// @notice Token symbol
    string private _symbol;
    /// @notice Token decimal places
    uint8 private immutable _decimals;
    /*//////////////////////////////////////////////////////////////
                        SUPPLY MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /// @notice Maximum possible token supply
    /// @dev Prevents unlimited token creation
    uint256 private immutable _maxSupply;
    /// @notice Current total token supply
    uint256 private _totalSupply;
    /// @notice Total supply in normal mode
    /// @dev Scaled by normalDivisor
    uint256 private _normalSupply;
    /// @notice Total supply in safe mode
    /// @dev Scaled by SAFE_DIVISOR
    uint256 private _safeSupply;
    /// @notice Remaining supply that can be burned
    uint256 public maxSupplyBurned;
    /// @notice Maximum rebased supply
    uint256 public maxSupplyRebased;
    /// @notice Next scheduled rebase timestamp
    uint256 public nextRebaseTime;
    /// @notice Divisor for normal balance calculations
    uint256 public normalDivisor = 1e8;
    /// @notice Rebase percentage in basis points
    uint256 public rebaseBasisPoints = 21;
    /// @notice Interval between rebase operations
    uint256 public rebaseInterval = 21 minutes;
    /*//////////////////////////////////////////////////////////////
                            REBASE CONSTANTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Minimum allowed rebase interval
    uint256 public constant MIN_REBASE_INTERVAL = 21 minutes;
    /// @notice Maximum allowed rebase interval
    uint256 public constant MAX_REBASE_INTERVAL = 21 days;
    /// @notice Maximum number of intervals processed in a single rebase
    uint256 public constant MAX_INTERVALS_PER_REBASE = 7;
    /// @notice Maximum allowed rebase basis points
    uint256 public constant MAX_REBASE_BASIS_POINTS = 21;
    /// @notice Maximum allowed normal divisor
    uint256 public constant MAX_NORMAL_DIVISOR = 1e42;
    /// @notice Fixed divisor for safe mode balances
    uint256 public constant SAFE_DIVISOR = 1e8;
    /// @notice Precision constant for calculations with 10,000 as the base unit
    uint256 public constant TENK_PRECISION = 10_000;
    /*//////////////////////////////////////////////////////////////
                        PROTOCOL ADDRESSES
    //////////////////////////////////////////////////////////////*/
    /// @notice Address responsible for floor price operations
    address public floor;
    /// @notice Address authorized to mint tokens
    address public minter;
    /*//////////////////////////////////////////////////////////////
                        USER STATE TRACKING
    //////////////////////////////////////////////////////////////*/
    /// @notice User token balances
    /// @dev Balances are scaled based on mode (normal/safe)
    mapping(address => uint256) private _balances;
    /// @notice Token spending allowances
    /// @dev Nested mapping of owner → spender → allowance
    mapping(address => mapping(address spender => uint256)) private _allowances;
    /// @notice Tracks addresses in safe mode
    mapping(address => bool) private _safes;
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when rebase basis points are changed
    event RebaseBasisPointsChanged(uint256 rebaseBasisPoints);
    /// @notice Emitted when rebase interval is modified
    event RebaseIntervalChanged(uint256 rebaseInterval);
    /// @notice Emitted when tokens are toasted (burned)
    event Toast(address indexed toaster, uint256 value, uint256 maxSupply);
    /// @notice Emitted when a safe is created for an address
    event SafeCreated(address indexed safe);
    /// @notice Emitted when a safe is destroyed
    event SafeDestroyed(address indexed safe);
    /// @notice Emitted when the divisor is updated during rebase
    event DivisorUpdated(uint256 newDivisor);
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Thrown when a zero address is provided
    error ZeroAddress();
    /// @notice Thrown when an operation is attempted on a non-safe address
    error NotASafe();
    /// @notice Thrown when attempting to create a safe for an existing safe
    error AlreadyASafe();
    /// @notice Thrown when rebase interval is below minimum
    error RebaseIntervalBelowLimit();
    /// @notice Thrown when rebase interval exceeds maximum
    error RebaseIntervalAboveLimit();
    /// @notice Thrown when rebase basis points exceed maximum
    error RebaseBasisPointsAboveLimit();
    /// @notice Thrown when max supply would be exceeded
    error MaxSupplyReached();
    /// @notice Thrown when minter is already set
    error MinterAlreadySet();
    /// @notice Thrown when floor address is already set
    error FloorAlreadySet();
    /**
     * @notice Access control modifier
     */
    modifier onlyMinter() {
        if (address(minter) != _msgSender()) {
            revert UnauthorizedAccount(_msgSender());
        }
        _;
    }
    /**
     * @notice Access control modifier
     */
    modifier onlyFloor() {
        if (address(floor) != _msgSender()) {
            revert UnauthorizedAccount(_msgSender());
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Initializes the STTX token
     * @param name_ Token name
     * @param symbol_ Token symbol
     * @param decimals_ Token decimal places
     * @param maxSupply_ Maximum token supply
     *
     * @dev Sets initial token configuration and prepares first rebase
     *
     * Requirements:
     * · Non-zero token metadata
     *
     * Effects:
     * · Sets token metadata
     * · Initializes supply tracking
     * · Sets first rebase time
     */
    constructor(
        string memory name_,
        string memory symbol_,
        uint8 decimals_,
        uint256 maxSupply_
    ) {
        _name = name_;
        _symbol = symbol_;
        _decimals = decimals_;
        _maxSupply = maxSupply_;
        maxSupplyBurned = maxSupply_;
        maxSupplyRebased = maxSupply_;
        _setNextRebaseTime();
    }

    /*//////////////////////////////////////////////////////////////
                        CONFIGURATION FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Sets the minter address
     * @param minter_ Address authorized to mint tokens
     *
     * Requirements:
     * · Only callable by owner
     * · Non-zero address
     * · Minter not previously set
     *
     * Effects:
     * · Sets minter address
     */
    function setMinter(address minter_) external onlyOwner {
        if (minter != address(0)) revert MinterAlreadySet();
        _ensureNonzeroAddress(minter_);
        minter = minter_;
    }

    /**
     * @notice Sets the floor address
     * @param floor_ Address responsible for floor operations
     *
     * Requirements:
     * · Only callable by owner
     * · Non-zero address
     * · Floor not previously set
     *
     * Effects:
     * · Sets floor address
     */
    function setFloor(address floor_) external onlyOwner {
        if (floor != address(0)) revert FloorAlreadySet();
        _ensureNonzeroAddress(floor_);
        floor = floor_;
    }

    /*//////////////////////////////////////////////////////////////
                        CORE TOKEN OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Mints new tokens
     * @param to Recipient address
     * @param value Amount of tokens to mint
     *
     * Requirements:
     * · Only callable by minter
     * · Within max supply limit
     *
     * Effects:
     * · Increases total supply
     * · Increases recipient balance
     */
    function mint(address to, uint256 value) external onlyMinter {
        if (_maxSupply != 0 && _totalSupply + value > _maxSupply) {
            revert MaxSupplyReached();
        }
        if (to == address(0)) revert ERC20InvalidReceiver(address(0));
        _update(address(0), to, value);
    }

    /**
     * @notice Burns tokens
     * @param from Address to burn tokens from
     * @param value Amount of tokens to burn
     *
     * Requirements:
     * · Only callable by floor address
     *
     * Effects:
     * · Decreases total supply
     * · Decreases sender balance
     * · Updates max supply burned
     */
    function burn(address from, uint256 value) external onlyFloor {
        maxSupplyBurned -= value;
        emit Toast(_msgSender(), value, maxSupplyBurned);
        if (from == address(0)) revert ERC20InvalidSender(address(0));
        _update(from, address(0), value);
    }

    /**
     * @notice Triggers a token rebase
     * @dev Adjusts token supply based on configured parameters
     */
    function rebase() external {
        _rebase();
    }

    // Safe management functions
    function createSafe(address addr) external onlyOwner {
        if (_safes[addr]) revert AlreadyASafe();
        _safes[addr] = true;
        uint256 balance = _balances[addr];
        _normalSupply -= balance;
        uint256 safeBalance = (balance * SAFE_DIVISOR) / normalDivisor;
        _balances[addr] = safeBalance;
        _safeSupply += safeBalance;
        emit SafeCreated(addr);
    }

    function destroySafe(address addr) external onlyOwner {
        if (!_safes[addr]) revert NotASafe();
        _safes[addr] = false;
        uint256 balance = _balances[addr];
        _safeSupply -= balance;
        uint256 normalBalance = (balance * normalDivisor) / SAFE_DIVISOR;
        _balances[addr] = normalBalance;
        _normalSupply += normalBalance;
        emit SafeDestroyed(addr);
    }

    // Configuration functions
    function setRebaseConfig(
        uint256 rebaseInterval_,
        uint256 rebaseBasisPoints_
    ) external onlyOwner {
        if (rebaseInterval_ < MIN_REBASE_INTERVAL)
            revert RebaseIntervalBelowLimit();
        if (rebaseInterval_ > MAX_REBASE_INTERVAL)
            revert RebaseIntervalAboveLimit();
        if (rebaseBasisPoints_ > MAX_REBASE_BASIS_POINTS)
            revert RebaseBasisPointsAboveLimit();
        rebaseInterval = rebaseInterval_;
        rebaseBasisPoints = rebaseBasisPoints_;
        emit RebaseIntervalChanged(rebaseInterval);
        emit RebaseBasisPointsChanged(rebaseBasisPoints);
    }

    // Standard ERC20 functions
    function transfer(address to, uint256 value) external returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    function approve(address spender, uint256 value) external returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) external returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    // View functions
    function name() external view returns (string memory) {
        return _name;
    }

    function symbol() external view returns (string memory) {
        return _symbol;
    }

    function decimals() external view returns (uint8) {
        return _decimals;
    }

    function balanceOf(address addr) external view returns (uint256) {
        if (_safes[addr]) {
            return _balances[addr] / SAFE_DIVISOR;
        }
        return _balances[addr] / normalDivisor;
    }

    function isSafe(address addr) external view returns (bool) {
        return _safes[addr];
    }

    function maxSupply() external view returns (uint256) {
        return _maxSupply;
    }

    function totalSupply() external view returns (uint256) {
        return _totalSupply;
    }

    function normalSupply() public view returns (uint256) {
        return _normalSupply / normalDivisor;
    }

    function safeSupply() public view returns (uint256) {
        return _safeSupply / SAFE_DIVISOR;
    }

    function totalSupplyRebased() public view returns (uint256) {
        return normalSupply() + safeSupply();
    }

    function allowance(
        address owner,
        address spender
    ) public view returns (uint256) {
        return _allowances[owner][spender];
    }

    // Private functions
    function _transfer(address from, address to, uint256 value) private {
        if (from == address(0)) revert ERC20InvalidSender(address(0));
        if (to == address(0)) revert ERC20InvalidReceiver(address(0));
        _update(from, to, value);
        _rebase();
    }

    function _increaseBalance(address to, uint256 value) private {
        if (_safes[to]) {
            uint256 safeValue = value * SAFE_DIVISOR;
            _balances[to] += safeValue;
            _safeSupply += safeValue;
        } else {
            uint256 normalValue = value * normalDivisor;
            _balances[to] += normalValue;
            _normalSupply += normalValue;
        }
    }

    function _update(address from, address to, uint256 value) private {
        if (from == address(0)) {
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            uint256 normalizedValue;
            if (_safes[from]) {
                normalizedValue = value * SAFE_DIVISOR;
                if (fromBalance < normalizedValue) {
                    revert ERC20InsufficientBalance(
                        from,
                        fromBalance / SAFE_DIVISOR,
                        value
                    );
                }
                _safeSupply -= normalizedValue;
            } else {
                normalizedValue = value * normalDivisor;
                if (fromBalance < normalizedValue) {
                    revert ERC20InsufficientBalance(
                        from,
                        fromBalance / normalDivisor,
                        value
                    );
                }
                _normalSupply -= normalizedValue;
            }
            unchecked {
                _balances[from] = fromBalance - normalizedValue;
            }
        }
        if (to == address(0)) {
            unchecked {
                _totalSupply -= value;
            }
        } else {
            unchecked {
                _increaseBalance(to, value);
            }
        }
        emit Transfer(from, to, value);
    }

    function _approve(address owner, address spender, uint256 value) private {
        _approve(owner, spender, value, true);
    }

    function _approve(
        address owner,
        address spender,
        uint256 value,
        bool emitEvent
    ) private {
        if (owner == address(0)) revert ERC20InvalidApprover(address(0));
        if (spender == address(0)) revert ERC20InvalidSpender(address(0));
        _allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    function _spendAllowance(
        address owner,
        address spender,
        uint256 value
    ) private {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(
                    spender,
                    currentAllowance,
                    value
                );
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }

    function _rebase() private {
        if (block.timestamp < nextRebaseTime) return;
        uint256 intervals = (block.timestamp - nextRebaseTime) /
            rebaseInterval +
            1;
        if (intervals > MAX_INTERVALS_PER_REBASE) {
            intervals = MAX_INTERVALS_PER_REBASE;
        }
        if (rebaseBasisPoints == 0) return;
        uint256 multiplier = (TENK_PRECISION + rebaseBasisPoints) ** intervals;
        uint256 divider = TENK_PRECISION ** intervals;
        uint256 nextDivisor = (normalDivisor * multiplier) / divider;
        if (nextDivisor > MAX_NORMAL_DIVISOR) return;
        _setNextRebaseTime();
        normalDivisor = nextDivisor;
        maxSupplyRebased =
            maxSupplyBurned -
            (_totalSupply - totalSupplyRebased());
        emit DivisorUpdated(nextDivisor);
    }

    function _setNextRebaseTime() private {
        uint256 roundedTime = (block.timestamp / rebaseInterval) *
            rebaseInterval;
        nextRebaseTime = roundedTime + rebaseInterval;
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
